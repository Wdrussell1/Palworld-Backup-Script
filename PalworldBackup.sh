### Valheim data backup script
#Created by Wdrussell1/Demon1337/Casey Barrett
### Backs up the entire world file
#**************************************************************************
## **************************CONFIGURATION ITEMS***************************
#**************************************************************************
# How many backups to keep before pruning older copies (Default is 10)
NumToKeep=10
# Where to save backups (Default is $HOME/PalworldBackups/)
BackupFolderPath=$HOME/PalworldBackups/
# Server world file location (Default is $HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0/)
Worldsavelocation=$HOME/Steam/steamapps/common/PalServer/Pal/Saved/SaveGames/0/
#**************************************************************************
## ***********************END OF CONFIGURATION ITEMS***********************
#**************************************************************************
#**************************************************************************
#*******************DO NOT MODIFY ANYTHING BEYOND THIS POINT***************
#**************************************************************************
#**************************************************************************
#**************************************************************************
## Main Script
#Create the backup folder should it not exist
if [[ ! -d $BackupFolderPath ]]
then
    echo "$BackupFolderPath does not exist on your filesystem."
	mkdir $BackupFolderPath
fi
#
#Get current date and time
Date=$(date +%Y-%m-%d-%H-%M-%S)
#
#Put current date and time in the file name saving the TAR/ZIP in the file location you requested.
tar -czvf $BackupFolderPath$Date.tar.gz $Worldsavelocation
#
#
##Parsing backups 
#Because linux..we have to add 1 to the NumToKeep variable
Sum=`echo "$NumToKeep + 1" | bc`
#
#Removing old backups
ls -dt $BackupFolderPath/* | tail -n +$Sum | xargs rm -rf *.tar.gz
#
#
