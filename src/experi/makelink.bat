@Echo off
set temp=%~dp0
>%temp%\a.vbs   echo Set AAA = WScript.CreateObject("WScript.Shell")                  
>>%temp%\a.vbs echo set BBB = AAA.CreateShortcut("ucmd.lnk")    
>>%temp%\a.vbs echo BBB.TargetPath = "C:\Windows\System32\cmd.exe"  

>>%temp%\a.vbs echo BBB.Arguments = "/U /K %%1"                                             
>>%temp%\a.vbs echo BBB.WindowStyle = 1                                              
rem >>%temp%\a.vbs echo BBB.Hotkey = "CTRL+ALT+J"                                        
>>%temp%\a.vbs echo BBB.IconLocation = "C:\Windows\System32\cmd.exe,0"                    
>>%temp%\a.vbs echo BBB.Description = ""                                             
>>%temp%\a.vbs echo BBB.WorkingDirectory = "%~dp0"                             
>>%temp%\a.vbs echo BBB.Save                                                         
%temp%\a.vbs