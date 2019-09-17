
function retval = Newton_Rapshan_method (f,fd,a,b)
  fa = f(a);
  fb = f(b);
  if((fa*fb)>0)
    retval='Real Root does not exits';
    return;
  end
  
  %retval(1,:)=[a,b,0,0];
  
  x0 = (a+b)/2;
  x2=0;
  for i=2:10
    x1 = (x0 - (f(x0)/fd(x0)));
    %retval(i,:)=[x1];
    %fprintf('%.30f\n',x1);
    if(x1==x2)
      fprintf('%.30f',x1);
      return;
    end 
    x2 = x1;
    x0 = x1;
  end
  %fprintf('%d\n\n',x0);
  


endfunction
