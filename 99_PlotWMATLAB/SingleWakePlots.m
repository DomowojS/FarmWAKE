close all
%% Velocity deficit
%X-Y Direction
figure
plot(YCoordinates(1,:,1), c_0_vec(1)-Delta_U(1,:,1), LineStyle="none",Marker=".")
xlabel("Y/D")
ylabel("DELTA u/ u_a")
title("Velocity deficit for X=7D")

%% Velocity deficit
%X-Z Direction
figure
plot(c_0_vec(1)-Delta_U(1,:,1), ZCoordinates(1,:,1).*D./H, LineStyle="none",Marker=".")
xlabel("Z/D")
ylabel("DELTA u/ u_a")
title("Velocity deficit for X=7D-- XZ")


%Y-Z Direction
figure
plot3(YCoordinates(1,:,1), ZCoordinates(1,:,1), c_0_vec(1)-Delta_U(1,:,1), LineStyle="none",Marker=".")
xlabel("Y/D")
ylabel("Z/D")
zlabel("DELTA u/ u_a")
title("Velocity deficit for X=7D in Y and Z direction")

%Contour Y-Z Direction
%Reshape values
[Y,Z]=meshgrid(linspace(-3,3,1000), linspace(-2,6,1000));
% Interpolate DATA onto the grid using linear interpolation
DATA_grid = griddata(YCoordinates(1,:,1), ZCoordinates(1,:,1), c_0_vec(1)-Delta_U(1,:,1), Y, Z, 'cubic');
% DATA_grid(isnan(DATA_grid))=0;

figure
surf(Y, Z, DATA_grid, EdgeColor="none")
colormap inferno;
xlabel("Y/D")
ylabel("Z/D")
zlabel("DELTA u/ u_a")
title("Velocity deficit for X=7D in Y and Z direction")
colorbar

%% Turbulence
%X-Y Direction
figure
plot(YCoordinates(1,:,1), Delta_TI(1,:,1)/10, LineStyle="none",Marker=".")
xlabel("Y/D")
ylabel("DELTA u/ u_a")
title("Velocity deficit for X=7D")

%Y-Z Direction
figure
plot3(YCoordinates(1,:,1), ZCoordinates(1,:,1), Delta_TI(1,:,1)/10, LineStyle="none",Marker=".")
xlabel("Y/D")
ylabel("Z/D")
zlabel("DELTA u/ u_a")
title("Velocity deficit for X=7D in Y and Z direction")

%Contour Y-Z Direction
%Reshape values
[Y,Z]=meshgrid(linspace(-3,3,1000), linspace(-2,6,1000));
% Interpolate DATA onto the grid using linear interpolation
DATA_grid = griddata(YCoordinates(1,:,1), ZCoordinates(1,:,1), Delta_TI(1,:,1)/10, Y, Z, 'cubic');
% DATA_grid(isnan(DATA_grid))=0;

figure
surf(Y, Z, (0.07-DATA_grid)/0.07, EdgeColor="none")
colormap inferno;
xlabel("Y/D")
ylabel("Z/D")
zlabel("DELTA u/ u_a")
title("Rotor-added turbulence for X=7D in Y and Z direction")
colorbar

x=1;