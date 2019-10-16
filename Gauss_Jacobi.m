function retval = Gauss_Jacobi (A, B)
  [m,n]=size(A);% matrix size
  for i=1:m
    diag(i) = A(i,i);
    rest(i,:)=[A(i,1:i-1) A(i,i+1:n)];%buji ni
    row_sum=sum(abs(rest(i,:)));
    if (abs(diag(i))<=row_sum)
      retval='Dominance condition is not satisfied';
      return;
    end
  end
  X=zeros(1,n);%X=[0 0 0]
  retval(1,:)=X;%print korbe 0 0 0
  for i = 2:20
    for j = 1:n
      Xrest = [X(1:j-1) X(j+1:n)]
      retval(i,j)=(B(j)-rest(j,:)*Xrest')/diag(j);
    end
    if abs(X(1)-retval(i,1))<0.0001
      retvat(i,:)=X;
      break;
    end
    X=retval(i,:);
  end
endfunction
