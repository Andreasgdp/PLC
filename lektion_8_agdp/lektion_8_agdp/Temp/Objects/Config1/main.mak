SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\Windows Resource Kits\Tools\;C:\Program Files (x86)\Common Files\Oracle\Java\javapath;C:\ProgramData\watcom-1.3\binnt;C:\ProgramData\watcom-1.3\binw;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files\Git\cmd;C:\Program Files\nodejs\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\dotnet\;C:\Users\andre\AppData\Local\Programs\Python\Python38\Scripts\;C:\Users\andre\AppData\Local\Programs\Python\Python38\;C:\Users\andre\AppData\Local\Microsoft\WindowsApps;C:\Users\andre\AppData\Roaming\npm;C:\Program Files (x86)\Windows Resource Kits\Tools;C:\Users\andre\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\andre\AppData\Local\GitHubDesktop\bin;C:\Users\andre\AppData\Local\Microsoft\WindowsApps;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.2.1\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\GitHub CLI\;C:\Users\andre\AppData\Local\Programs\Python\Python38\Scripts\;C:\Users\andre\AppData\Local\Programs\Python\Python38\;C:\Users\andre\AppData\Local\Microsoft\WindowsApps;C:\Users\andre\AppData\Roaming\npm;C:\Program Files (x86)\Windows Resource Kits\Tools;C:\Users\andre\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\andre\AppData\Local\GitHubDesktop\bin;C:\Users\andre\AppData\Local\Microsoft\WindowsApps;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.2.1\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\GitHub CLI
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.8.2.72
export AS_COMPANY_NAME :=  
export AS_USER_NAME := andre
export AS_PATH := C:/BrAutomation/AS48
export AS_BIN_PATH := C:/BrAutomation/AS48/Bin-en
export AS_PROJECT_PATH := C:/Users/andre/Documents/GitHub/PLC/lektion_8_agdp/lektion_8_agdp
export AS_PROJECT_NAME := lektion_8_agdp
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS48/AS/VC
export AS_TEMP_PATH := C:/Users/andre/Documents/GitHub/PLC/lektion_8_agdp/lektion_8_agdp/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/andre/Documents/GitHub/PLC/lektion_8_agdp/lektion_8_agdp/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS48
export WIN32_AS_PATH := "C:\BrAutomation\AS48"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS48\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\andre\Documents\GitHub\PLC\lektion_8_agdp\lektion_8_agdp"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS48\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\andre\Documents\GitHub\PLC\lektion_8_agdp\lektion_8_agdp\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\andre\Documents\GitHub\PLC\lektion_8_agdp\lektion_8_agdp\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS48\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS48"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/lektion_8_agdp.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'   

