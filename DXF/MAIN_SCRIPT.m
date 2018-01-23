% Reflect Array DXF Creator
% format for input matrix: xi,yi,thetai
input=[ 0,1,0.3
0,2,0.2
0,3,0.6
1,2,0.25
];

% get new matrix with xi,yi,di from csv data
% last argument is tolerance of theta values, i.e. no. of decimals
input_t=theta2d(input,'testdata.csv',2);
% function to create DXF file
% createDXF(input matrix,name of file)
createDXF(input_t,'Reflectarray');