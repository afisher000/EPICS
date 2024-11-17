#!../../bin/windows-x64-mingw/demo

#- You may have to change demo to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/demo.dbd"
demo_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("demoApp/db/demo.db","user=afish")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=afish"
