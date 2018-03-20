#############################################################################
                         Uniform Server Zero XIII 
#############################################################################
 24-7-2016
#############################################################################

-----------
Introuction
-----------
 The Uniform Server Zero is designed for portability, emphasis is
 given to reducing code size. The Uniform Server Zero achieves this
 through a modular implementation. Install only modules (plugins)
 you require these are listed in the documentation plugin section:
 ZeroXIII_documentation_1_0_0.exe

----------------------------------------------------
The Uniform Server Zero XIII MySQL Auto Backup plugin
----------------------------------------------------
This module allows automatic backup of MySQL databases. These have a raw
format of name.sql, all these files can be archived. The archive format
either or both 7z and zip. Options are included to FTP these to an
external server and optionally provide e-mail notification which includes
the log file content.

-----------------------
Install module (plugin)
-----------------------
  1) Download ZeroXI_mysql_autoback_1_0_0.exe module (plugin)
  2) Copy ZeroXI_mysql_autoback_1_0_0.exe module (plugin) to folder UniServerZ
  3) Double click on the downloaded module
  4) This starts the extraction process
  5) If requested allow overwriting of existing files.
  6) If you wish to save space delete file  ZeroXIII_mysql_autoback_1_0_0.exe

 Folder UniServerZ now contains two new files and one new folder:
   UniDbBackup.bat                           - Starts the MySQL Auto DB Backup user interface
   ZeroXIII_mysql_autoback_1_0_0_read_me.txt - Contains additional informs
   db_auto_backup                            - Folder contains backups and log files.

 Folder UniServerZ\utils now contains three new files and one folder:
   start_task_schedule_w7_w8.bat - Short cut to run Windows Task sheduler
   UniDbBackup.exe               - Uniform Server MySQL Auto DB Backup application
   us_7za.exe                    - Third party application. Renamed 7za.exe to us_7za.exe prevents Win8 clashes.
   UniDbBackupConfig             - Folder for configuration and tracking

 Folder UniServerZ\utils\UniDbBackupConfig - Configuration and tracking
   us_db_backup_config.ini  - Configuration file for MySQL Auto DB Backup
   us_db_ref_list.txt       - Tracking, full list of previous DBs, automatically created 
   us_db_to_exclude.txt     - Tracking, DBs to exclude, automatically created  

------------------------------
Install and run auto db backup
------------------------------

 -------------
 Create a Task
 -------------

1) Start Task Scheduler: Navigate to folder C:\UniServerZ\utils and double click on start_task_schedule_w7_w8.bat

2) Task Scheduler:
   a) Click "Create Basic Task" opens the Create Task window.
   b) Enter a Name in the Name field. Use "UniServer_Auto_Backup" without the quotes
   c) Enter a Description in the Description field. Use "Uniform Server MySQL automatic backup" without the quotes
   d) Click "Next" button

3) Create Basic Task Wizard - Task Trigger:
   a) Select one of the options: "Daily", "Weekly" or "Monthly" For this example select "Daily" for a daily backup
   b) Click "Next" button.

4) Create Basic Task Wizard - Daily:
   a) Set the starting date, start time e.g 28/08/2014 20:00:00 
   b) Set "Recur every 1 days" makes backup every day
   c) Click "Next" button.

5) Create Basic Task Wizard - Action
   a) Select Action to perform, click "Start a program" radio button
   b) Click "Next" button.

6) Create Basic Task Wizard - Start a Program
   a) "Program/script" Click "Browse" button.
      Navigate to application UniDbBackup.exe for example  C:\UniServerZ\utils\UniDbBackup.exe 
      Click "Open" button.
   b) Add arguments: Enter "auto"  without the quotes
   c) Click "Next" button.

7) Create Basic Task Wizard - Summary
   a) Check Box "Open the Properties dialog for this when I click Finish" click to select.
   b) Click "Finish" button. New task is created and added to Windows schedule  

8) UniServer_Auto_Backup Properties(Local Computer):
   This displays task properties shown for completeness.
   a) Click "OK" button.
   Click File>Exit

 Note: Following sections "Delete a Task" and "Quick Test" are included for completeness
 -------------
 Delete a Task
 -------------
To remove a task, start Task Scheduler, select task from the library list and delete. The following details
how to remove the Uniform Server UniServer_Auto_Backup task:

9) Task Scheduler: - Delete task:
   Start Task Scheduler: Navigate to folder C:\UniServerZ\utils and double click on start_task_schedule_w7_w8.bat
   a) Left menu: Select "Task Scheduler Library"
   b) Center menu: Select "UniServer_Auto_Backup" ensure it is highlighted
   c) Right menu: Click "Delete" menu item.
   d) Pop-up displayed "Do you want to delete this task" click "Yes" button
   e) Click File>Exit

 ----------
 Quick Test
 ----------
For testing there is no need to wait for the scheduled time you can instantly run the Task as follows:

10) Task Scheduler: - Run task:
    a) Start Task Scheduler: Navigate to folder C:\UniServerZ\utils and double click on start_task_schedule_w7_w8.bat
    b) Left menu: Select "Task Scheduler Library"
    c) Centre menu: Select "UniServer_Auto_Backup" ensure it is highlighted
    d) Right menu: Click "Run" forces a run with the parameters set.

----------------------
Additional Information
---------------------- 

None


-------
Changes
-------

 1.0.0 - Initial release


--------------------------------------o0o------------------------------------
            Copyright 2002-2014 The Uniform Server Development Team
                            All rights reserved.



