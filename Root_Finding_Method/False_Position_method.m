
function retval = False_Position_method (f,a,b)
  fa = f(a);
  fb = f(b);
  if((fa*fb)>=0)
    retval='Real Root does not exits';
    return;
   end
   
   retval(1,:)=[a,b,0,0];
   xe = 0;
   for i=2:20
     x = ((a*f(b)-b*f(a))/(f(b)-f(a)));
     fx = f(x);
     retval(i,:)=[a,b,x,fx];
     xfinal = x - xe;
     if(xfinal<0.00001)
      fprintf('%.4f\n',x);
      return;
    end
     xe = x;
     
     if((fx*f(a))<0)
      b=x;
     elseif ((fx*f(b))<0)
      a=x;
     else
      return;
     end
   end
   

endfunction
