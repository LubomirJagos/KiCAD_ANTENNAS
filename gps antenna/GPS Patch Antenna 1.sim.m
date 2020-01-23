addpath('C:\Users\H364387\Downloads\openEMS\matlab');
addpath('C:\Users\H364387\Downloads\openEMS\pcb2csx\matlab');

%%% Board mesh, part 1
unit = 1.0e-3;
FDTD = InitFDTD();
% Excitation begin
FDTD = SetGaussExcite(FDTD, 0.000000, 1200000000.000000);
% Excitation end
BC = {'PEC' 'PEC' 'PEC' 'PEC' 'PEC' 'PEC'};
FDTD = SetBoundaryCond(FDTD, BC);
physical_constants;
CSX = InitCSX();

run 'C:\Users\H364387\Documents\KiCAD_ANTENNAS\gps antenna\GPS Patch Antenna 1.m'

Sim_Path = '.';
Sim_CSX = 'csxcad.xml';

%write geometry into .xml file
WriteOpenEMS( [Sim_Path '/' Sim_CSX], FDTD, CSX );
%show geometry in AppCSXCAD
CSXGeomPlot( [Sim_Path '/' Sim_CSX] );
% include the line above to launch csxcad omitt it to avoid launching CSXCad
RunOpenEMS( Sim_Path, Sim_CSX );
