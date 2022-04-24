 <#
    .SYNOPSIS

        This function will export all Quick Access
        links. All you have to do is choose which
        drive to copy the files to.

        Once copied over to the preferred drive
        you can complete the "Quick Access Links
        Import" script.


    .PARAMETERS

        $PATH
            Pathway used where all files will be temporarily stored.


    .NOTES

        To view QA folder = WIN+R > %appdata%\microsoft\windows\recent\automaticdestinations

        This works for both Windows 10 & 11
#>



Write-Host "

    ███████╗██████╗░░██████╗░███████╗  ██╗████████╗
    ██╔════╝██╔══██╗██╔════╝░██╔════╝  ██║╚══██╔══╝
    █████╗░░██║░░██║██║░░██╗░█████╗░░  ██║░░░██║░░░
    ██╔══╝░░██║░░██║██║░░╚██╗██╔══╝░░  ██║░░░██║░░░
    ███████╗██████╔╝╚██████╔╝███████╗  ██║░░░██║░░░
    ╚══════╝╚═════╝░░╚═════╝░╚══════╝  ╚═╝░░░╚═╝░░░

    ░██████╗░█████╗░██╗░░░░░██╗░░░██╗████████╗██╗░█████╗░███╗░░██╗░██████╗
    ██╔════╝██╔══██╗██║░░░░░██║░░░██║╚══██╔══╝██║██╔══██╗████╗░██║██╔════╝
    ╚█████╗░██║░░██║██║░░░░░██║░░░██║░░░██║░░░██║██║░░██║██╔██╗██║╚█████╗░
    ░╚═══██╗██║░░██║██║░░░░░██║░░░██║░░░██║░░░██║██║░░██║██║╚████║░╚═══██╗
    ██████╔╝╚█████╔╝███████╗╚██████╔╝░░░██║░░░██║╚█████╔╝██║░╚███║██████╔╝
    ╚═════╝░░╚════╝░╚══════╝░╚═════╝░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝╚═════╝░


    Title: Quick Access Links Export
    Author: Andrew Metallinos <andrewm@edgeitsolutions.com.au>
    Creation Date: 24/04/2022
    Revision Date: 24/04/2022
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