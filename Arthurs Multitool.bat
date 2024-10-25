@echo off
color 0C

:: ASCII Art Header
echo.
echo  ███╗   ██╗ ███████╗██████╗ ██╗  ██╗ █████╗ ██╗     ██╗██████╗ 
echo  ████╗  ██║ ██╔════╝██╔══██╗██║  ██║██╔══██╗██║     ██║██╔══██╗
echo  ██╔██╗ ██║ █████╗  ██████╔╝███████║███████║██║     ██║██║  ██║
echo  ██║╚██╗██║ ██╔══╝  ██╔═══╝ ██╔══██║██╔══██║██║     ██║██╔══██║
echo  ██║ ╚████║ ███████╗██║     ██║  ██║██║  ██║███████╗██║██████╔╝
echo  ╚═╝  ╚═══╝ ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝╚═════╝ 
echo.
echo =============================
echo        Megagamers Multitool
echo =============================
echo.

setlocal enabledelayedexpansion

:menu
cls
echo Select a page:
for /L %%i in (1,1,10) do echo %%i. Page %%i
echo 11. Exit
echo =============================
set /p page="Choose a page [1-11]: "

if "%page%"=="1" ( call :page1 ) else if "%page%"=="2" ( call :page2 ) else if "%page%"=="3" ( call :page3 ) else if "%page%"=="4" ( call :page4 ) else if "%page%"=="5" ( call :page5 ) else if "%page%"=="6" ( call :page6 ) else if "%page%"=="7" ( call :page7 ) else if "%page%"=="8" ( call :page8 ) else if "%page%"=="9" ( call :page9 ) else if "%page%"=="10" ( call :page10 ) else if "%page%"=="11" ( exit ) else ( echo Invalid choice, try again. pause & goto menu )

:page1
cls
echo ============ Page 1 ============
echo 1.  List files in directory
echo 2.  Ping a website
echo 3.  Check system info
echo 4.  Display IP address
echo 5.  Trace route
echo 6.  Display running processes
echo 7.  Create a directory
echo 8.  Delete a file
echo 9.  Copy a file
echo 10. Move a file
echo =============================
echo 11. Return to menu
echo =============================
set /p choice="Choose an option [1-11]: "
if "%choice%"=="1" ( call :list_files ) else if "%choice%"=="2" ( call :ping_website ) else if "%choice%"=="3" ( call :check_info ) else if "%choice%"=="4" ( call :current_ip ) else if "%choice%"=="5" ( call :trace_route ) else if "%choice%"=="6" ( call :running_processes ) else if "%choice%"=="7" ( call :create_directory ) else if "%choice%"=="8" ( call :delete_file ) else if "%choice%"=="9" ( call :copy_file ) else if "%choice%"=="10" ( call :move_file ) else if "%choice%"=="11" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page1 )
goto page_navigation

:page2
cls
echo ============ Page 2 ============
echo 11. Show date & time
echo 12. Clear the screen
echo 13. Open Notepad
echo 14. Open Calculator
echo 15. Check disk space
echo 16. View network config
echo 17. Check active connections
echo 18. Restart a service
echo 19. View event logs
echo 20. Check system uptime
echo =============================
echo 21. Return to menu
echo =============================
set /p choice="Choose an option [11-21]: "
if "%choice%"=="11" ( call :current_datetime ) else if "%choice%"=="12" ( cls & goto page2 ) else if "%choice%"=="13" ( start notepad & goto page2 ) else if "%choice%"=="14" ( start calc & goto page2 ) else if "%choice%"=="15" ( call :check_disk_space ) else if "%choice%"=="16" ( call :network_config ) else if "%choice%"=="17" ( call :active_connections ) else if "%choice%"=="18" ( call :restart_service ) else if "%choice%"=="19" ( call :view_event_logs ) else if "%choice%"=="20" ( call :check_uptime ) else if "%choice%"=="21" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page2 )
goto page_navigation

:page3
cls
echo ============ Page 3 ============
echo 21. View environment variables
echo 22. Open Command Prompt
echo 23. Get system architecture
echo 24. Check installed software
echo 25. View active network adapters
echo 26. Generate random password
echo 27. Shutdown computer
echo 28. Restart computer
echo 29. Log off user
echo 30. Fun Modules
echo =============================
echo 31. Return to menu
echo =============================
set /p choice="Choose an option [21-31]: "
if "%choice%"=="21" ( call :view_env_vars ) else if "%choice%"=="22" ( call :open_cmd ) else if "%choice%"=="23" ( call :get_architecture ) else if "%choice%"=="24" ( call :check_installed_software ) else if "%choice%"=="25" ( call :active_network_adapters ) else if "%choice%"=="26" ( call :generate_password ) else if "%choice%"=="27" ( call :shutdown_computer ) else if "%choice%"=="28" ( call :restart_computer ) else if "%choice%"=="29" ( call :log_off_user ) else if "%choice%"=="30" ( call :fun_modules ) else if "%choice%"=="31" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page3 )
goto page_navigation

:page4
cls
echo ============ Page 4 ============
echo 31. DLL Injector (Simulated)
echo 32. Check System Uptime
echo 33. Kill a Process by Name
echo 34. Flush DNS
echo 35. Open Task Manager
echo 36. Lock Workstation
echo 37. Enable/Disable Firewall
echo 38. Empty Recycle Bin
echo 39. Check Available RAM
echo 40. View Startup Programs
echo =============================
echo 41. Return to menu
echo =============================
set /p choice="Choose an option [31-41]: "
if "%choice%"=="31" ( call :dll_injector ) else if "%choice%"=="32" ( call :check_uptime ) else if "%choice%"=="33" ( call :kill_process ) else if "%choice%"=="34" ( call :flush_dns ) else if "%choice%"=="35" ( call :open_task_manager ) else if "%choice%"=="36" ( call :lock_workstation ) else if "%choice%"=="37" ( call :toggle_firewall ) else if "%choice%"=="38" ( call :empty_recycle_bin ) else if "%choice%"=="39" ( call :check_ram ) else if "%choice%"=="40" ( call :view_startup_programs ) else if "%choice%"=="41" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page4 )
goto page_navigation

:page5
cls
echo ============ Page 5 ============
echo 41. Enable/Disable Network Adapter
echo 42. Run Disk Check (CHKDSK)
echo 43. Create a Restore Point
echo 44. Enable/Disable USB Ports
echo 45. Run Power Diagnostics
echo 46. Check BIOS Information
echo 47. Backup Registry
echo 48. Restore Registry Backup
echo 49. Monitor System Performance
echo 50. Disable/Enable Windows Updates
echo =============================
echo 51. Return to menu
echo =============================
set /p choice="Choose an option [41-51]: "
if "%choice%"=="41" ( call :toggle_network_adapter ) else if "%choice%"=="42" ( call :run_chkdsk ) else if "%choice%"=="43" ( call :create_restore_point ) else if "%choice%"=="44" ( call :toggle_usb_ports ) else if "%choice%"=="45" ( call :run_power_diagnostics ) else if "%choice%"=="46" ( call :check_bios_info ) else if "%choice%"=="47" ( call :backup_registry ) else if "%choice%"=="48" ( call :restore_registry ) else if "%choice%"=="49" ( call :monitor_performance ) else if "%choice%"=="50" ( call :toggle_windows_updates ) else if "%choice%"=="51" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page5 )
goto page_navigation

:page6
cls
echo ============ Page 6 ============
echo 51. Check Windows Version
echo 52. Enable/Disable Safe Mode
echo 53. Monitor CPU Temperature (simulated)
echo 54. Check Disk Fragmentation
echo 55. Disable Windows Defender
echo 56. Enable/Disable Secure Boot
echo 57. Run SFC (System File Checker)
echo 58. Check Power Plan Settings
echo 59. Configure Remote Desktop
echo 60. Reset Network Settings
echo =============================
echo 61. Return to menu
echo =============================
set /p choice="Choose an option [51-61]: "
if "%choice%"=="51" ( call :check_windows_version ) else if "%choice%"=="52" ( call :toggle_safe_mode ) else if "%choice%"=="53" ( call :monitor_cpu_temp ) else if "%choice%"=="54" ( call :check_disk_fragmentation ) else if "%choice%"=="55" ( call :toggle_windows_defender ) else if "%choice%"=="56" ( call :toggle_secure_boot ) else if "%choice%"=="57" ( call :run_sfc ) else if "%choice%"=="58" ( call :check_power_plan ) else if "%choice%"=="59" ( call :configure_rdp ) else if "%choice%"=="60" ( call :reset_network_settings ) else if "%choice%"=="61" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page6 )
goto page_navigation

:page7
cls
echo ============ Page 7 ============
echo 61. Check Event Viewer Logs
echo 62. Enable/Disable Cortana
echo 63. View Installed Drivers
echo 64. Check Windows Updates
echo 65. Run Windows Troubleshooter
echo 66. Toggle Night Light Mode
echo 67. Change User Account Control Settings
echo 68. Modify System Path Variables
echo 69. Reset Windows Explorer
echo 70. Create Scheduled Task
echo =============================
echo 71. Return to menu
echo =============================
set /p choice="Choose an option [61-71]: "
if "%choice%"=="61" ( call :check_event_logs ) else if "%choice%"=="62" ( call :toggle_cortana ) else if "%choice%"=="63" ( call :view_installed_drivers ) else if "%choice%"=="64" ( call :check_windows_updates ) else if "%choice%"=="65" ( call :run_troubleshooter ) else if "%choice%"=="66" ( call :toggle_night_light ) else if "%choice%"=="67" ( call :change_uac_settings ) else if "%choice%"=="68" ( call :modify_path_vars ) else if "%choice%"=="69" ( call :reset_explorer ) else if "%choice%"=="70" ( call :create_scheduled_task ) else if "%choice%"=="71" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page7 )
goto page_navigation

:page8
cls
echo ============ Page 8 ============
echo 71. Monitor Network Traffic
echo 72. Check System Resource Usage
echo 73. Set System Environment Variables
echo 74. Disable/Enable Notifications
echo 75. Change System Sounds
echo 76. Manage Windows Features
echo 77. View Group Policy Settings
echo 78. Access Local Security Policy
echo 79. Set File Permissions
echo 80. Schedule Shutdown
echo =============================
echo 81. Return to menu
echo =============================
set /p choice="Choose an option [71-81]: "
if "%choice%"=="71" ( call :monitor_network_traffic ) else if "%choice%"=="72" ( call :check_resource_usage ) else if "%choice%"=="73" ( call :set_env_vars ) else if "%choice%"=="74" ( call :toggle_notifications ) else if "%choice%"=="75" ( call :change_system_sounds ) else if "%choice%"=="76" ( call :manage_windows_features ) else if "%choice%"=="77" ( call :view_group_policy ) else if "%choice%"=="78" ( call :access_security_policy ) else if "%choice%"=="79" ( call :set_file_permissions ) else if "%choice%"=="80" ( call :schedule_shutdown ) else if "%choice%"=="81" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page8 )
goto page_navigation

:page9
cls
echo ============ Page 9 ============
echo 81. Access Command Line Utilities
echo 82. Manage System Drivers
echo 83. Configure System Startup
echo 84. Check Performance Logs
echo 85. Enable/Disable Hardware Acceleration
echo 86. View Installed Certificates
echo 87. Check System Integrity
echo 88. Manage Windows Services
echo 89. Access Windows Firewall Settings
echo 90. Customize Taskbar Settings
echo =============================
echo 91. Return to menu
echo =============================
set /p choice="Choose an option [81-91]: "
if "%choice%"=="81" ( call :access_cmd_utilities ) else if "%choice%"=="82" ( call :manage_drivers ) else if "%choice%"=="83" ( call :configure_startup ) else if "%choice%"=="84" ( call :check_performance_logs ) else if "%choice%"=="85" ( call :toggle_hardware_acceleration ) else if "%choice%"=="86" ( call :view_certificates ) else if "%choice%"=="87" ( call :check_integrity ) else if "%choice%"=="88" ( call :manage_services ) else if "%choice%"=="89" ( call :firewall_settings ) else if "%choice%"=="90" ( call :customize_taskbar ) else if "%choice%"=="91" ( goto menu ) else ( echo Invalid choice, try again. pause & goto page9 )
goto page_navigation

:page10
cls
echo ============ Page 10 ============
echo 91. View System Logs
echo 92. Reset Network Adapter
echo 93. Configure Network Settings
echo 94. Run Disk Cleanup
echo 95. Change Power Settings
echo 96. View Computer Specifications
echo 97. Access BIOS Settings
echo 98. Manage Storage Spaces
echo 99. Create a System Image
echo 100. Exit
echo =============================
set /p choice="Choose an option [91-100]: "
if "%choice%"=="91" ( call :view_system_logs ) else if "%choice%"=="92" ( call :reset_network_adapter ) else if "%choice%"=="93" ( call :configure_network ) else if "%choice%"=="94" ( call :run_disk_cleanup ) else if "%choice%"=="95" ( call :change_power_settings ) else if "%choice%"=="96" ( call :view_specs ) else if "%choice%"=="97" ( call :access_bios ) else if "%choice%"=="98" ( call :manage_storage_spaces ) else if "%choice%"=="99" ( call :create_system_image ) else if "%choice%"=="100" ( exit ) else ( echo Invalid choice, try again. pause & goto page10 )
goto page_navigation

:fun_modules
cls
echo ============ Fun Modules ============
echo 1. Funny Jokes Generator
echo 2. Magic 8-Ball
echo 3. ASCII Art Maker
echo 4. Riddle Solver
echo 5. Trivia Quiz
echo 6. Number Guessing Game
echo 7. Random Meme Viewer
echo 8. Dance Move Generator
echo 9. Virtual Pet
echo 10. Random Compliment Generator
echo =============================
echo 11. Return to menu
echo =============================
set /p choice="Choose an option [1-11]: "
if "%choice%"=="1" ( call :joke_generator ) else if "%choice%"=="2" ( call :magic_8_ball ) else if "%choice%"=="3" ( call :ascii_art_maker ) else if "%choice%"=="4" ( call :riddle_solver ) else if "%choice%"=="5" ( call :trivia_quiz ) else if "%choice%"=="6" ( call :number_guessing_game ) else if "%choice%"=="7" ( call :random_meme_viewer ) else if "%choice%"=="8" ( call :dance_move_generator ) else if "%choice%"=="9" ( call :virtual_pet ) else if "%choice%"=="10" ( call :random_compliment_generator ) else if "%choice%"=="11" ( goto menu ) else ( echo Invalid choice, try again. pause & goto fun_modules )
goto page_navigation

:: Fun Module Functions
:joke_generator
echo "Why don't scientists trust atoms? Because they make up everything!"
pause
goto :eof

:magic_8_ball
echo "Ask your question..."
set /p question="Question: "
set /a answer=%random% %% 3
if %answer%==0 ( echo "Yes." ) else if %answer%==1 ( echo "No." ) else ( echo "Maybe." )
pause
goto :eof

:ascii_art_maker
cls
echo "ASCII Art Maker - Create your own!"
set /p text="Enter text: "
echo !text! | figlet
pause
goto :eof

:riddle_solver
echo "I speak without a mouth and hear without ears. What am I?"
set /p answer="Your answer: "
if /i "%answer%"=="an echo" (
