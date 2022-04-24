 <#
    .SYNOPSIS

        This script will export all of the below
        user data to a drive of your choice.

        - 3D Objects
        - Contacts
        - Desktop
        - Documents
        - Downloads
        - Favourites
        - Links
        - Music
        - Pictures
        - Searches
        - Videos
        
        Once copied over to your preferred drive
        you can complete the "User Data Import"
        script.


    .PARAMETERS

        $PATH
            Pathway used where all files will be temporarily stored.
            
        $DriveLetter
            This will determine which drive to use when copying the files over.


    .NOTES

        To view QA folder = WIN+R > %appdata%\microsoft\windows\recent\automaticdestinations

        This works for both Windows 10 & 11
#>



Write-Host "


    ███╗░░░███╗███████╗████████╗░█████╗░██╗░░░░░██╗░░░░░██╗███╗░░██╗░█████╗░░██████╗  ████████╗███████╗░█████╗░██╗░░██╗
    ████╗░████║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██║████╗░██║██╔══██╗██╔════╝  ╚══██╔══╝██╔════╝██╔══██╗██║░░██║
    ██╔████╔██║█████╗░░░░░██║░░░███████║██║░░░░░██║░░░░░██║██╔██╗██║██║░░██║╚█████╗░  ░░░██║░░░█████╗░░██║░░╚═╝███████║
    ██║╚██╔╝██║██╔══╝░░░░░██║░░░██╔══██║██║░░░░░██║░░░░░██║██║╚████║██║░░██║░╚═══██╗  ░░░██║░░░██╔══╝░░██║░░██╗██╔══██║
    ██║░╚═╝░██║███████╗░░░██║░░░██║░░██║███████╗███████╗██║██║░╚███║╚█████╔╝██████╔╝  ░░░██║░░░███████╗╚█████╔╝██║░░██║
    ╚═╝░░░░░╚═╝╚══════╝░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝╚═╝░░╚══╝░╚════╝░╚═════╝░  ░░░╚═╝░░░╚══════╝░╚════╝░╚═╝░░╚═╝


    Title: User Data Export
    Author: Andrew Metallinos <andrew@metallinostech.com.au>
    Creation Date: 25/04/2022
    Revision Date: 25/04/2022
    Version: 1.0

========================================
"



#Create TempQA folder on C: drive
$PATH = "C:\TempQA\"
mkdir $PATH
cd $PATH



#Copy files over to TempQA folder
cmd.exe /c 'robocopy %appdata%\microsoft\windows\recent\automaticdestinations "C:\TempQA"'



#Request user input for what drive to copy files to
$DriveLetter = Read-Host -Prompt "
----------------------------------------

Enter in the drive letter of where you would like the TempQA
folder to be copied to, followed by a : and then press ENTER"



#Copy files over to desired drive
Copy-Item –Path C:\TempQA\ -Destination $DriveLetter\0Files\ -Force
Copy-Item –Path C:\TempQA\* -Destination $DriveLetter\0Files\TempQA\ -Force



#Request user input for what drive to copy files to
Read-Host -Prompt "
----------------------------------------

The transfer has now been completed. Press ENTER to close this window"
