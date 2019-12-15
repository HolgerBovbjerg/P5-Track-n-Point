'# MWS Version: Version 2018.0 - Oct 26 2017 - ACIS 27.0.2 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 0.7 fmax = 0.9
'# created = '[VERSION]2018.0|27.0.2|20171026[/VERSION]


'@ use template: Antenna - Planar.cfg

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
'set the units
With Units
    .Geometry "mm"
    .Frequency "GHz"
    .Voltage "V"
    .Resistance "Ohm"
    .Inductance "NanoH"
    .TemperatureUnit  "Kelvin"
    .Time "ns"
    .Current "A"
    .Conductance "Siemens"
    .Capacitance "PikoF"
End With
'----------------------------------------------------------------------------
Plot.DrawBox True
With Background
     .Type "Normal"
     .Epsilon "1.0"
     .Mu "1.0"
     .XminSpace "0.0"
     .XmaxSpace "0.0"
     .YminSpace "0.0"
     .YmaxSpace "0.0"
     .ZminSpace "0.0"
     .ZmaxSpace "0.0"
End With
With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
End With
' optimize mesh settings for planar structures
With Mesh
     .MergeThinPECLayerFixpoints "True"
     .RatioLimit "20"
     .AutomeshRefineAtPecLines "True", "6"
     .FPBAAvoidNonRegUnite "True"
     .ConsiderSpaceForLowerMeshLimit "False"
     .MinimumStepNumber "5"
     .AnisotropicCurvatureRefinement "True"
     .AnisotropicCurvatureRefinementFSM "True"
End With
With MeshSettings
     .SetMeshType "Hex"
     .Set "RatioLimitGeometry", "20"
     .Set "EdgeRefinementOn", "1"
     .Set "EdgeRefinementRatio", "6"
End With
With MeshSettings
     .SetMeshType "HexTLM"
     .Set "RatioLimitGeometry", "20"
End With
With MeshSettings
     .SetMeshType "Tet"
     .Set "VolMeshGradation", "1.5"
     .Set "SrfMeshGradation", "1.5"
End With
' change mesh adaption scheme to energy
' 		(planar structures tend to store high energy
'     	 locally at edges rather than globally in volume)
MeshAdaption3D.SetAdaptionStrategy "Energy"
' switch on FD-TET setting for accurate farfields
FDSolver.ExtrudeOpenBC "True"
PostProcess1D.ActivateOperation "vswr", "true"
PostProcess1D.ActivateOperation "yz-matrices", "true"
With FarfieldPlot
	.ClearCuts ' lateral=phi, polar=theta
	.AddCut "lateral", "0", "1"
	.AddCut "lateral", "90", "1"
	.AddCut "polar", "90", "1"
End With
'----------------------------------------------------------------------------
'set the frequency range
Solver.FrequencyRange "0.7", "0.9"
Dim sDefineAt As String
sDefineAt = "0.7;0.864;0.9"
Dim sDefineAtName As String
sDefineAtName = "0.7;0.864;0.9"
Dim sDefineAtToken As String
sDefineAtToken = "f="
Dim aFreq() As String
aFreq = Split(sDefineAt, ";")
Dim aNames() As String
aNames = Split(sDefineAtName, ";")
Dim nIndex As Integer
For nIndex = LBound(aFreq) To UBound(aFreq)
Dim zz_val As String
zz_val = aFreq (nIndex)
Dim zz_name As String
zz_name = sDefineAtToken & aNames (nIndex)
' Define Farfield Monitors
With Monitor
    .Reset
    .Name "farfield ("& zz_name &")"
    .Domain "Frequency"
    .FieldType "Farfield"
    .MonitorValue  zz_val
    .ExportFarfieldSource "False"
    .Create
End With
Next
'----------------------------------------------------------------------------
With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 1%
End With
With Mesh
     .MeshType "PBA"
End With
'set the solver type
ChangeSolverType("HF Time Domain")

'@ define material: FR-4 (lossy)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "FR-4 (lossy)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "4.3"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.025"
     .TanDFreq "10.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.3"
     .SetActiveMaterial "all"
     .Colour "0.94", "0.82", "0.76"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ new component: component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Component.New "component1"

'@ define brick: component1:dieelectric

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "dieelectric" 
     .Component "component1" 
     .Material "FR-4 (lossy)" 
     .Xrange "-GND_W/2", "GND_W/2" 
     .Yrange "-GND_L/2", "GND_L/2" 
     .Zrange "-h/2", "h/2" 
     .Create
End With

'@ define material: Copper (pure)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "Copper (pure)"
     .Folder ""
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "Kelvin"
     .Mu "1.0"
     .Sigma "5.96e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .HeatCapacity "0.39"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.96e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ define brick: component1:ground

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "ground" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "-GND_W/2", "GND_W/2" 
     .Yrange "-GND_L/2", "GND_L/2" 
     .Zrange "-h/2-thickness", "-h/2" 
     .Create
End With

'@ define brick: component1:patch

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "patch" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "-W/2", "W/2" 
     .Yrange "-L/2", "L/2" 
     .Zrange "h/2", "h/2+thickness" 
     .Create
End With

'@ switch working plane

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Plot.DrawWorkplane "false"

'@ define brick: component1:Feed

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "Feed" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "-W_0/2", "W_0/2" 
     .Yrange "-GND_L/2", "-L/2" 
     .Zrange "h/2", "h/2+thickness" 
     .Create
End With

'@ define brick: component1:cutouts

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "cutouts" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "-W_0/2-gap", "-W_0/2" 
     .Yrange "-L/2", "-L/2+y_0" 
     .Zrange "h/2", "h/2+thickness" 
     .Create
End With

'@ define brick: component1:cutout2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "cutout2" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "W_0/2", "W_0/2+gap" 
     .Yrange "-L/2", "-L/2+y_0" 
     .Zrange "h/2", "h/2+thickness" 
     .Create
End With

'@ rename block: component1:cutouts to: component1:cutout1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Rename "component1:cutouts", "cutout1"

'@ boolean subtract shapes: component1:patch, component1:cutout1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Subtract "component1:patch", "component1:cutout1"

'@ boolean subtract shapes: component1:patch, component1:cutout2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Subtract "component1:patch", "component1:cutout2"

'@ boolean add shapes: component1:patch, component1:Feed

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1:patch", "component1:Feed"

'@ define port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0+h*k", "W_0+h*k" 
     .Yrange "-168.685143125", "-168.685143125" 
     .Zrange "h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "True" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-168.685143125", "-168.685143125" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-GND_L/2", "-GND_L/2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ define frequency range

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solver.FrequencyRange "0.7", "0.9"

'@ define time domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ farfield plot options

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With FarfieldPlot 
     .Plottype "3D" 
     .Vary "angle1" 
     .Theta "90" 
     .Phi "90" 
     .Step "5" 
     .Step2 "5" 
     .SetLockSteps "True" 
     .SetPlotRangeOnly "False" 
     .SetThetaStart "0" 
     .SetThetaEnd "180" 
     .SetPhiStart "0" 
     .SetPhiEnd "360" 
     .SetTheta360 "False" 
     .SymmetricRange "False" 
     .SetTimeDomainFF "False" 
     .SetFrequency "-1" 
     .SetTime "0" 
     .SetColorByValue "True" 
     .DrawStepLines "False" 
     .DrawIsoLongitudeLatitudeLines "False" 
     .ShowStructure "False" 
     .ShowStructureProfile "False" 
     .SetStructureTransparent "False" 
     .SetFarfieldTransparent "False" 
     .SetSpecials "enablepolarextralines" 
     .SetPlotMode "Gain" 
     .Distance "1" 
     .UseFarfieldApproximation "True" 
     .SetScaleLinear "False" 
     .SetLogRange "40" 
     .SetLogNorm "0" 
     .DBUnit "0" 
     .EnableFixPlotMaximum "False" 
     .SetFixPlotMaximumValue "1" 
     .SetInverseAxialRatio "False" 
     .SetAxesType "user" 
     .SetAntennaType "unknown" 
     .Phistart "1.000000e+00", "0.000000e+00", "0.000000e+00" 
     .Thetastart "0.000000e+00", "0.000000e+00", "1.000000e+00" 
     .PolarizationVector "0.000000e+00", "1.000000e+00", "0.000000e+00" 
     .SetCoordinateSystemType "spherical" 
     .SetAutomaticCoordinateSystem "True" 
     .SetPolarizationType "Linear" 
     .SlantAngle 0.000000e+00 
     .Origin "bbox" 
     .Userorigin "0.000000e+00", "0.000000e+00", "0.000000e+00" 
     .SetUserDecouplingPlane "False" 
     .UseDecouplingPlane "False" 
     .DecouplingPlaneAxis "X" 
     .DecouplingPlanePosition "0.000000e+00" 
     .LossyGround "False" 
     .GroundEpsilon "1" 
     .GroundKappa "0" 
     .EnablePhaseCenterCalculation "False" 
     .SetPhaseCenterAngularLimit "3.000000e+01" 
     .SetPhaseCenterComponent "boresight" 
     .SetPhaseCenterPlane "both" 
     .ShowPhaseCenter "True" 
     .ClearCuts 
     .AddCut "lateral", "0", "1"  
     .AddCut "lateral", "90", "1"  
     .AddCut "polar", "90", "1"  
     .StoreSettings
End With

'@ set parametersweep options

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
    .SetSimulationType "Transient" 
End With

'@ add parsweep sequence: Sequence 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 1" 
End With

'@ delete parsweep sequence: Sequence 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteSequence "Sequence 1" 
End With

'@ add parsweep sequence: Sequence 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 1" 
End With

'@ add parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "y_0", "0", "40.5", "1.0" 
End With

'@ edit parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "y_0" 
     .AddParameter_Stepwidth "Sequence 1", "y_0", "0", "40", "5.0" 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-L/2", "-L/2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-L/2+y_0", "-L/2+y_0" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-L/2", "-L/2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ add parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "y_0", "0", "20", "5.0" 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-GND_L/2", "-GND_L/2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ define port: 2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "2" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0/2-h*k", "W_0/2+h*k" 
     .Yrange "-L/2", "-L/2" 
     .Zrange "-h/2", "h/2+k*h" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ define time domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "2"
     .StimulationMode "1"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ delete port: port2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.Delete "2"

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-L/2", "-L/2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ define time domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "1"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Free" 
     .Orientation "ymin" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-W_0-h*k", "W_0+h*k" 
     .Yrange "-L/2-2", "-L/2-2" 
     .Zrange "-h/2-thickness", "h/2+h*k" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ define brick: component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1" 
     .Material "Copper (pure)" 
     .Xrange "-W_0/2", "W_0/2" 
     .Yrange "-L/2-2", "-GND_L/2" 
     .Zrange "h/2", "h/2+thickness" 
     .Create
End With

'@ boolean subtract shapes: component1:patch, component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Subtract "component1:patch", "component1:solid1"

'@ delete parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "y_0" 
End With

'@ add parsweep parameter: Sequence 1:gap

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Linear "Sequence 1", "gap", "0", "10.17", "1" 
End With

'@ edit parsweep parameter: Sequence 1:gap

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "gap" 
     .AddParameter_Stepwidth "Sequence 1", "gap", "0", "10", "2.0" 
End With

'@ delete parsweep parameter: Sequence 1:gap

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "gap" 
End With

'@ add parsweep parameter: Sequence 1:W

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "W", "90", "110", "5.0" 
End With

'@ delete parsweep sequence: Sequence 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteSequence "Sequence 1" 
End With

'@ add parsweep sequence: Sequence 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddSequence "Sequence 1" 
End With

'@ add parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Linear "Sequence 1", "y_0", "40", "70", "1" 
End With

'@ edit parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "y_0" 
     .AddParameter_Stepwidth "Sequence 1", "y_0", "40", "70", "10.0" 
End With

'@ delete parsweep parameter: Sequence 1:y_0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .DeleteParameter "Sequence 1", "y_0" 
End With

'@ add parsweep parameter: Sequence 1:L

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With ParameterSweep
     .AddParameter_Stepwidth "Sequence 1", "L", "90", "110", "10.0" 
End With

'@ define material: PTFE (lossy)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "PTFE (lossy)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "2.1"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.0002"
     .TanDFreq "10.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "2200.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.2"
     .HeatCapacity "1.0"
     .SetActiveMaterial "all"
     .MechanicsType "Isotropic"
     .YoungsModulus "0.5"
     .PoissonsRatio "0.4"
     .ThermalExpansionRate "140"
     .Colour "0.94", "0.82", "0.76"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With 


'@ change material: component1:dieelectric to: PTFE (lossy)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeMaterial "component1:dieelectric", "PTFE (lossy)" 


