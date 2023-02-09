@ECHO OFF

// A comment line can be added to the batch file with the REM command.
REM This is a comment line.

REM Listing all the files in the directory Program files
for %%f in ("I:\program\1001\eng\hdmtprogs\mts_sds\SCHEDULER\*") do ( 
echo "%%f"
echo f | xcopy /s /f /y "%%f" "Latest.txt"
"C:\Program Files\SAS\JMPPRO\14\jmp.exe" %CD%"\SortRollupScheduled.jsl"
) 


ECHO "Done!"