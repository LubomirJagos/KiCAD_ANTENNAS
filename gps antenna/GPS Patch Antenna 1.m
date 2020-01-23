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
mesh.y=[27.5600 26.7600 0.0000 0.7871 1.5741 2.3612 3.1482 3.9353 4.7223 5.5094 6.2965 7.0835 7.8706 8.6576 9.4447 10.2318 11.0188 11.8059 12.5929 13.3800 14.1670 14.9541 15.7412 16.5282 17.3153 18.1023 18.8894 19.6764 20.4635 21.2506 22.0376 22.8247 23.6117 24.3988 25.1859 25.9729 28.0600 28.0600 28.5539 29.0478 29.5417 30.0357 30.5296 31.0235 31.5174 32.0113 32.5052 32.9992 33.4931 33.9870 34.4809 34.9748 35.4687 35.9626 36.4566 36.9505 37.4444 37.9383 38.4322 38.9261 39.4200 39.9140 40.4079 40.9018 41.3957 41.8896 42.3835 42.8775 43.3714 43.8653 44.3592 44.8531 45.3470 45.8409 46.3349 46.8288 47.3227 47.8166 48.3105 48.8044 49.2983 49.7923 50.2862 50.7801 51.2740 51.7679 52.2618 52.7557 53.2497 53.7436 54.2375 54.7314 55.2253 55.7192 56.2132 56.7071 57.2010 57.6949 58.1888 58.6827 59.1767 59.6767 59.6767 60.1687 60.6608 61.1529 61.6449 62.1370 62.6290 63.1211 63.6132 64.1052 64.5973 65.0894 65.5814 66.0735 66.5655 67.0576 67.5497 68.0417 68.5338 69.0259 69.5179 70.0100 70.5021 70.9941 71.4862 71.9782 72.4703 72.9624 73.4544 73.9465 74.4386 74.9306 75.4227 75.9147 76.4068 76.8989 77.3909 77.8830 78.3751 78.8671 79.3592 79.8512 80.3433 80.8354 81.3274 81.8195 82.3116 82.8036 83.2957 83.7878 84.2798 84.7719 85.2639 85.7560 86.2481 86.7401 87.2322 87.7243 88.2163 88.7084 89.2004 89.6925 90.1846 90.6767 91.1767 91.1767 91.6674 92.1581 92.6489 93.1396 93.6304 94.1211 94.6118 95.1026 95.5933 96.0841 96.5748 97.0655 97.5563 98.0470 98.5378 99.0285 99.5192 100.0100 100.5007 100.9915 101.4822 101.9729 102.4637 102.9544 103.4452 103.9359 104.4266 104.9174 105.4081 105.8989 106.3896 106.8803 107.3711 107.8618 108.3526 108.8433 109.3340 109.8248 110.3155 110.8063 111.2970 111.7877 112.2785 112.7692 113.2600 113.7507 114.2414 114.7322 115.2229 115.7137 116.2044 116.6951 117.1859 117.6767 117.8433 118.1767 118.3433 118.3433 118.7904 119.2375 119.6846 120.1317 120.5787 121.0258 121.4729 121.9200 122.8433 123.3433 123.1000];
mesh.x=[27.3900 26.5900 0.0000 0.7821 1.5641 2.3462 3.1282 3.9103 4.6923 5.4744 6.2565 7.0385 7.8206 8.6026 9.3847 10.1668 10.9488 11.7309 12.5129 13.2950 14.0770 14.8591 15.6412 16.4232 17.2053 17.9873 18.7694 19.5514 20.3335 21.1156 21.8976 22.6797 23.4617 24.2438 25.0259 25.8079 27.8900 27.8900 28.3895 28.8889 29.3884 29.8878 30.3873 30.8868 31.3862 31.8857 32.3852 32.8846 33.3841 33.8835 34.3830 34.8825 35.3819 35.8814 36.3809 36.8803 37.3798 37.8792 38.3787 38.8782 39.3776 39.8771 40.3766 40.8760 41.3755 41.8749 42.3744 42.8739 43.3733 43.8728 44.3722 44.8717 45.3712 45.8706 46.3701 46.8696 47.3690 47.8685 48.3679 48.8674 49.3669 49.8663 50.3658 50.8653 51.3647 51.8642 52.3636 52.8631 53.3626 53.8620 54.3615 54.8609 55.3604 55.8599 56.3593 56.8588 57.3583 57.8577 58.3572 58.8567 59.3567 59.8567 59.8567 60.2244 60.5922 60.9600 61.5233 61.9733 62.4233 62.4233 62.9161 63.4089 63.9017 64.3944 64.8872 65.3800 65.8728 66.3655 66.8583 67.3511 67.8439 68.3367 68.8294 69.3222 69.8150 70.3078 70.8005 71.2933 71.7861 72.2789 72.7716 73.2644 73.7572 74.2500 74.7428 75.2355 75.7283 76.2211 76.7139 77.2066 77.6994 78.1922 78.6850 79.1778 79.6705 80.1633 80.6561 81.1489 81.6416 82.1344 82.6272 83.1200 83.6127 84.1055 84.5983 85.0911 85.5839 86.0766 86.5694 87.0622 87.5550 88.0477 88.5405 89.0333 89.5261 90.0188 90.5116 91.0044 91.4972 91.9900 91.9900 92.4900 93.2900 94.0756 94.8612 95.6468 96.4324 97.2179 98.0035 98.7891 99.5747 100.3603 101.1459 101.9315 102.7171 103.5026 104.2882 105.0738 105.8594 106.6450 107.4306 108.2162 109.0018 109.7873 110.5729 111.3585 112.1441 112.9297 113.7153 114.5009 115.2865 116.0721 116.8576 117.6432 118.4288 119.2144 120.0000];
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
poly1_xy(1, 1) = 59.6900; poly1_xy(2, 1) = -91.0100;
poly1_xy(1, 2) = 61.6900; poly1_xy(2, 2) = -91.0100;
poly1_xy(1, 3) = 61.6900; poly1_xy(2, 3) = -118.0100;
poly1_xy(1, 4) = 59.6900; poly1_xy(2, 4) = -118.0100;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly1_xy, 1);
poly2_xy(1, 1) = 62.0900; poly2_xy(2, 1) = -118.0100;
poly2_xy(1, 2) = 62.0900; poly2_xy(2, 2) = -123.0100;
poly2_xy(1, 3) = 59.1900; poly2_xy(2, 3) = -123.0100;
poly2_xy(1, 4) = 59.1900; poly2_xy(2, 4) = -118.0100;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly2_xy, 1);
poly3_xy(1, 1) = 60.4600; poly3_xy(2, 1) = -121.4200;
poly3_xy(1, 2) = 60.4600; poly3_xy(2, 2) = -122.4200;
poly3_xy(1, 3) = 61.4600; poly3_xy(2, 3) = -122.4200;
poly3_xy(1, 4) = 61.4600; poly3_xy(2, 4) = -121.4200;
CSX = AddPcbrndPoly(CSX, PCBRND, 1, poly3_xy, 1);
%%% Port(s) on terminals

point1(1, 1) = 60.9600; point1(2, 1) = -121.9200;
[start1, stop1] = CalcPcbrnd2PortV(PCBRND, point1, 1, 4);
[CSX, port{1}] = AddLumpedPort(CSX, 999, 1, 50.000000, start1, stop1, [0 0 -1], true);
