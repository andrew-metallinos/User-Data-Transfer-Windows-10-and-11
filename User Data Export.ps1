 <#
    .SYNOPSIS

        This script will export all of the below
        user data to a drive of your choice.

        - 3D Objects
        - Contacts
        - Desktop
        - Documents
        - Downloads
        - Favorites
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
    Version: 1.0.0

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
Copy-Item -Path "$env:UserProfile\3D Objects" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Contacts" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Desktop" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Documents" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Downloads" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Favorites" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Links" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Music" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Pictures" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Searches" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse
Copy-Item -Path "$env:UserProfile\Videos" -Destination "$DriveLetter\0Files\User Data - $env:UserName" -Recurse



#Request user input for what drive to copy files to
Read-Host -Prompt "
========================================

The transfer has now been completed. Press ENTER to close this window"
