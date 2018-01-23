function createDXF(input,nameOfFile)
FID = dxf_open([nameOfFile '.dxf']);
for j=1:length(input)
  x = input(j,1);
  y = input(j,2);
  d = input(j,3);
  dxf_polyline(FID,[x-d/2; x+d/2; x+d/2; x-d/2; x-d/2],[y-d/2; y-d/2; y+d/2; y+d/2; y-d/2],[0; 0; 0; 0; 0]);
end
dxf_close(FID);
end

