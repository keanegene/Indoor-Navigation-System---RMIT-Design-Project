fid = fopen( 'test_1edited.csv', 'r' ); 
dist = textscan( fid, '%*d%*d%d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

fid = fopen( 'test_1edited.csv', 'r' ); 
ang = textscan( fid, '%*d%d%*d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

dist = cell2mat(dist);
ang = cell2mat(ang);
dist = double(dist);
ang = double(ang);

x = cos(ang*(pi/180));
x = dist.*x;
y = sin(ang*(pi/180));
y = dist.*y;

scatter(x,y,5,'filled');
ax = gca;
ax.Title.String = 'Lidar Scan of Room';
ax.XLim = [-500,500];
ax.YLim = [-500,500];
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.XGrid = 'on';
ax.YGrid = 'on';
ax.Box = 'on';




