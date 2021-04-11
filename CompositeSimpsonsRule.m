% Algorithm 4.1 - Composite Simpson's Rule, [5]
format long
f=@(x) sqrt(4*sin(x)^2+cos(x)^2); % Function to integrate
a=0; % Lower limit
b=2*pi;  % Upper limit
n=1208; % Subintervals, must be an even positive integer.

h=(b-a)/n;
XI0=f(a)+f(b);
XI1=0;
XI2=0;

for i=1:n-1
    X=a+i*h;
    if mod(i,2)==0
        XI2=XI2+f(X);
    else
        XI1=XI1+f(X);
    end
end

XI=h*(XI0+2*XI2+4*XI1)/3;
solution = XI


%Here is some code to find the max value of a function, within an interval.
format rat
x1 = 0;
x2 = 2*pi;
f= @(x) abs((336*sin(x)^8+816*cos(x)^2*sin(x)^6+936*cos(x)^4*sin(x)^4 ...
+336*cos(x)^6*sin(x)^2-39*cos(x)^8)/(4*sin(x)^2+cos(x)^2)^(7/2)); %This is the function in which we want to find the max
[x,max] = fminbnd(@(x) -f(x),x1,x2); 
-max % Here is the max of the function
x % Here is the location at which the max occurs


