% test script

clear
clc

% test 1
time = '19-May-2000';
lat = 30;
long = 100;
alt = 0;
true_B = [34944.6, -418.1, 35490.9];

[BX, BY, BZ] = igrf(time, lat, long, alt);

fitted_B = [BX, BY, BZ];

abs(true_B-fitted_B)

% test 2
time = '29-Feb-2012';
lat = 30;
long = -100;
alt = 100;
true_B = [23412.4, 2283.9, 38600.0];

[BX, BY, BZ] = igrf(time, lat, long, alt);

fitted_B = [BX, BY, BZ];

abs(true_B-fitted_B)