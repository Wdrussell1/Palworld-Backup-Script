# Palworld-Backup-Script
This is a script that backs up Palworld personal and local files

Download the file and run it via Powershell. 
You can also edit the file with notepad (Notepad++ is better) and change the file saving locations. 
By default the files save in the same folder the Palworld files are saved in (%username%\AppData\Local\Pal\Saved\SaveGames\WorldBackups)

HOW TO USE THIS SCRIPT: You can run it each day at any point, or you can setup a scheduled task that backs up this data for you. This works both on dedicated servers and on local saves. 



**Windows** variables in the script:


# How many backups to keep before pruning older copies (Default is 10)
$NumToKeep = 10

# Where to save backups (Default is C:\Users\(USERNAME)\Appdata\Local\Pal\Saved\WorldBackups)
$BackupFolderPath = "$env:USERPROFILE\AppData\Local\Pal\Saved\WorldBackups"

# Name of each unique backup file (This gets today's date and appends the file)
$BackupName = Get-Date -Format "yyyyMMdd-HHmm"

# Server world file location (Default is C:\Users\(USERNAME)\Appdata\Local\Pal\Saved\SaveGames)
$Worldsavelocation = "$env:USERPROFILE\AppData\Local\Pal\Saved\SaveGames"




**Linux** variables in the script:
NOTE: Linux version saves backups in the YEAR-MONTH-DAY-HOUR-MINUTE-SECOND format. 

# How many backups to keep before pruning older copies (Default is 10)
NumToKeep = 10

# Where to save backups (Default is $HOME/PalworldBackups/)
BackupFolderPath=$HOME/PalworldBackups/

# Server world file location (Default is $HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0/)
Worldsavelocation=$HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0/
