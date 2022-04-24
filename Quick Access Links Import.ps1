 <#
    .SYNOPSIS

        This function will import all Quick Access
        links, all you have to do is choose what
        drive to copy the files from.


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


    Title: Quick Access Links Import
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



#Request user input for what drive to copy files from
$DriveLetter = Read-Host -Prompt "
----------------------------------------

Enter in the drive letter of where your TempQA
folder is stored, followed by a : and then press ENTER"



#Copy files over from desired drive
Copy-Item –Path $DriveLetter\0Files\TempQA\* -Destination C:\TempQA\ -Force



#Copy files over to TempQA folder
cmd.exe /c 'robocopy "C:\TempQA" %appdata%\microsoft\windows\recent\automaticdestinations *.automaticDestinations-ms'



#Request confirmation on File Explorer restart
Read-Host -Prompt "
----------------------------------------

Please press ENTER when you are ready to restart File Explorer.
Once pressed this window will close automatically and this process will be completed"



#Restart File Explorer
stop-process -name explorer –force
