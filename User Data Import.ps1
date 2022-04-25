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


    Title: User Data Import
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
to be copied from for the user, $whoami, then ensure you follow the
letter with a : and then press ENTER"
"`n"



#Copy files over to desired drive
#3D Objects
$Source = "$DriveLetter\0Files\User Data - $env:UserName\3D Objects\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\3D Objects"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Contacts
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Contacts\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Contacts"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Desktop
$Source = "$DriveLetter\0Files\User Data - $env:UserName\3D Objects\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\3D Objects"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Documents
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Documents\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Documents"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Downloads
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Downloads\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Downloads"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Favorites
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Favorites\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Favorites"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Links
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Links\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Links"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Music
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Music\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Music"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Pictures
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Pictures\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Pictures"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Searches
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Searches\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Searches"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}

#Videos
$Source = "$DriveLetter\0Files\User Data - $env:UserName\Videos\"  
$Items = Get-ChildItem $Source -Force
$Destination = "$env:UserProfile\Videos"
ForEach ($Item in $Items)
{
$DestinationFile = $Destination+$item.FullName
if (-not (test-path $DestinationFile))
{
Copy-Item -Path $Item.FullName -Destination $Destination -Force -Recurse
}
}



#Request user input for what drive to copy files to
Read-Host -Prompt "
========================================

The transfer has now been completed. Press ENTER to close this window"
