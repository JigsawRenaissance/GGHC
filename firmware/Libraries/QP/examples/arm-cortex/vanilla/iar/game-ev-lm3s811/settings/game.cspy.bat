@REM This bat file has been generated by the IAR Embeddded Workbench
@REM C-SPY interactive debugger,as an aid to preparing a command
@REM line for running the cspybat command line utility with the
@REM appropriate settings.
@REM
@REM After making some adjustments to this file, you can launch cspybat
@REM by typing the name of this file followed by the name of the debug
@REM file (usually an ubrof file). Note that this file is generated
@REM every time a new debug session is initialized, so you may want to
@REM move or rename the file before making changes.
@REM
@REM Note: some command line arguments cannot be properly generated
@REM by this process. Specifically, the plugin which is responsible
@REM for the Terminal I/O window (and other C runtime functionality)
@REM comes in a special version for cspybat, and the name of that
@REM plugin dll is not known when generating this file. It resides in
@REM the $TOOLKIT_DIR$\bin folder and is usually called XXXbat.dll or
@REM XXXlibsupportbat.dll, where XXX is the name of the corresponding
@REM tool chain. Replace the '<libsupport_plugin>' parameter
@REM below with the appropriate file name. Other plugins loaded by
@REM C-SPY are usually not needed by, or will not work in, cspybat
@REM but they are listed at the end of this file for reference.


"C:\tools\IAR\ARM_KS_5.50\common\bin\cspybat" "C:\tools\IAR\ARM_KS_5.50\arm\bin\armproc.dll" "C:\tools\IAR\ARM_KS_5.50\arm\bin\armlmiftdi.dll"  %1 --plugin "C:\tools\IAR\ARM_KS_5.50\arm\bin\<libsupport_plugin>" --flash_loader "C:\tools\IAR\ARM_KS_5.50\arm\config\flashloader\TexasInstruments\FlashLM3S8xx.board" --backend -B "--endian=little" "--cpu=Cortex-M3" "--fpu=None" "-p" "C:\tools\IAR\ARM_KS_5.50\arm\CONFIG\debugger\TexasInstruments\iolm3s811.ddf" "--drv_verify_download" "--semihosting" "--device=LM3S811" "--lmiftdi_speed=500" 


@REM Loaded plugins:
@REM    C:\tools\IAR\ARM_KS_5.50\arm\bin\armlibsupport.dll
@REM    C:\tools\IAR\ARM_KS_5.50\common\plugins\CodeCoverage\CodeCoverage.dll
@REM    C:\tools\IAR\ARM_KS_5.50\common\plugins\Profiling\Profiling.dll
@REM    C:\tools\IAR\ARM_KS_5.50\common\plugins\stack\stack.dll
@REM    C:\tools\IAR\ARM_KS_5.50\common\plugins\SymList\SymList.dll
