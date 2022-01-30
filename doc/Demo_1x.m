clear all
close all
clc


%% prepare data

x = -1:0.2:1;
y = -1:0.2:1;

[X,Y] = meshgrid(x,y);
X=X';
Y=Y';

theta = atan2d(Y,X);

u =  sind( theta );
v = -cosd( theta );


%% Example 1.1 A simple case

figure
FUN_quiver_by_plotV2( x, y, u, v, 0)

title('Example 1.1');

FUN_easy_export_fig('Example_1.1.jpg','-m2');


%% Example 1.2 set scale

vel_scale1 = 0.3;
vel_scale2 = 0.15;

figure
hold on
xlim([-1 1]*1.5)
ylim([-1 1]*1.5)
hd1 = FUN_quiver_by_plotV2( x, y, u, v, vel_scale1, 'color','m' );
hd2 = FUN_quiver_by_plotV2( x, y, u, v, vel_scale2, 'color','k' );

lid = legend( [hd1, hd2], 'scale=0.3', 'scale=0.15');
set(lid,'Interpreter','none');

title('Example 1.2 "scale"');

FUN_easy_export_fig('Example_1.2.jpg','-m2');


%% Example 1.3
head_length1 = 0.6;
head_length2 = 0.3;

figure
hold on
xlim([-1 1]*1.5)
ylim([-1 1]*1.5)
hd1 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'head_length', head_length1, 'color','m' );
hd2 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'head_length', head_length2, 'color','k' );

lid = legend( [hd1, hd2], 'head_length=0.6', 'head_length=0.3');
set(lid,'Interpreter','none');

title('Example 1.3: "head_length"','Interpreter','none');

FUN_easy_export_fig('Example_1.3.jpg','-m2');

%% Example 1.4
head_angle1 = 20;
head_angle2 = 40;

figure
hold on
xlim([-1 1]*1.5)
ylim([-1 1]*1.5)
hd1 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'head_angle', head_angle1, 'color','m' );
hd2 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'head_angle', head_angle2, 'color','k' );

lid = legend( [hd1, hd2], 'head_angle=20', 'head_angle=40');
set(lid,'Interpreter','none');

title('Example 1.4: "head_angle"','Interpreter','none');

FUN_easy_export_fig('Example_1.4.jpg','-m2');

%% Example 1.5

figure
hold on
xlim([-1 1]*1.5)
ylim([-1 1]*1.5)
hd1 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'is_plot_head', false );


title('Example 1.5: "is_plot_head=false"','Interpreter','none');

FUN_easy_export_fig('Example_1.5.jpg','-m2');


%% Example 1.6

figure
hold on
xlim([-1 1]*1.5)
ylim([-1 1]*1.5)
hd1 = FUN_quiver_by_plotV2( x, y, u, v, 0, 'is_plot_body', false, 'head_length', 0.4, 'color','k' );


title({'Example 1.6: "is_plot_body=false"','In this case, length of the arrow head must be','provided in parameter "head_length"'},'Interpreter','none');

FUN_easy_export_fig('Example_1.6.jpg','-m2');




%%

% %% A simple case
% 
% x = -2:0.2:2;
%