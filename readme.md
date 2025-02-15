Install Instructions 

1. Go to either the "chocoUpdate" or "chocoInstall" folder 
2. Right click on the trigger.bat file in the folder, and click on "Run as Admin"
3. Exercise patience and let the installs finish; this may take 30-45 minutes and upwards of 30 GB of disk space. Zoom and other programs WILL RESTART during the install, so if on a Zoom call, do not panic, just rejoin once Zoom is listed as finished.
4. Anaconda (far down on the list) will take at minimum 20 minutes to install based on connection speed. 
5. Refer back to the Class 6.5 install document (https://docs.google.com/document/d/1NigriGLA6Es6dsI6TtJAhkvHOeLkUponNqm2YaaiaHw/edit?usp=sharing) when the installs are finished (aka when the PowerShell or Command Prompt window disappears).

6. (Troubleshooting from here on out) If you see a bunch of red text during the initial install, an error message saying "command not found", or the window blinks really fast then closes, its likely that Chocolatey didn't install cleanly.
7. Go to the "chocoFix" folder, right click on the "choco_fix_trigger.bat" file, and click on "Run as Admin". Chocolatey should then install cleanly.
8. After the window closes, open Command Prompt or Powershell as admin, and type in choco help and press enter. You should now see some new commands related to Chocolatey. If you see this, run the "choco_install_trigger.bat" file again as ADMIN.
9. If the above troubleshooting didn't work, logs of what has been done are located in the "Logs" folder of the file you just tried to run as admin (e.g. C:\\*yourUsername*\Downloads\chocoUpgrade\Logs\filename.log). if you want troubleshooting help, attach the log files to a message or post the contents of the file to Mobil_Avenue_Station. 
10. Further troubleshooting steps are in the Class 6.5 install document (https://docs.google.com/document/d/1NigriGLA6Es6dsI6TtJAhkvHOeLkUponNqm2YaaiaHw/edit?usp=sharing).