fid = fopen( 'test_1edited.csv', 'r' ); 
dist = textscan( fid, '%*d%*d%d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

fid = fopen( 'test_1edited.csv', 'r' ); 
ang = textscan( fid, '%*d%d%*d%*d', 'Delimiter',',', 'Headerlines',1 );
fclose( fid ); 

disp(dist);
disp(ang);

dist = cell2mat(dist);
ang = cell2mat(ang);
dist = double(dist);
ang = double(ang);

disp(dist);
disp(ang);

%[x,y] = pol2cart(ang,dist);
x = cos(ang*(pi/180));
x = dist.*x;
y = sin(ang*(pi/180));
y = dist.*y;

figure 
scatterplot([x,y]);


%polarplot(ang{1,1},dist{1,1})
%pax = gca;
%pax.ThetaZeroLocation = 'top';
%pax.RLim = [0 500];


