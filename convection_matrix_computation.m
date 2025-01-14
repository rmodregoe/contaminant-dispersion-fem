 Cx = sparse (length(xi), length(xi));
 Cy=Cx;
 
 for i=1:length(xi)
     phi_i=0*xi';        %
     phi_i(i) =1;      % indentificamos un vector que vaole lo que valdróa la función en esos puntos
     [phi_i_x phi_i_y] = pdecgrad(p,t,'1',phi_i);  %función que calcula gradientes
     [R M b]=assema(p,t,1,1,phi_i_x);
     Cx(:,i)=b;
     [R M b]=assema(p,t,1,1,phi_i_y);
     Cy(:,i)=b;
 end