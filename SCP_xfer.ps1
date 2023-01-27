#!/bin/ps1
Write-Host "Welcome to Easy SCP File Sender!" -ForegroundColor Green
Start-Sleep -Seconds 1

$filee = Read-Host -Prompt "File/Folder to transfer?"
$file = $filee
Start-Sleep -Seconds 1

$rcv_ip = Read-Host -Prompt "Receiving IP address: "
$ip = "$rcv_ip"
Start-Sleep -Seconds 1

$rcv_fold = Read-Host -Prompt "Where on the receiving computer, shall we place this?"
$fold = "$rcv_fold"
Start-Sleep -Seconds 1

Write-Host "Sooo, send $file to $ip and place in $fold?" -Foregroundcolor Red

$confirm = Read-Host "continue? y/n" -ForegroundColor Red
if ($confirm -eq 'y'){
  Write-Host "Yes, was selected. Proceeding..." -ForegroundColor Green
  Start-Sleep -Seconds 1
  scp $file $ip $fold
  Write-Host $file $ip $fold -ForegroundColor Green
  Write-Host "Transfer COmplete" -ForegroundColor Green
  Start-Sleep -Seconds 1
  exit
  }
  Write-Host "Good-Bye!" -ForegroundColor Green
 
