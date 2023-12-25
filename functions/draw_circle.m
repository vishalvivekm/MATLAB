% function to plot circle of input radius
function circ = circlearea(r)
   theta = 0:pi/100:2*pi;
   x = r*cos(theta);
   y = r*sin(theta);

   figure
   plot(x,y)
   % diamerer
   d = 2*r;
   disp(['diameter:' ,num2str(d)])

end
% to run in command prompt enter circlearea(<insert-any-radius-value>)

