﻿<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.8.2.72?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Program" Source="Program.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <VcDataObjects>
    <VcDataObject Name="Visu" Source="Visu.dob" Memory="UserROM" Language="Vc" WarningLevel="2" />
  </VcDataObjects>
  <Libraries>
    <LibraryObject Name="Library" Source="Libraries.Library.lby" Memory="UserROM" Language="IEC" Debugging="true" />
  </Libraries>
</SwConfiguration>