#***********************************************************************************
#                                                                                  #
# Author: Ben C - ALienTec                                                         #
#                                                                                  #
# Description:                                                                     #
# -------------------------------------------------------------------------------- #
#                                                                                  #
# This is a tool for downloading images from websites.                             #
# ________________________________________________________________________________ #
#                                                                                  #
# Usage:                                                                           #
# -------------------------------------------------------------------------------- #
#                                                                                  #
# Simply copy a website's URL to the clipboard. The agent will then                #
# automatically download, rename, and move the images to the target                #
# subfolder.                                                                       #
#                                                                                  #
# Directory      = "C:\Users\$userName\Desktop\Powershell-Agent"                   #
# Subdirectory = "C:\Users\$userName\Desktop\Powershell-Agent\Agent_Images"      #
# ________________________________________________________________________________ #
#                                                                                  #
# Recommendation:                                                                  #
# -------------------------------------------------------------------------------- #
#                                                                                  #
# It is recommended to run this tool with the "PowerShell ISE" app in              #
# Administrator mode, as the tool might otherwise encounter permission             #
# issues with file and directory operations.                                       #
#                                                                                  #
#***********************************************************************************
 





cls
$ErrorActionPreference = "SilentlyContinue"

$meinName    = $env:Username
$Ablageort   = "C:\Users\$meinName\Desktop\Powershell-Agent\Agent_Images"
$verzeichnis = "C:\Users\$meinName\Desktop\"


if (!( Test-Path $Ablageort )) {

     cls
     Write-Host -ForegroundColor Magenta "`nPath does not exist yet. Creating it now!"
     Write-Host -ForegroundColor Magenta "--------------------------------------------" 
     Write-Host -ForegroundColor Yellow "$Ablageort `n`n" 
     mkdir $Ablageort
     sleep -Seconds 2

     } else {
     
     cls 
     Write-Host -ForegroundColor Green "`nPath already exists. That's great!"
     Write-Host -ForegroundColor Green "-----------------------------------------" 
     Write-Host -ForegroundColor Yellow "$Ablageort `n`n" 
     sleep -Seconds 2
    }


 function LetsGetPics{

    cd $verzeichnis
    $ErrorActionPreference = "SilentlyContinue"

    $URL     = Get-Clipboard 
    $content = curl $URL
    $bilder  = $content.AllElements.href | findstr ".jpg"
    $bilder  = $bilder| Where-Object { $_ -notmatch "preview" }
    $bilder

   if(( $URL -match ".php" ) -or ( $URL -match ".html" ) -or ( $URL -match "\?" )){
   for( $i = $URL.Length; $i -ge 0; $i-- ){
   
    if( $URL[$i] -match "/" ){
   
        $URL2   = $i 
[string]$URL    = $URL[0..$URL2]  
        $URL    = $URL.Replace(" ","")
        $URL
        break;
        }
    }
}

 foreach( $bild in $bilder ){
     if( $bild -notmatch "http" ){
      
         $bild = $URL+$bild
         Start-BitsTransfer -Source $bild -Destination $verzeichnis
      
         }else{  
      
         Start-BitsTransfer -Source $bild -Destination $verzeichnis
         }
}

 function downloads{

     $downloads = ls $verzeichnis *.jpg
     $downloads = $downloads.Name
     $zahlen    = 0..500000
     $zahlen    = Get-Random $zahlen
	 
     [array]$liste = (65..90) + (97..122)
     [array]$liste = -join ( $liste | Get-Random -Count 7 | foreach { [char]$_ } )
 
     [string]$str  = $liste
     $str          = $str.Replace(" ","")
     $strkomplet   = $str + "$zahlen"

 for( $i = 0; $i -lt $downloads.count; $i++ ){

     $download  = $downloads[$i]
     $count     = $i + 1
     $neuername = "(" + $count + ").jpg"
     $t         = $strkomplet + $neuername
     $download | Rename-Item -NewName{ $_ -replace $download, $t }

     } move-item *.jpg $Ablageort
} downloads

 if( $bilder.Length -eq 0 ){
    
 function Filter_Pics{
   
    $ErrorActionPreference = "SilentlyContinue"
    $URL       = Get-Clipboard
    $URL_Split = $URL.Split( "/" )
    $URL_Split = $URL_Split[2]
    $URL_Curl  = curl $URL

    [array]$URL_Links = $URL_Curl.Links | findstr "outerHTML" | findstr "IMG"
    
    $URL_Links  = $URL_Links -split('outerHTML : <A href="')
    $URL_Links  = $URL_Links -split('"><IMG')
    $URL_Links  = $URL_Links | sort | unique
    $URL_Links  = $URL_Links | ?{ $_ -notmatch '^\s*$' }

    $Filter_Pic = $(

    foreach( $i in $URL_Links ){
    
    $URL_Gesamt = $URL_Split + $i  
    $bildsuche  = curl $URL_Gesamt
    $bilder     = $bildsuche.Images.src | findstr "jpg"
    $bilder     = $bilder| Where-Object { $_ -notmatch "preview" }
    $bilder
  
    foreach( $bild in $bilder ){
 
              Start-BitsTransfer -Source $bild -Destination `
              $verzeichnis
             }
          })
              $Filter_Pic   
       } Filter_Pics
   } downloads
}

 while( 1 -eq 1 ){

  cls
  $URL = Get-Clipboard

 if ( $URL ){

      "URL found in clipboard."
      $URL
      sleep -Seconds 2
      LetsGetPics; cls
      Set-Clipboard $null   
       
      } else { "No URL found in clipboard."; sleep -Seconds 1; cls}
}


 

