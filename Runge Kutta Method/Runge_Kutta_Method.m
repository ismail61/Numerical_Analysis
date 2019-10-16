function retval = Runge_Kutta_Method (f,xrange,y0,h)
  x=xrange(1):h:xrange(2);
  y(1) = y0;
  for i=2:length(x)
    k1(i) = h*f(x(i-1),y(i-1));
    k2(i) = h*f(x(i-1)+h,y(i-1)+k1(i));
    y(i) = y(i-1) + (k1(i)+k2(i))/2;
  end
  retval=[x' y']
endfunction
