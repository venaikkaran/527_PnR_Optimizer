import os
import csv
import subprocess
import concurrent.futures

startTestFrequency = 20
maxTestFrequency = 50
testFrequencyStep = 10
densityArray = [0.6, 0.65, 0.7, 0.75, 0.8, 0.85] #, 0.95]

currentTestFrequency = 20
currentTestDensity = 0.6

os.system("clear")
os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")

def removeFolders():
    os.system("rm *.csv")
    os.system("rm -rf openMSP430F*")
    #for density in densityArray:
    #    for i in range(20, 400, 1):
    #        currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(density*10))
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

def synthesisTimingPass(currentTestFrequency, currentTestDensity):
    makeFolder(currentTestFrequency, currentTestDensity)
    synthesis(currentTestFrequency, currentTestDensity)
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    # Frequency and time calculation
    time = int((1.0/currentTestFrequency)*1000)

    #Folder name for given iteration
    currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity*100))
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Synthesis/")

    with open('timing.rep', 'r') as file:
        reversed_lines = file.readlines()[::-1]

        for line in reversed_lines:
            if line.startswith("  slack "):
                values1 = line.split()[1:]
                slackStatus = values1[0]
    return (slackStatus == "(MET)")

def findOptimalSynthesis(startTestFrequency, maxTestFrequency, currentTestDensity):
    while startTestFrequency < maxTestFrequency:
        midTestFrequency = (startTestFrequency + maxTestFrequency + 1) // 2
        if synthesisTimingPass(midTestFrequency, currentTestDensity):
            startTestFrequency = midTestFrequency
        else:
            maxTestFrequency = midTestFrequency - 1
    return startTestFrequency

def encounter(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    # Frequency and time calculation
    time = int((1.0/currentTestFrequency))

    currentFolderName = "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity*100))
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Encounter/")

    # Replace the frequency in the synthesis .tcl and copy it to required folders
    with open('encounter.tcl', 'r') as file:
        content = file.read()
    new_content = content.replace("floorPlan -r 1.0 0.6 21 21 21 21", "floorPlan -r 1.0 " + str(currentTestDensity) + " 21 21 21 21")
    with open('encounter.tcl', 'w') as file:
        file.write(new_content)

    subprocess.run(['encounter', '-64', '-init', 'encounter.tcl', '-log', 'encounter.log', '-overwrite'], input = b'exit')
    with open("openMSP430.geom.rpt", "r") as file:
        lines = file.readlines()
        last_line = lines[-2]
        print(last_line.strip())
        print("No DRC violations were found")
    
    return(last_line.strip() == 'No DRC violations were found')

def encounterRoutingPass(optimizedFrequency, currentTestDensity, sourceDensityValue):
    print("SOURCE DENSITY VALUE = " + str(sourceDensityValue))
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    time = 1.0/optimizedFrequency
    currentFolderName = "openMSP430F" + str(optimizedFrequency) + "D" + str(int(currentTestDensity*100))
    os.system(
            "mkdir /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430F" + str(optimizedFrequency) + "D" + str(int(sourceDensityValue*100)) + "/Encounter " + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430F" + str(optimizedFrequency) + "D" + str(int(sourceDensityValue*100)) + "/core " + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430F" + str(optimizedFrequency) + "D" + str(int(sourceDensityValue*100)) + "/Synthesis " + currentFolderName)
    print("Folder for Frequency = " + str(optimizedFrequency) + " and Density = " + str(currentTestDensity) + " Initialized")

    encounterPassStatus = encounter(optimizedFrequency, currentTestDensity)
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    return encounterPassStatus
    
def findOptimalDensity(startTestDensity, maxTestDensity, sourceDensityValue, currentTestFrequency):
    while startTestDensity < maxTestDensity:
        midTestDensity = (startTestDensity + maxTestDensity + 0.05)/2
        midTestDensity = round(midTestDensity, 3)
        if encounterRoutingPass(currentTestFrequency, midTestDensity, sourceDensityValue):
            startTestDensity = midTestDensity
        else:
            maxTestDensity = midTestDensity - 0.025
    return startTestDensity

removeFolders()
bestFrequency = findOptimalSynthesis(20, 200, 0.60)
bestDensity = findOptimalDensity(0.6, 0.98, 0.60, bestFrequency)
print("Best Frequency = " + str(bestFrequency) + " and Best Density = " + str(bestDensity))
