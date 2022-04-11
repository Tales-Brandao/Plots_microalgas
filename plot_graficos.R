library(readxl)
library(stringr)
require(ggplot2)
require(ggpubr)

UFS <- read_excel("C:/Users/Tales/Downloads/UFS-1(1).xlsx")
View(UFS_1_1_)

#ASU
####################################################################
#selecao da localidade 
ASU <- grep("ASU", UFS$Localidade) 

UFS.ASU <- UFS[ASU,]

#View(UFS.ASU)

#selecao do primeiro reator de ASU
P1 <- grep("P1", UFS.ASU$Reator) 

UFS.P1 <- UFS[P1,]

View(UFS.P1)

#graficos P1
{
OD <- ggplot(UFS.P1, aes (y=UFS.P1$OD750, x=UFS.P1$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 1') 
NO3 <- ggplot(UFS.P1, aes (y=UFS.P1$`NO3 (mg/L)`,x=UFS.P1$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 1') 
P <- ggplot(UFS.P1, aes (y=UFS.P1$`P (mg/L)`, x=UFS.P1$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 1') 

X11();ggarrange(OD, NO3, P)
}

#segundo reator de ASU
P2 <- grep("P2", UFS.ASU$Reator) 

UFS.P2 <- UFS[P2,]

View(UFS.P2)

#graficos P2
{
OD2 <- ggplot(UFS.P2, aes (y=UFS.P2$OD750, x=UFS.P2$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 2') 
NO3_2 <- ggplot(UFS.P2, aes (y=UFS.P2$`NO3 (mg/L)`,x=UFS.P2$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 2') 
P2 <- ggplot(UFS.P2, aes (y=UFS.P2$`P (mg/L)`, x=UFS.P2$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 2') 

X11();ggarrange(OD2, NO3_2, P2)
}

#Terceiro reator de ASU
P3 <- grep("P3", UFS.ASU$Reator) 

UFS.P3 <- UFS[P3,]

View(UFS.P3)

#graficos P3
{
  OD3 <- ggplot(UFS.P3, aes (y=UFS.P3$OD750, x=UFS.P3$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 3') 
  NO3_3 <- ggplot(UFS.P3, aes (y=UFS.P3$`NO3 (mg/L)`,x=UFS.P3$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 3') 
  P3 <- ggplot(UFS.P3, aes (y=UFS.P3$`P (mg/L)`, x=UFS.P3$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 3') 
  
  X11();ggarrange(OD3, NO3_3, P3)
}

#quarto reator de ASU
P4 <- grep("P4", UFS.ASU$Reator) 

UFS.P4 <- UFS[P4,]

View(UFS.P4)

#graficos P4
{
  OD4 <- ggplot(UFS.P4, aes (y=UFS.P4$OD750, x=UFS.P4$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 4') 
  NO3_4 <- ggplot(UFS.P4, aes (y=UFS.P4$`NO3 (mg/L)`,x=UFS.P4$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 4') 
  P4 <- ggplot(UFS.P4, aes (y=UFS.P4$`P (mg/L)`, x=UFS.P4$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 4') 
  
  X11();ggarrange(OD4, NO3_4, P4)
}

#quinto reator de ASU
P5 <- grep("P5", UFS.ASU$Reator) 

UFS.P5 <- UFS[P5,]

View(UFS.P5)

#graficos P5
{
  OD5 <- ggplot(UFS.P5, aes (y=UFS.P5$OD750, x=UFS.P5$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 5') 
  NO3_5 <- ggplot(UFS.P5, aes (y=UFS.P5$`NO3 (mg/L)`,x=UFS.P5$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 5') 
  P5 <- ggplot(UFS.P5, aes (y=UFS.P5$`P (mg/L)`, x=UFS.P5$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 5') 
  
  X11();ggarrange(OD5, NO3_5, P5)
}

#sexto reator de ASU
P6 <- grep("P6", UFS.ASU$Reator) 

UFS.P6 <- UFS[P6,]

View(UFS.P6)

#graficos P6
{
  OD6 <- ggplot(UFS.P6, aes (y=UFS.P6$OD750, x=UFS.P6$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 6') 
  NO3_6 <- ggplot(UFS.P6, aes (y=UFS.P6$`NO3 (mg/L)`,x=UFS.P6$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 6') 
  P6 <- ggplot(UFS.P6, aes (y=UFS.P6$`P (mg/L)`, x=UFS.P6$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 6') 
  
  X11();ggarrange(OD6, NO3_6, P6)
}

#CELL
##################################################################################
#selecao da localidade 
CELL <- grep("CELL", UFS$Localidade) 

UFS.CELL <- UFS[CELL,]

View(UFS.CELL)

#selecao do primeiro reator de CELL
P1 <- grep("P1", UFS.CELL$Reator) 

UFS.P1 <- UFS.CELL[P1,]

View(UFS.P1)

#graficos P1
{
  OD <- ggplot(UFS.P1, aes (y=UFS.P1$OD750, x=UFS.P1$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 1') 
  NO3 <- ggplot(UFS.P1, aes (y=UFS.P1$`NO3 (mg/L)`,x=UFS.P1$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 1') 
  P <- ggplot(UFS.P1, aes (y=UFS.P1$`P (mg/L)`, x=UFS.P1$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 1') 
  
  X11();ggarrange(OD, NO3, P)
}

#segundo reator de CELL
P2 <- grep("P2", UFS.CELL$Reator) 

UFS.P2 <- UFS.CELL[P2,]

View(UFS.P2)

#graficos P2
{
  OD2 <- ggplot(UFS.P2, aes (y=UFS.P2$OD750, x=UFS.P2$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 2') 
  NO3_2 <- ggplot(UFS.P2, aes (y=UFS.P2$`NO3 (mg/L)`,x=UFS.P2$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 2') 
  P2 <- ggplot(UFS.P2, aes (y=UFS.P2$`P (mg/L)`, x=UFS.P2$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 2') 
  
  X11();ggarrange(OD2, NO3_2, P2)
}

#terceiro reator de CELL
P3 <- grep("P3", UFS.CELL$Reator) 

UFS.P3 <- UFS.CELL[P3,]

View(UFS.P3)

#graficos P3
{
  OD3 <- ggplot(UFS.P3, aes (y=UFS.P3$OD750, x=UFS.P3$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 3') 
  NO3_3 <- ggplot(UFS.P3, aes (y=UFS.P3$`NO3 (mg/L)`,x=UFS.P3$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 3') 
  P3 <- ggplot(UFS.P3, aes (y=UFS.P3$`P (mg/L)`, x=UFS.P3$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 3') 
  
  X11();ggarrange(OD3, NO3_3, P3)
}

#segundo reator de CELL
P4 <- grep("P4", UFS.CELL$Reator) 

UFS.P4 <- UFS.CELL[P4,]

View(UFS.P4)

#graficos P4
{
  OD4 <- ggplot(UFS.P4, aes (y=UFS.P4$OD750, x=UFS.P4$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 4') 
  NO3_4 <- ggplot(UFS.P4, aes (y=UFS.P4$`NO3 (mg/L)`,x=UFS.P4$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 4') 
  P4 <- ggplot(UFS.P4, aes (y=UFS.P4$`P (mg/L)`, x=UFS.P4$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 4') 
  
  X11();ggarrange(OD4, NO3_4, P4)
}

#segundo reator de CELL
P5 <- grep("P5", UFS.CELL$Reator) 

UFS.P5 <- UFS.CELL[P5,]

View(UFS.P5)

#graficos P5
{
  OD5 <- ggplot(UFS.P5, aes (y=UFS.P5$OD750, x=UFS.P5$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 5') 
  NO3_5 <- ggplot(UFS.P5, aes (y=UFS.P5$`NO3 (mg/L)`,x=UFS.P5$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 5') 
  P5 <- ggplot(UFS.P5, aes (y=UFS.P5$`P (mg/L)`, x=UFS.P5$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 5') 
  
  X11();ggarrange(OD5, NO3_5, P5)
}

#segundo reator de CELL
P6 <- grep("P6", UFS.CELL$Reator) 

UFS.P6 <- UFS.CELL[P6,]

View(UFS.P6)

#graficos P6
{
  OD6 <- ggplot(UFS.P6, aes (y=UFS.P6$OD750, x=UFS.P6$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 6') 
  NO3_6 <- ggplot(UFS.P6, aes (y=UFS.P6$`NO3 (mg/L)`,x=UFS.P6$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 6') 
  P6 <- ggplot(UFS.P6, aes (y=UFS.P6$`P (mg/L)`, x=UFS.P6$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 6') 
  
  X11();ggarrange(OD6, NO3_6, P6)
}

#CP
################################################################################
#selecao da localidade 
CP <- grep("CP", UFS$Localidade) 

UFS.CP <- UFS[CP,]

View(UFS.CP)

#selecao do primeiro reator de CP
P1 <- grep("P1", UFS.CP$Reator) 

UFS.P1 <- UFS.CP[P1,]

View(UFS.P1)

#graficos P1
{
  OD <- ggplot(UFS.P1, aes (y=UFS.P1$OD750, x=UFS.P1$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 1') 
  NO3 <- ggplot(UFS.P1, aes (y=UFS.P1$`NO3 (mg/L)`,x=UFS.P1$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 1') 
  P <- ggplot(UFS.P1, aes (y=UFS.P1$`P (mg/L)`, x=UFS.P1$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 1') 
  
  X11();ggarrange(OD, NO3, P)
}

#segundo reator de CP
P2 <- grep("P2", UFS.CP$Reator) 

UFS.P2 <- UFS.CP[P2,]

View(UFS.P2)

#graficos P2
{
  OD2 <- ggplot(UFS.P2, aes (y=UFS.P2$OD750, x=UFS.P2$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 2') 
  NO3_2 <- ggplot(UFS.P2, aes (y=UFS.P2$`NO3 (mg/L)`,x=UFS.P2$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 2') 
  P2 <- ggplot(UFS.P2, aes (y=UFS.P2$`P (mg/L)`, x=UFS.P2$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 2') 
  
  X11();ggarrange(OD2, NO3_2, P2)
}

#terceiro reator de CP
P3 <- grep("P3", UFS.CP$Reator) 

UFS.P3 <- UFS.CP[P3,]

View(UFS.P3)

#graficos P3
{
  OD3 <- ggplot(UFS.P3, aes (y=UFS.P3$OD750, x=UFS.P3$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 3') 
  NO3_3 <- ggplot(UFS.P3, aes (y=UFS.P3$`NO3 (mg/L)`,x=UFS.P3$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 3') 
  P3 <- ggplot(UFS.P3, aes (y=UFS.P3$`P (mg/L)`, x=UFS.P3$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 3') 
  
  X11();ggarrange(OD3, NO3_3, P3)
}

#segundo reator de CP
P4 <- grep("P4", UFS.CP$Reator) 

UFS.P4 <- UFS.CP[P4,]

View(UFS.P4)

#graficos P4
{
  OD4 <- ggplot(UFS.P4, aes (y=UFS.P4$OD750, x=UFS.P4$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 4') 
  NO3_4 <- ggplot(UFS.P4, aes (y=UFS.P4$`NO3 (mg/L)`,x=UFS.P4$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 4') 
  P4 <- ggplot(UFS.P4, aes (y=UFS.P4$`P (mg/L)`, x=UFS.P4$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 4') 
  
  X11();ggarrange(OD4, NO3_4, P4)
}

#segundo reator de CP
P5 <- grep("P5", UFS.CP$Reator) 

UFS.P5 <- UFS.CP[P5,]

View(UFS.P5)

#graficos P5
{
  OD5 <- ggplot(UFS.P5, aes (y=UFS.P5$OD750, x=UFS.P5$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 5') 
  NO3_5 <- ggplot(UFS.P5, aes (y=UFS.P5$`NO3 (mg/L)`,x=UFS.P5$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 5') 
  P5 <- ggplot(UFS.P5, aes (y=UFS.P5$`P (mg/L)`, x=UFS.P5$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 5') 
  
  X11();ggarrange(OD5, NO3_5, P5)
}

#segundo reator de CP
P6 <- grep("P6", UFS.CP$Reator) 

UFS.P6 <- UFS.CP[P6,]

View(UFS.P6)

#graficos P6
{
  OD6 <- ggplot(UFS.P6, aes (y=UFS.P6$OD750, x=UFS.P6$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 6') 
  NO3_6 <- ggplot(UFS.P6, aes (y=UFS.P6$`NO3 (mg/L)`,x=UFS.P6$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 6') 
  P6 <- ggplot(UFS.P6, aes (y=UFS.P6$`P (mg/L)`, x=UFS.P6$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 6') 
  
  X11();ggarrange(OD6, NO3_6, P6)
}

#GT
##################################################################################
#selecao da localidade 
GT <- grep("GT", UFS$Localidade) 

UFS.GT <- UFS[GT,]

View(UFS.GT)

#selecao do primeiro reator de GT
P1 <- grep("P1", UFS.GT$Reator) 

UFS.P1 <- UFS.GT[P1,]

View(UFS.P1)

#graficos P1
{
  OD <- ggplot(UFS.P1, aes (y=UFS.P1$OD750, x=UFS.P1$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 1') 
  NO3 <- ggplot(UFS.P1, aes (y=UFS.P1$`NO3 (mg/L)`,x=UFS.P1$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 1') 
  P <- ggplot(UFS.P1, aes (y=UFS.P1$`P (mg/L)`, x=UFS.P1$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 1') 
  
  X11();ggarrange(OD, NO3, P)
}

#segundo reator de GT
P2 <- grep("P2", UFS.GT$Reator) 

UFS.P2 <- UFS.GT[P2,]

View(UFS.P2)

#graficos P2
{
  OD2 <- ggplot(UFS.P2, aes (y=UFS.P2$OD750, x=UFS.P2$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 2') 
  NO3_2 <- ggplot(UFS.P2, aes (y=UFS.P2$`NO3 (mg/L)`,x=UFS.P2$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 2') 
  P2 <- ggplot(UFS.P2, aes (y=UFS.P2$`P (mg/L)`, x=UFS.P2$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 2') 
  
  X11();ggarrange(OD2, NO3_2, P2)
}

#terceiro reator de GT
P3 <- grep("P3", UFS.GT$Reator) 

UFS.P3 <- UFS.GT[P3,]

View(UFS.P3)

#graficos P3
{
  OD3 <- ggplot(UFS.P3, aes (y=UFS.P3$OD750, x=UFS.P3$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 3') 
  NO3_3 <- ggplot(UFS.P3, aes (y=UFS.P3$`NO3 (mg/L)`,x=UFS.P3$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 3') 
  P3 <- ggplot(UFS.P3, aes (y=UFS.P3$`P (mg/L)`, x=UFS.P3$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 3') 
  
  X11();ggarrange(OD3, NO3_3, P3)
}

#segundo reator de GT
P4 <- grep("P4", UFS.GT$Reator) 

UFS.P4 <- UFS.GT[P4,]

View(UFS.P4)

#graficos P4
{
  OD4 <- ggplot(UFS.P4, aes (y=UFS.P4$OD750, x=UFS.P4$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 4') 
  NO3_4 <- ggplot(UFS.P4, aes (y=UFS.P4$`NO3 (mg/L)`,x=UFS.P4$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 4') 
  P4 <- ggplot(UFS.P4, aes (y=UFS.P4$`P (mg/L)`, x=UFS.P4$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 4') 
  
  X11();ggarrange(OD4, NO3_4, P4)
}

#segundo reator de GT
P5 <- grep("P5", UFS.GT$Reator) 

UFS.P5 <- UFS.GT[P5,]

View(UFS.P5)

#graficos P5
{
  OD5 <- ggplot(UFS.P5, aes (y=UFS.P5$OD750, x=UFS.P5$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 5') 
  NO3_5 <- ggplot(UFS.P5, aes (y=UFS.P5$`NO3 (mg/L)`,x=UFS.P5$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 5') 
  P5 <- ggplot(UFS.P5, aes (y=UFS.P5$`P (mg/L)`, x=UFS.P5$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 5') 
  
  X11();ggarrange(OD5, NO3_5, P5)
}

#segundo reator de GT
P6 <- grep("P6", UFS.GT$Reator) 

UFS.P6 <- UFS.GT[P6,]

View(UFS.P6)

#graficos P6
{
  OD6 <- ggplot(UFS.P6, aes (y=UFS.P6$OD750, x=UFS.P6$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 6') 
  NO3_6 <- ggplot(UFS.P6, aes (y=UFS.P6$`NO3 (mg/L)`,x=UFS.P6$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 6') 
  P6 <- ggplot(UFS.P6, aes (y=UFS.P6$`P (mg/L)`, x=UFS.P6$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 6') 
  
  X11();ggarrange(OD6, NO3_6, P6)
}







#TRL
###################################################################################
#selecao da localidade 
TRL <- grep("TRL", UFS$Localidade) 

UFS.TRL <- UFS[TRL,]

View(UFS.TRL)

#selecao do primeiro reator de TRL
P1 <- grep("P1", UFS.TRL$Reator) 

UFS.P1 <- UFS.TRL[P1,]

View(UFS.P1)

#graficos P1
{
  OD <- ggplot(UFS.P1, aes (y=UFS.P1$OD750, x=UFS.P1$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 1') 
  NO3 <- ggplot(UFS.P1, aes (y=UFS.P1$`NO3 (mg/L)`,x=UFS.P1$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 1') 
  P <- ggplot(UFS.P1, aes (y=UFS.P1$`P (mg/L)`, x=UFS.P1$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 1') 
  
  X11();ggarrange(OD, NO3, P)
}

#segundo reator de TRL
P2 <- grep("P2", UFS.TRL$Reator) 

UFS.P2 <- UFS.TRL[P2,]

View(UFS.P2)

#graficos P2
{
  OD2 <- ggplot(UFS.P2, aes (y=UFS.P2$OD750, x=UFS.P2$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 2') 
  NO3_2 <- ggplot(UFS.P2, aes (y=UFS.P2$`NO3 (mg/L)`,x=UFS.P2$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 2') 
  P2 <- ggplot(UFS.P2, aes (y=UFS.P2$`P (mg/L)`, x=UFS.P2$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 2') 
  
  X11();ggarrange(OD2, NO3_2, P2)
}

#terceiro reator de TRL
P3 <- grep("P3", UFS.TRL$Reator) 

UFS.P3 <- UFS.TRL[P3,]

View(UFS.P3)

#graficos P3
{
  OD3 <- ggplot(UFS.P3, aes (y=UFS.P3$OD750, x=UFS.P3$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 3') 
  NO3_3 <- ggplot(UFS.P3, aes (y=UFS.P3$`NO3 (mg/L)`,x=UFS.P3$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 3') 
  P3 <- ggplot(UFS.P3, aes (y=UFS.P3$`P (mg/L)`, x=UFS.P3$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 3') 
  
  X11();ggarrange(OD3, NO3_3, P3)
}

#quartoo reator de TRL
P4 <- grep("P4", UFS.TRL$Reator) 

UFS.P4 <- UFS.TRL[P4,]

View(UFS.P4)

#graficos P4
{
  OD4 <- ggplot(UFS.P4, aes (y=UFS.P4$OD750, x=UFS.P4$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 4') 
  NO3_4 <- ggplot(UFS.P4, aes (y=UFS.P4$`NO3 (mg/L)`,x=UFS.P4$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 4') 
  P4 <- ggplot(UFS.P4, aes (y=UFS.P4$`P (mg/L)`, x=UFS.P4$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 4') 
  
  X11();ggarrange(OD4, NO3_4, P4)
}

#quinto reator de TRL
P5 <- grep("P5", UFS.TRL$Reator) 

UFS.P5 <- UFS.TRL[P5,]

View(UFS.P5)

#graficos P5
{
  OD5 <- ggplot(UFS.P5, aes (y=UFS.P5$OD750, x=UFS.P5$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 5') 
  NO3_5 <- ggplot(UFS.P5, aes (y=UFS.P5$`NO3 (mg/L)`,x=UFS.P5$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 5') 
  P5 <- ggplot(UFS.P5, aes (y=UFS.P5$`P (mg/L)`, x=UFS.P5$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 5') 
  
  X11();ggarrange(OD5, NO3_5, P5)
}

#sexto reator de TRL
P6 <- grep("P6", UFS.TRL$Reator) 

UFS.P6 <- UFS.TRL[P6,]

View(UFS.P6)

#graficos P6
{
  OD6 <- ggplot(UFS.P6, aes (y=UFS.P6$OD750, x=UFS.P6$`Duração (dias)` )) + geom_point(col = 3, size = 1) + labs(y = "X(t) (DO 750)", x = "t (dias)", title='Densidade Ótica Microalgal Reator 6') 
  NO3_6 <- ggplot(UFS.P6, aes (y=UFS.P6$`NO3 (mg/L)`,x=UFS.P6$`Duração (dias)`)) + geom_point(col = 1, size = 1) + labs(y = "NO3 (g/L)", x = "t (dias)", title='NO3 no Reator 6') 
  P6 <- ggplot(UFS.P6, aes (y=UFS.P6$`P (mg/L)`, x=UFS.P6$`Duração (dias)`)) + geom_point(col = 2, size = 1) + labs(y = "P (g/L)", x = "t (dias)", title='Fósforo no Reator 6') 
  
  X11();ggarrange(OD6, NO3_6, P6)
}

