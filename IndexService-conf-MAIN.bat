@echo off
set /p cfm=�T�[�r�X�̏�Ԃ�ύXStart/Disable(s/d):
if %cfm%==s (
echo �T�[�r�X���J�n���܂����B
sc config "WSearch" start= auto
sc start WSearch
) else if %cfm%==d (
echo �T�[�r�X���~���܂����B
sc stop WMPNetworkSvc
sc stop WSearch
sc config "WSearch" start= disabled
) else (
 echo �L�����Z�����܂����B
  )
pause