#Runge Kutta para o novo modelo do Tales
library(deSolve)
require(ggplot2)

Modelo<-function(time,x,parms)
{
  #x[1]=X,x[2]=G,x[3]=N,x[4]=P,x[5]=S,x[6]=L
  with(as.list(parms),
       {
         M=Mumax*x[2]*x[3]*x[4]/((Kg+x[2])*(Kn+x[3])*(Kp+x[4]))
         dX=M*x[1]-md*x[1]^2
         dG=-(1/Yg)*dX-mg*x[1]
         dN=-(1/Yn)*dX-mn*x[1]
         dP=-(1/Yp)*dX-mp*x[1]
         dS=alphas*dX+betas*x[1]
         dL=alphal*dX+betal*x[1]
         return(list(c(dX,dG,dN,dP,dS,dL)))
       })
}

#Parâmetros
{
  Mumax=0.0821
  Kg=0.0
  Kp=0.001
  Kn=0.00873
  alphas=0.311
  betas=0.00042
  alphal=0.0363
  betal=0.000339
  Yg=85.5
  mg=0.172
  Yn=4.36
  mn=0.0132
  Yp=2.47
  mp=0.00373
  md=0.103
}

Param=c(Mumax,Kg,Kp,Kn,alphas,betas,alphal,betal,Yg,Yn,Yp,mg,mn,mp,md)

tempo=seq(0,180,0.01)

ci=c(0.24,0.1,0.019,0.003,0.0,0.0)

Solution_modelo=as.data.frame(ode(times=tempo,y=ci,Modelo, parms=Param,method='rk4'))

names(Solution_modelo)=c('Tempo','Algas','Glicose','Nitrogênio','Fósforo','Carboidratos','Lipídios')

M=Mumax*Solution_modelo$Glicose*Solution_modelo$Nitrogênio*Solution_modelo$Fósforo/((Kg+Solution_modelo$Glicose)*(Kn+Solution_modelo$Nitrogênio)*(Kp+Solution_modelo$Fósforo))

#graficos
p1 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Algas)) +
  geom_point(col = 3, size = 1) +  labs(y = "X(t) (g/L)", x = "t (h)", title='Concentração Bacteriana') 
p1;

p2 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Fósforo)) +
  geom_point(col = 6, size = 1) +  labs(y = "P(t) (g/L)", x = "t (h)", title ='Consumo de Fósforo') 
p2;

p3 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Glicose)) +
  geom_point(col = 2, size = 1) +  labs(y = "`G(t) (g/L)", x = "t (h)", title = "Consumo de Glicose") 
p3;

p4 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Nitrogênio)) +
  geom_point(col = 1, size = 1) +  labs(y = "N(t) (g/L)", x = "t (h)", title = "Consumo de Nitrogênio") 
p4;

#p5 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Carboidratos)) +
 # geom_point(col = 7, size = 1) +  labs(y = "S(t) (g/L)", x = "t (h)", title ="Produção de Carboidratos") 
#p5;

#p6 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo,y=Solution_modelo$Lipídios)) +
 # geom_point(col = 8, size = 1) +  labs(y = "L(t) (g/L)", x = "t (h)", title = "Produção de Lipídios") 
#p6;

p7 <- ggplot(Solution_modelo, aes(x=Solution_modelo$Tempo, y=M)) +
  geom_point(col = 4, size = 1) +  labs(y = "Mu(t)(1/h)", x = "t (h)", title = "Velocidade de Crescimento Bacteriana") 
p7;


#######################################################################################################################################
x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Algas, ylab="X(t) (g/L)", xlab="t (h)",ylim=c(0,2.5), main= "Concentração Bacteriana", col=3, lwd=3, lty=1, type="l")
x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Fósforo, ylab="P(t) (g/L)", xlab="t (h)", ylim=c(0,0.06), main= "Consumo de Fósforo", col=6, lwd=3, lty=1, type="l")
x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Glicose, ylab="G(t) (g/L)", xlab="t (h)", main= "Consumo de Glicose", col=2, lwd=3, lty=1, type="l")
x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Nitrogênio, ylab="N(t) (g/L)", xlab="t (h)", main= "Consumo de Nitrogênio", col=1, lwd=3, lty=1, type="l")
#x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Carboidratos, ylab="C(t) (g/L)", xlab="t (h)", main= "Produção de Carboidratos", col=7, lwd=3, lty=1, type="l")
#x11();plot(x=Solution_modelo$Tempo,y=Solution_modelo$Lipídios, ylab="L(t) (g/L)", xlab="t (h)",ylim=c(0,0.20), main= "Produção de Lipídios", col=8, lwd=3, lty=1, type="l")

#Velocidade de cresciemtno "Mu"

x11();plot(x=Solution_modelo$Tempo, y=M, ylab="Mu(t)(1/h)", xlab="t (h)",ylim=c(0,0.07), main= "Velocidade de Crescimento Bacteriana", col=4, lwd=3, lty=1, type="l")
