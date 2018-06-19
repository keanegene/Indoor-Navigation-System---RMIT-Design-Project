file = 'room_walk_horseshoe.csv';
%file = 'stationary_lidar.csv';
%file = 'test_1.csv';

fid = fopen( file, 'r' ); 
range = textscan( fid, '%*d%*d%d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

fid = fopen( file, 'r' ); 
angle = textscan( fid, '%*d%d%*d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

range = cell2mat(range);
angle = cell2mat(angle);
range = double(range);
angle = double(angle);
angle = angle * (pi/180);

%x = cos(angle*(pi/180));
%x = range.*x;
%y = sin(angle*(pi/180));
%y = range.*y;

%scatter(x,y,5,'filled');
%ax = gca;
%ax.Title.String = 'Lidar Scan of Room';
%ax.XLim = [-500,500];
%ax.YLim = [-500,500];
%ax.XAxisLocation = 'origin';
%ax.YAxisLocation = 'origin';
%ax.XGrid = 'on';
%ax.YGrid = 'on';
%ax.Box = 'on';

%% ROBOTICS TOOLBOX
scans = lidarScan(range,angle);
plot(scans);


%map = robotics.OccupancyGrid(15, 15, 20);
%map.GridLocationInWorld = [-7.5 -7.5];

%numScans = numel(laserMsg);
%initialPose = [0 0 0];
%poseList = zeros(numScans,3);
%poseList(1,:) = initialPose;
%transform = initialPose;

