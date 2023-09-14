Set AAA = WScript.CreateObject("WScript.Shell")                  
set BBB = AAA.CreateShortcut("ucmd.lnk")    
BBB.TargetPath = "C:\Windows\System32\cmd.exe"  
BBB.Arguments = "/U /K %1"                                             
BBB.WindowStyle = 1                                              
BBB.IconLocation = "C:\Windows\System32\cmd.exe,0"                    
BBB.Description = ""                                             
BBB.WorkingDirectory = "D:\TT\TTBC-D\batºº ı\MCVINE_1.3\experi\"                             
BBB.Save                                                         
