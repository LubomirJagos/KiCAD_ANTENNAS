%%% Board mesh, part 1
unit = 1.0e-3;
FDTD = InitFDTD();
% Excitation begin
FDTD = SetGaussExcite(FDTD, 0.000000, 1000000000.000000);
% Excitation end
BC = {'PEC' 'PEC' 'PEC' 'PEC' 'PEC' 'PEC'};
FDTD = SetBoundaryCond(FDTD, BC);
physical_constants;
CSX = InitCSX();

run /media/sf_Downloads/_antennas_LuboJ_designs/gps antenna/GPS Patch Antenna 1.m

Sim_Path = '.';
Sim_CSX = 'csxcad.xml';
WriteOpenEMS( [Sim_Path '/' Sim_CSX], FDTD, CSX );
