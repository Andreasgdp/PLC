SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files\AdoptOpenJDK\jdk-14.0.2.12-hotspot\bin;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\Git\cmd;C:\Users\jlars\AppData\Local\Programs\Python\Python38-32\Scripts\;C:\Users\jlars\AppData\Local\Programs\Python\Python38-32\;C:\Users\jlars\AppData\Local\Microsoft\WindowsApps;C:\Users\jlars\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\jlars\AppData\Local\GitHubDesktop\bin;C:\Users\jlars\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.2.3\bin;C:\Users\jlars\AppData\Local\Programs\Python\Python38-32\Scripts\;C:\Users\jlars\AppData\Local\Programs\Python\Python38-32\;C:\Users\jlars\AppData\Local\Microsoft\WindowsApps;C:\Users\jlars\AppData\Local\Programs\Microsoft VS Code\bin;C:\Users\jlars\AppData\Local\GitHubDesktop\bin;C:\Users\jlars\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files\JetBrains\IntelliJ IDEA Community Edition 2020.2.3\bin
export AS_BUILD_MODE := Build
export AS_VERSION := 4.8.2.72
export AS_COMPANY_NAME :=  
export AS_USER_NAME := jlars
export AS_PATH := C:/BrAutomation/AS48
export AS_BIN_PATH := C:/BrAutomation/AS48/Bin-en
export AS_PROJECT_PATH := C:/GitHub/PLC/Lyskryds_i_to_retninger_jbl_all/Lyskryds_i_to_retninger_jbl
export AS_PROJECT_NAME := Lyskryds_i_to_retninger_jbl
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS48/AS/VC
export AS_TEMP_PATH := C:/GitHub/PLC/Lyskryds_i_to_retninger_jbl_all/Lyskryds_i_to_retninger_jbl/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/GitHub/PLC/Lyskryds_i_to_retninger_jbl_all/Lyskryds_i_to_retninger_jbl/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS48/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS48
export WIN32_AS_PATH := "C:\BrAutomation\AS48"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS48\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\GitHub\PLC\Lyskryds_i_to_retninger_jbl_all\Lyskryds_i_to_retninger_jbl"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS48\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\GitHub\PLC\Lyskryds_i_to_retninger_jbl_all\Lyskryds_i_to_retninger_jbl\Temp"
export WIN32_AS_BINARIES_PATH := "C:\GitHub\PLC\Lyskryds_i_to_retninger_jbl_all\Lyskryds_i_to_retninger_jbl\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS48\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS48"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Lyskryds_i_to_retninger_jbl.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'Build'   

