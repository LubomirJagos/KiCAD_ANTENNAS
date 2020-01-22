%%% User tunables

%% base_priority and offset: chassis for the board to sit in.
% base priority: if the board displaces the model of the chassis or the other way around.
base_priority=0;

% offset on the whole layout to locate it relative to the simulation origin
offset.x = 0.0000;
offset.y = 0.0000;
offset.z = 0;

% void is the material used for: fill holes, cutouts in substrate, etc
void.name = 'AIR';
void.epsilon = 1.000000;
void.mue = 1.000000;
% void.kappa = kappa;
% void.sigma = sigma;

% how many points should be used to describe the round end of traces.
kludge.segments = 10;


%%% Board mesh, part 2
z_bottom_copper=3.0000
mesh.y=[];
mesh.x=[];
mesh.z=[0.0000 0.2500 0.5000 0.7500 1.0000 1.2500 1.5000 1.7500 2.0000 2.2500 2.5000 2.7500 3.0000 -4.0000 -3.3333 -2.6667 -2.0000 -1.3333 -0.6667 3.0000 3.6667 4.3333 5.0000 5.6667 6.3333];
mesh.x = mesh.x .+ offset.x;
mesh.y = offset.y .- mesh.y;
mesh.z = z_bottom_copper .- mesh.z .+ offset.z;
CSX = DefineRectGrid(CSX, unit, mesh);

%%% Layer mapping
layers(1).number = 1;
layers(1).name = 'top_copper';
layers(1).clearn = 0;
layer_types(1).name = 'COPPER_1';
layer_types(1).subtype = 2;
layer_types(1).thickness = 0.0/1000;
layer_types(1).conductivity = 56*10^6;

layers(2).number = 2;
layers(2).name = 'grp_4';
layers(2).clearn = 0;
layer_types(2).name = 'SUBSTRATE_2';
layer_types(2).subtype = 3;
layer_types(2).thickness = 1.5;
layer_types(2).epsilon = 3.66;
layer_types(2).mue = 0;
layer_types(2).kappa = 0;
layer_types(2).sigma = 0;

layers(3).number = 3;
layers(3).name = 'grp_12';
layers(3).clearn = 0;
layer_types(3).name = 'SUBSTRATE_3';
layer_types(3).subtype = 3;
layer_types(3).thickness = 1.5;
layer_types(3).epsilon = 3.66;
layer_types(3).mue = 0;
layer_types(3).kappa = 0;
layer_types(3).sigma = 0;

layers(4).number = 4;
layers(4).name = 'bottom_copper';
layers(4).clearn = 0;
layer_types(4).name = 'COPPER_4';
layer_types(4).subtype = 2;
layer_types(4).thickness = 0.0/1000;
layer_types(4).conductivity = 56*10^6;


%%% Initialize pcb2csx
PCBRND = InitPCBRND(layers, layer_types, void, base_priority, offset, kludge);
CSX = InitPcbrndLayers(CSX, PCBRND);

%%% Board outline
outline_xy(1, 1) = 0; outline_xy(2, 1) = 0;
outline_xy(1, 2) = 120.0000; outline_xy(2, 2) = 0;
outline_xy(1, 3) = 120.0000; outline_xy(2, 3) = -123.1000;
outline_xy(1, 4) = 0; outline_xy(2, 4) = -123.1000;
CSX = AddPcbrndPoly(CSX, PCBRND, 2, outline_xy, 1);
CSX = AddPcbrndPoly(CSX, PCBRND, 3, outline_xy, 1);

%%% Copper objects
poly0_xy(1, 1) = 27.8900; poly0_xy(2, 1) = -59.5100;
poly0_xy(1, 2) = 27.9900; poly0_xy(2, 2) = -59.5100;
poly0_xy(1, 3) = 59.4400; poly0_xy(2, 3) = -28.0600;
poly0_xy(1, 4) = 91.9900; poly0_xy(2, 4) = -60.6100;
poly0_xy(1, 5) = 60.4900; poly0_xy(2, 5) = -92.1100;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly0_xy, 1);
poly1_xy(1, 1) = 62.0900; poly1_xy(2, 1) = -118.0100;
poly1_xy(1, 2) = 62.0900; poly1_xy(2, 2) = -123.0100;
poly1_xy(1, 3) = 59.1900; poly1_xy(2, 3) = -123.0100;
poly1_xy(1, 4) = 59.1900; poly1_xy(2, 4) = -118.0100;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly1_xy, 1);
poly2_xy(1, 1) = 59.6900; poly2_xy(2, 1) = -91.0100;
poly2_xy(1, 2) = 61.6900; poly2_xy(2, 2) = -91.0100;
poly2_xy(1, 3) = 61.6900; poly2_xy(2, 3) = -118.0100;
poly2_xy(1, 4) = 59.6900; poly2_xy(2, 4) = -118.0100;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly2_xy, 1);
%%% Port(s) on terminals
