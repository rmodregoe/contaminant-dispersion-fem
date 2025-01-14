f = @(x,y) 0*x; %fucion 0

xi=p(1,:); %vector con las coordenadas x de los nodos
yi=p(2,:); %vector con las coordenadas y de los nodos
elem=t(1:3,:)'; %devuelve los indices de los nodos de cada triangulo


q=0.25; %m3/s
r=0.15;  %m
k = 0.1;
T=10;    %s
dt=0.1; %s
Nt=T/dt;
v1=@(y) y.*(y-5)./((2.5)^2); %m/s
v2=0;
n=0;
[R, M]=assema(p,t,1,1,0);

%hace integrales de phii*phij y integrales de gradiente de phiiphij
%devuelve las matrices de masa y rigidez

calcular_matrices_convecciontrabajo

A = M +0.5*k*dt*R+0.5*dt*Cx ;
 
fron_d = find(xi==0) ;%devuelve el numero de los nodos que están en la frontera
A0=A;

A0(fron_d,:)=0; %las filas que estan en frontera valgan 0
A0(:,fron_d)=0;

for i=fron_d
   
    A0(i,i) = 1;
   
end

%construccion de la funcion g


ind=find((xi>=9.85 & xi<=10.15 & yi==5));

gi=0*xi';

gi(ind)=q/(pi*(r^2));

uhn=0*xi'; %valor incial
% trisurf(elem,xi,yi,uhn)
% view(2)
% shading interp
% colorbar
% caxis([0 0.1])
% title(n*dt)
% pause
%calcular_lado_derecho
for n=1:Nt
    vect_b =(M-0.5*k*dt*R-0.5*dt*Cx)*uhn+k*dt*M*gi; %Ponía M*uhn-A*gi;

    vect_b(fron_d)=0;
    
    uhn = A0\vect_b; %es todos los nodos del elemento excepto los dos extremos
    
    trisurf(elem,xi,yi,uhn)
    view(2)
    shading interp
    colorbar
    caxis([0 0.1])
    title(n*dt)
    pause
end