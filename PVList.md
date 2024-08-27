# IPMI Manager Process Variables naming list

This document has the purpose of making it easier to understand the PV
substitution tree in this IOC and to ensure that it follows LNLS's naming
convention. It is also useful for any user to check which PVs are available.

Each new record created, or aliased from the ipmiComm module, must be
documented here.

```
AREA=IA-{{01..20}RaBPM|20RaBPMTL} # Area = LNLS uTCA crates
DIS=CO  # Discipline = Control
```

## MCH

### `$(AREA):$(DIS)-MCH_Base:`

<details>
<summary>link state</summary>
asyn
</details>

<details>
<summary>sensors</summary>
    TempCPU{-Mon|Prs-Cte} <br>
    TempIO{-Mon|Prs-Cte} <br>
    VoltBase1V2{-Mon|Prs-Cte} <br>
    VoltBase1V5{-Mon|Prs-Cte} <br>
    VoltBase1V8{-Mon|Prs-Cte} <br>
    VoltBase2V5{-Mon|Prs-Cte} <br>
    VoltBase3V3{-Mon|Prs-Cte} <br>
    VoltBase12V{-Mon|Prs-Cte} <br>
    CurrBase{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>


### `$(AREA):$(DIS)-MCH_ClkSw:`

<details>
<summary>sensors</summary>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempDCDCMax{-Mon|Prs-Cte} <br>
    TempMux{-Mon|Prs-Cte} <br>
    TempMuxMax{-Mon|Prs-Cte} <br>
    Volt3V3{-Mon|Prs-Cte} <br>
    Volt12V{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

### `$(AREA):$(DIS)-MCH_PCI_Hub:`

<details>
<summary>sensors</summary>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempDCDCMax{-Mon|Prs-Cte} <br>
    TempSwitch{-Mon|Prs-Cte} <br>
    TempSwitchMax{-Mon|Prs-Cte} <br>
    TempPCB{-Mon|Prs-Cte} <br>
    TempPCBMax{-Mon|Prs-Cte} <br>
    Volt0V9{-Mon|Prs-Cte} <br>
    Volt0V9Analog{-Mon|Prs-Cte} <br>
    Volt1V8{-Mon|Prs-Cte} <br>
    Volt3V3{-Mon|Prs-Cte} <br>
    Volt12V{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

### `$(AREA):$(DIS)-MCH_RTM_CPU:`

<details>
<summary>sensors</summary>
    TempPCB{-Mon|Prs-Cte} <br>
    TempPCBMax{-Mon|Prs-Cte} <br>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempDCDCMax{-Mon|Prs-Cte} <br>
    TempComExCPU{-Mon|Prs-Cte} <br>
    TempComExPCH{-Mon|Prs-Cte} <br>
    TempComExDDR{-Mon|Prs-Cte} <br>
    Volt1V0{-Mon|Prs-Cte} <br>
    Volt1V8{-Mon|Prs-Cte} <br>
    Volt3V3{-Mon|Prs-Cte} <br>
    Volt5V{-Mon|Prs-Cte} <br>
    VoltVBAT{-Mon|Prs-Cte} <br>
    Volt12VInt{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

## Cooling Unit

### `$(AREA):$(DIS)-CU{Top|Bot}:`

<details>
<summary>sensors</summary>
   TempLM75{-Mon|Prs-Cte} <br>
   TempLM75_2{-Mon|Prs-Cte} <br>
   Volt3V3{-Mon|Prs-Cte} <br>
   Volt12V{-Mon|Prs-Cte} <br>
   Volt12V_1{-Mon|Prs-Cte} <br>
   SFan1{-Mon|Prs-Cte} <br>
   SFan2{-Mon|Prs-Cte} <br>
   SFan3{-Mon|Prs-Cte} <br>
   SFan4{-Mon|Prs-Cte} <br>
   SFan5{-Mon|Prs-Cte} <br>
   SFan6{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    Pwr-Mon <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

## Power Module

### `$(AREA):$(DIS)-PM-{2|4}:`

<details>
<summary>sensors</summary>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempPath{-Mon|Prs-Cte} <br>
    TempCooler{-Mon|Prs-Cte} <br>
    TempTrafo{-Mon|Prs-Cte} <br>
    VoltMP{-Mon|Prs-Cte} <br>
    VoltSMP{-Mon|Prs-Cte} <br>
    VoltSMPP{-Mon|Prs-Cte} <br>
    VoltPP{-Mon|Prs-Cte} <br>
    Volt12VHHV{-Mon|Prs-Cte} <br>
    CurrSum{-Mon|Prs-Cte} <br>
    CurrCh01{-Mon|Prs-Cte} <br>
    CurrCh02{-Mon|Prs-Cte} <br>
    CurrCh03{-Mon|Prs-Cte} <br>
    CurrCh04{-Mon|Prs-Cte} <br>
    CurrCh05{-Mon|Prs-Cte} <br>
    CurrCh06{-Mon|Prs-Cte} <br>
    CurrCh07{-Mon|Prs-Cte} <br>
    CurrCh08{-Mon|Prs-Cte} <br>
    CurrCh09{-Mon|Prs-Cte} <br>
    CurrCh10{-Mon|Prs-Cte} <br>
    CurrCh11{-Mon|Prs-Cte} <br>
    CurrCh12{-Mon|Prs-Cte} <br>
    CurrCh13{-Mon|Prs-Cte} <br>
    CurrCh14{-Mon|Prs-Cte} <br>
    CurrCh15{-Mon|Prs-Cte} <br>
    CurrCh16{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

## AMC

### `$(AREA):$(DIS)-AMC-{1,3..12}:`

Slots related to AFCv3.1.

<details>
<summary>sensors</summary>
    FMC{1|2}{Volt|Curr}12V{-Mon|Prs-Cte} <br>
    FMC{1|2}{Volt|Curr}VADJ{-Mon|Prs-Cte} <br>
    FMC{1|2}{Volt|Curr}3V3{-Mon|Prs-Cte} <br>
    TempFPGA{-Mon|Prs-Cte} <br>
    TempUC{-Mon|Prs-Cte} <br>
    TempClkSwitch{-Mon|Prs-Cte} <br>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempRAM{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    Pwr-Mon <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

### `$(AREA):$(DIS)-AMC-2:`

Slots related to AFCv4.0.

<details>
<summary>sensors</summary>
    AMC{Volt|Curr}12V{-Mon|Prs-Cte} <br>
    RTM{Volt|Curr}12V{-Mon|Prs-Cte} <br>
    FMC{1|2}{Volt|Curr}VADJ{-Mon|Prs-Cte} <br>
    FMC{1|2}{Volt|Curr}3V3{-Mon|Prs-Cte} <br>
    TempFPGA{-Mon|Prs-Cte} <br>
    TempUC{-Mon|Prs-Cte} <br>
    TempClkSwitch{-Mon|Prs-Cte} <br>
    TempDCDC{-Mon|Prs-Cte} <br>
    TempRAM{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    Pwr-Mon <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

## RTM

### `$(AREA):$(DIS)-RTM_8SFP:`

RTM connected to AFCv3.1-Timing (Slot 1).

<details>
<summary>sensors</summary>
   TempRTM1{-Mon|Prs-Cte} <br>
   TempRTM2{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

### `$(AREA):$(DIS)-RTM_LAMP:`

RTM connected to AFCv4.0-FOFB (Slot 2).

<details>
<summary>sensors</summary>
   TempRTM1{-Mon|Prs-Cte} <br>
   TempRTM2{-Mon|Prs-Cte} <br>
   TempRTM3{-Mon|Prs-Cte} <br>
<br>
</details>

<details>
<summary>FRU</summary>
    Status-Cte <br>
    FruId-Cte <br>
    BoardManuf-Cte <br>
    BoardName-Cte <br>
    BoardSN-Cte <br>
    BoardPN-Cte <br>
    ProdManuf-Cte <br>
    ProdName-Cte <br>
    ProdSN-Cte <br>
    ProdPN-Cte <br>
    PowerCtl-Sel <br>
    SoftRst-Cmd <br>
    SoftRstSts-Mon <br>
<br>
</details>

## System

### `$(AREA):$(DIS)-Crate:`

<details>
<summary>System Common</summary>
    MCHType-Cte <br>
    DbgLvl-Sel <br>
    Online-Mon <br>
    Init-Mon <br>
    InitBypass-Cmd <br>
    Connect-Cmd <br>
    Rst-Cmd <br>
    SensorScanPeriod-Sel <br>
<br>
</details>
