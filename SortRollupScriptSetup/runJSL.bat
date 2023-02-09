@ECHO OFF

// A comment line can be added to the batch file with the REM command.
REM This is a comment line.

REM Listing all the files in the directory Program files
for %%f in ("C:\Users\cflanaga\Intel Corporation\Ireland_PCH - Documents\xx_MTL\Example_Data_Rollup\DailyScheduledConfigs\*") do ( 
echo "%%f"
echo f | xcopy /s /f /y "%%f" "Latest.txt"
"C:\Program Files\SAS\JMPPRO\14\jmp.exe" %CD%"\SortRollupScheduled.jsl"
) 


ECHO "Done!"