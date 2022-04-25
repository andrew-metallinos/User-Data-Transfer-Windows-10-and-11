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
            
        $DriveLetter
            This will determine which drive to use when copying the files over.


    .NOTES

        This works for both Windows 10 & 11
#>



Write-Host "$env:USERPROFILE


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



$whoami = whoami
#Request user input for what drive to copy files to
$DriveLetter = Read-Host -Prompt "

Enter in the drive letter of where you would like the data
to be copied over to for the user, $whoami, then ensure you follow the
letter with a : and then press ENTER"
"`n"



#Copy files over to desired drive
Copy-Item -Path "$env:USERPROFILE\3D Objects" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Contacts" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Desktop" -Destination "$DriveLetter\0Files\User Data" -Recurse
#Copy-Item -Path "$env:USERPROFILE\Documents" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Downloads" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Favorites" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Links" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Music" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Pictures" -Destination "$DriveLetter\0Files\User Data" -Recurse
Copy-Item -Path "$env:USERPROFILE\Searches" -Destination "$DriveLetter\0Files\User Data" -Recurse
#Copy-Item -Path "$env:USERPROFILE\Videos" -Destination "$DriveLetter\0Files\User Data" -Recurse



#Request user input for what drive to copy files to
Read-Host -Prompt "
========================================

The transfer has now been completed. Press ENTER to close this window"


$env:USERPROFILE