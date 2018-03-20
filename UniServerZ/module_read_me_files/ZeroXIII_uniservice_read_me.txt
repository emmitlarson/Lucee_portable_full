#############################################################################
                         Uniform Server Zero XIII 
#############################################################################
 26-07-2016
#############################################################################

-----------
Introuction
-----------
 The Uniform Server Zero is designed for portability, emphasis is
 given to reducing code size. The Uniform Server Zero achieves this
 through a modular implementation. Install only modules (plugins)
 you require these are listed in the documentation plugin section:
 ZeroXIII_documentation_1_0_0.exe

----------------------------------------------
The Uniform Server Zero XIII UniService plugin
----------------------------------------------
 This module allows Apache and MySQL servers to be installed
 and run as a service.

-----------------------
Install module (plugin)
-----------------------
  1) Download ZeroXIII_uniservice_2_2_0.exe module (plugin)
  2) Copy ZeroXIII_uniservice_2_2_0.exe module (plugin) to folder UniServerZ
  3) Double click on the downloaded module
  4) This starts the extraction process
  5) If requested allow overwriting of existing files.
  6) If you wish to save space delete file  ZeroXIII_uniservice_2_2_0.exe

 Folder UniServerZ now contains two new files:
  UniService.exe               - Service Application
  ZeroXI_unservice_read_me.txt - This file

-------
Warning
-------
 Before installing and running servers as a service. Ensure servers are
 stopped and UniController is closed. 

 After installing and running servers as a service do not use UniController
 to control servers. Before using UniController stop and uninstall services.

--------------------------
Install and run as service
--------------------------
 Install service as follows:
  1) Use UniController to configure and ensure servers are running correctly.
  2) Stop both servers.
  3) Close UniController.
  4) Start UniService application double click on UniService.exe
  5) Install each service as required.
        - Configuration files are backed up.
        - Original files updated with absolute paths.
  6) Run each service as required.
  7) Close UniService application.

  Note: Servers now use absolute paths and are no longer portable.

 Uninstall service as follows:
  1) Start UniService application double click on UniService.exe.
  2) Stop each service.
  3) Uninstall each service.
       - Backup files restored.
  4) Close UniService application

  Note: Servers are now portable and can be moved.

--------------------------
Apache configuration files
--------------------------

 Errors in Apache configuration files will prevent Apache running as a service.
 After making changes to configuration files ensure the servers function
 correctly when run as a standard program. After testing stop servers, close
 UniController and start UniService.  Click Apache service test button.   

 Apache service test performs the following:
  1) Opens a command window
  2) Installs Apache service
  3) Performs Apache configuration test
  4) Uninstalls Apache service

 Closing above command window returns to the Service Utility UniService.

 Errors reported must be corrected before the service can be installed and
 started from the UniServer Service Utility.

----------------------------- 
General note: Install failure
-----------------------------
 After clicking either Apache or MySQL install service button the application
 may appear to stall and become unresponsive. The application will remain
 unresponsive for about one minute then  display a conformation message
 service could not be installed. Clicking the OK message button restores
 configuration backup files.

----------------------
Additional Information
---------------------- 
 UniService is compatible with the following:
   13_0_0_ZeroXIII.exe and above
   ZeroXIII_apache_2_4_23_h.exe and above
   ZeroXIII_controller_2_2_0.exe and above

-------
Changes
-------

--------------------------------------o0o------------------------------------
            Copyright 2002-2016 The Uniform Server Development Team
                            All rights reserved.



