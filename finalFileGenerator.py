import os
import csv
import subprocess
import concurrent.futures

os.system("clear")
os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")

def removeFolders():
    os.system("rm *.csv")
    os.system("rm -rf openMSP430F*")

def makeFolder(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    time = 1.0 / currentTestFrequency
    currentFolderName = (
        "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity * 100))
    )
    os.system("mkdir /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName)
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/core "
        + currentFolderName
    )
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/Encounter " + currentFolderName
    )
    os.system(
        "cp -r /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/openMSP430/Synthesis "
        + currentFolderName
    )
    print(
        "Folder for Frequency = "
        + str(currentTestFrequency)
        + "and Density = "
        + str(currentTestDensity)
        + " Initialized"
    )

def synthesis(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    # Frequency and time calculation
    time = int((1.0 / currentTestFrequency) * 1000)

    # Folder name for given iteration
    currentFolderName = (
        "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity * 100))
    )
    os.chdir(
        "/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Synthesis/"
    )

    # Replace the frequency in the synthesis .tcl and copy it to required folders
    with open("compile_dc.tcl", "r") as file:
        content = file.read()
    new_content = content.replace(
        "set my_clk_freq_MHz 20", "set my_clk_freq_MHz " + str(currentTestFrequency)
    )
    with open("compile_dc.tcl", "w") as file:
        file.write(new_content)

    # Run Synthesis
    os.system("run")
    os.system(
        "cp /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/"
        + currentFolderName
        + "/Synthesis/openMSP430.vh /storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/"
        + currentFolderName
        + "/Encounter/"
    )

def encounter(currentTestFrequency, currentTestDensity):
    os.chdir("/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/")
    # Frequency and time calculation
    time = int((1.0 / currentTestFrequency))

    currentFolderName = (
        "openMSP430F" + str(currentTestFrequency) + "D" + str(int(currentTestDensity * 100))
    )
    os.chdir(
        "/storage-home/k/kv25/ELEC527/HW6openMSP430NoMult/" + currentFolderName + "/Encounter/"
    )

    # Replace the frequency in the synthesis .tcl and copy it to required folders
    with open("encounter.tcl", "r") as file:
        content = file.read()
    new_content = content.replace(
        "floorPlan -r 1.0 0.6 21 21 21 21",
        "floorPlan -r 1.0 " + str(currentTestDensity) + " 21 21 21 21",
    )
    with open("encounter.tcl", "w") as file:
        file.write(new_content)

    os.system("run")
    subprocess.run(['magic'])

frequencyList = [20]
densityList = [0.6]
for i in range(0, len(frequencyList)):
    frequency = frequencyList[i]
    density = densityList[i]
    makeFolder(frequency, density)
    synthesis(frequency, density)
    encounter(frequency, density)
