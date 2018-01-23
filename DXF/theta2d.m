function out = theta2d(input,filename,tolerance)

csvdata=csvread(filename); % read csv
theta=csvdata(:,1); % dummy vector with theta from csv
d=csvdata(:,2); % dummy vector with d from csv
int_step=1/10^tolerance; % define interpolation size
theta_int=theta(1):int_step:theta(end); % declare interpolation steps
d_int=interp1(theta,d,theta_int); % create interpolated d vector

input_theta=input(:,3);
output_d=zeros(1,length(input_theta));

for i=1:length(input_theta)
    for j=1:length(theta_int)
        if round(input_theta(i),tolerance)==round(theta_int(j),tolerance)
            output_d(i)=d_int(j);
        end
    end
end

input(:,3)=output_d;
out=input;

end