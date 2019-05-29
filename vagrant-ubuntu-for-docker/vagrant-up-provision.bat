@echo off
@echo -------------------------------------
@echo %date% %time:~0,8% start vagrant up with provision.

SET HOUR_ORG=%time:~0,2%
SET HOUR_ZERO_PADDING=%HOUR_ORG: =0%
SET TIMESTAMP=%date:~0,4%%date:~5,2%%date:~8,2%_%HOUR_ZERO_PADDING%%time:~3,2%%time:~6,2%
SET LOGFILE=vagrant_up_%TIMESTAMP%.log

cd /d %~dp0
@echo %date% %time:~0,8% start>> %LOGFILE% 2>&1
vagrant up --provision >> %LOGFILE% 2>&1
@echo %date% %time:~0,8% end>> %LOGFILE% 2>&1

@echo %date% %time:~0,8% done.
@echo log file is %LOGFILE%
@echo -------------------------------------
@pause
