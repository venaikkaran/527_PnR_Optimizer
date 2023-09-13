import os
import csv
import subprocess
import concurrent.futures

os.system("clear")
os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")

def removeFolders():
    os.system("rm *.csv")
    os.system("rm -rf openMSP430F*")
    # for density in densityList:
    #    for i in range(20, 400, 1):
    #        currentFolderName = "openMSP430F + str(currentTestFrequency) + "D" + str(int(density*10))
    #        os.system("rm -rf " + currentFolderName)
    #        currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(density*100))
    #        os.system("rm -rf " + currentFolderName)

def makeFolder(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    time = 1.0/currentTestFrequency
    currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity*100))
    os.system(
        "mkdir /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/core " + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/Encounter " + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/Synthesis " + currentFolderName)
    print("Folder for Frequency = " + str(currentTestFrequency) + "and Density = " + str(currentTestDensity) + " Initialized")

def synthesis(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    # Frequency and time calculation
    time = int((1.0/currentTestFrequency)*1000)

    # Folder name for given iteration
    currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity*100))
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" +
                currentFolderName + "/Synthesis/")

    # Replace the frequency in the synthesis .tcl and copy it to required folders
    with open('compile_dc.tcl', 'r') as file:
        content = file.read()
    new_content = content.replace(
        "set my_clk_freq_MHz 20", "set my_clk_freq_MHz " + str(currentTestFrequency))
    with open('compile_dc.tcl', 'w') as file:
        file.write(new_content)

    # Run Synthesis
    os.system("run")
    os.system("cp /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName +
                "/Synthesis/openMSP430.vh /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Encounter/")


def readPowerResults(startTestFrequency, maxTestFrequency, testFrequencyStep, densityList):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    rows, cols = (int((((maxTestFrequency-20)/10)+1)*10), 5)
    powerArray = [[0 for i in range(cols)] for j in range(rows)]
    powerArray[0] = ["FrequencyMhz", "Density", "internal_power", "switching_power", "leakage_power", "total_power"]
    j=0
    for density in densityList:
        for i in range (startTestFrequency, maxTestFrequency, testFrequencyStep):
            j = j+1
            # Frequency and time calculation
            frequencyMHZ = i
            time = int((1.0/frequencyMHZ)*1000)

            #Folder name for given iteration
            currentFolderName = "openMSP430F" + str(i) + "D" + str(int(density*100))
            os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Synthesis/")

            with open('power.rep', 'r') as file:
                # reverse the lines in the file
                reversed_lines = file.readlines()[::-1]

                # iterate over the reversed lines
                for line in reversed_lines:
                    # find the line starting with "Total"
                    if line.startswith("Total"):
                        # extract the values of internal power, switching power, leakage power, and total power
                        values = line.split()[1:]
                        string1 = str(values[0]) + str(values[1])
                        string2 = str(values[2]) + str(values[3])
                        string3 = str(values[4]) + str(values[5])
                        string4 = str(values[6]) + str(values[7])
                        # store the values in an array
                        powerArray[j] = [str(frequencyMHZ), str(density), string1, string2, string3, string4]

                        # exit the loop
                        break
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    filename = "finalDualPowerOutputs_NoMULT.csv"
    # Open the file for writing
    with open(filename, mode='w', newline='') as file:
        # Create a CSV writer object
        writer = csv.writer(file)
        # Write each row of the array to the CSV file
        for row in powerArray:
            writer.writerow(row)

def readTimingResults(startTestFrequency, maxTestFrequency, testFrequencyStep, densityList):   
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    rows, cols = (int((((maxTestFrequency-20)/10)+1)*10), 5)
    timingArray = [[0 for i in range(cols)] for j in range(rows)]
    timingArray[0] = ["Frequency MHZ", "Density", "Slack Status", "Slack Time","Data Arrival Time", "Data Required Time"]
    j=0
    for density in densityList:
        for i in range (startTestFrequency, maxTestFrequency, testFrequencyStep):
            j = j+1
            # Frequency and time calculation
            frequencyMHZ = i
            time = int((1.0/frequencyMHZ)*1000)

            #Folder name for given iteration
            currentFolderName = "openMSP430F" + str(i) + "D" + str(int(density*100))
            os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Synthesis/")

            with open('timing.rep', 'r') as file:
                reversed_lines = file.readlines()[::-1]

                for line in reversed_lines:
                    if line.startswith("  slack "):
                        values1 = line.split()[1:]
                        slackStatus = values1[0]
                        slackTime = values1[1]

                for line in reversed_lines:
                    if line.startswith("  data arrival time"):
                        values2 = line.split()[1:]
                        break

                for line in reversed_lines:
                    if line.startswith("  data required time "):
                        values3 = line.split()[1:]
                        break
                timingArray[j] = [str(frequencyMHZ), str(density), slackStatus, slackTime, values2[2], values3[2]]
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    filename = "finalDualTimingOutputs_NoMULT.csv"
    # Open the file for writing
    with open(filename, mode='w', newline='') as file:
        # Create a CSV writer object
        writer = csv.writer(file)
        # Write each row of the array to the CSV file
        for row in timingArray:
            writer.writerow(row)

def readAreaResults(startTestFrequency, maxTestFrequency, testFrequencyStep, densityList):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    rows, cols = (int((((maxTestFrequency-20)/10)+1)*10), 5)
    cellAreaArray = [[0 for i in range(cols)] for j in range(rows)]
    cellAreaArray[0] = ["Frequency MHZ", "Density", "No. of Cells", "Area"]
    j=0
    for density in densityList:
        for i in range (startTestFrequency, maxTestFrequency, testFrequencyStep):
            j = j+1
            # Frequency and time calculation
            frequencyMHZ = i
            time = int((1.0/frequencyMHZ)*1000)

            #Folder name for given iteration
            currentFolderName = "openMSP430F" + str(i) + "D" + str(int(density*100))
            os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Synthesis/")

            with open('cell.rep', 'r') as file:
                reversed_lines = file.readlines()[::-1]

                for line in reversed_lines:
                    if line.startswith("Total "):
                        values1 = line.split()[1:]
                
                cellAreaArray[j] = [str(frequencyMHZ), str(density), values1[0], values1[2]]
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    filename = "finalDualCellOutputs_NoMULT.csv"
    # Open the file for writing
    with open(filename, mode='w', newline='') as file:
        # Create a CSV writer object
        writer = csv.writer(file)
        # Write each row of the array to the CSV file
        for row in cellAreaArray:
            writer.writerow(row)

removeFolders()
frequencyList = [20, 130]
densityList = [0.6]
for i in range(frequencyList[0], frequencyList[len(frequencyList)-1], 5):
    print (i)
    frequency = i
    density = densityList[0]
    makeFolder(frequency, density)
    synthesis(frequency, density)

readPowerResults(frequencyList[0], frequencyList[len(frequencyList)-1], 5, densityList)
readTimingResults(frequencyList[0], frequencyList[len(frequencyList)-1], 5, densityList)
readAreaResults(frequencyList[0], frequencyList[len(frequencyList)-1], 5, densityList)
