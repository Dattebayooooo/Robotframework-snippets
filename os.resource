*** Settings ***
Documentation     This is a resource file, that can contain keywords related to OS. This is for RF==3.0
Library           OperatingSystem

*** Keywords ***
Remove_file_from_directory
    [Documentation]    Removes files from the specified directory
    [Arguments]    ${Args_directory}
    ${file_names}    OperatingSystem.List Files In Directory    ${Args_directory}
    :FOR    ${file_name}    IN    @{file_names}
    \    OperatingSystem.Remove File   ${Args_directory}\\${file_name}
Get_Current_Drive
    [Arguments]    Returns current drive from where the robot file is running/Executing
    ## TODO
    \