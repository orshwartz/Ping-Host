:START
@ping -n 1 %1 | find "TTL=" >nul
@if errorlevel 1 (
	@echo.
	@echo %1 not reachable
	@timeout /t 5 /nobreak
	goto START
) else (
	@for /L %%v in (1,1,7) DO @echo|set /p=
	@echo.
	@echo ****************************************************************************
	@echo *************************** %1 REACHABLE ***************************
	@echo ****************************************************************************
	pause
)