@echo off
set /p cfm=サービスの状態を変更Start/Disable(s/d):
if %cfm%==s (
echo サービスを開始しました。
sc config "WSearch" start= auto
sc start WSearch
) else if %cfm%==d (
echo サービスを停止しました。
sc stop WMPNetworkSvc
sc stop WSearch
sc config "WSearch" start= disabled
) else (
 echo キャンセルしました。
  )
pause