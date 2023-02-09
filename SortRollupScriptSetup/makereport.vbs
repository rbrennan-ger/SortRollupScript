Option Explicit


  Dim xlApp 
  Dim xlBook 
  Dim path
  path=WScript.Arguments(0)
  Set xlApp = CreateObject("Excel.Application") 
  xlApp.Visible = true
  Set xlBook = xlApp.Workbooks.Open(CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)&"\SortMVReport.xlsm", 0, True) 
  xlApp.Run "Workbook_Open", path
  xlApp.Quit 

  Set xlBook = Nothing 
  Set xlApp = Nothing 

