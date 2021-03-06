# Series de Tiempo, Agosto de 2020
# Clase_1. Introduccion. Simulacion de procesos de ecuaciones de primer y segundo orden

#****************************************************************************************
#install.packages("ggplot2")
#install.packages("readxl")
#install.packages("dplyr")
#
library(ggplot2)
library(readxl)
library(dplyr)
#****************************************************************************************

# Ruta de trabajo:
getwd()

setwd("/Users/benjaminolivavazquez/Documents/Personal/Cursos_UNAM/SERIES_2021-I/Series-de-Tiempo-Fall2020/Clase_1")

getwd()

# Data Frame para colocar los datos:
# Definiremos la variable "Tiempo", la cual iniciara en 1 y terminara en 100
Diff_Eq <- data.frame(Tiempo = c(0:100))

# El proceso 1:
Diff_Eq$Process_1 <- 2*(1 - 0.9^Diff_Eq$Tiempo)/(1 - 0.9) + (0.9^Diff_Eq$Tiempo)*10 
# El proceso 2:
Diff_Eq$Process_2 <- 2*(1 - (-0.5)^Diff_Eq$Tiempo)/(1 + 0.5) + ((-0.5)^Diff_Eq$Tiempo)*10 

# GRAFICA 1
ggplot(data = Diff_Eq, 
       aes(x = Tiempo, y = Process_1)) + 
  geom_line(size = 0.5, color = "darkblue") +
  geom_point(size = 1.0, color = "darkblue") + 
  #theme_bw() + 
  theme(legend.position = "none") +
  theme(legend.title = element_blank()) +
  guides(col = guide_legend(nrow = 1, byrow = TRUE)) + 
  xlab("Tiempo") + 
  ylab("Zt") + 
  theme(plot.title = element_text(size = 11, face = "bold", hjust = 0)) + 
  theme(plot.subtitle = element_text(size = 10, hjust = 0)) + 
  theme(plot.caption = element_text(hjust = 0)) +
  theme(plot.margin = unit(c(1,1,1,1), "cm")) 
#
ggsave("G1_PROC_01.png", width = 20, height = 10, units = "cm")

# GRAFICA 2
ggplot(data = Diff_Eq, 
       aes(x = Tiempo, y = Process_2)) + 
  geom_line(size = 0.5, color = "red") +
  geom_point(size = 1.0, color = "red") + 
  #theme_bw() + 
  theme(legend.position = "none") +
  theme(legend.title = element_blank()) +
  guides(col = guide_legend(nrow = 1, byrow = TRUE)) + 
  xlab("Tiempo") + 
  ylab("Zt") + 
  theme(plot.title = element_text(size = 11, face = "bold", hjust = 0)) + 
  theme(plot.subtitle = element_text(size = 10, hjust = 0)) + 
  theme(plot.caption = element_text(hjust = 0)) +
  theme(plot.margin = unit(c(1,1,1,1), "cm")) 
#
ggsave("G1_PROC_02.png", width = 20, height = 10, units = "cm")

#

# El proceso 3:
Diff_Eq$Process_3 <- 10 - 450*(0.4)^Diff_Eq$Tiempo + 440*(0.5)^Diff_Eq$Tiempo 

# GRAFICA 3
ggplot(data = Diff_Eq, 
       aes(x = Tiempo, y = Process_3)) + 
  geom_line(size = 0.5, color = "darkgreen") +
  geom_point(size = 1.0, color = "darkgreen") + 
  #theme_bw() + 
  theme(legend.position = "none") +
  theme(legend.title = element_blank()) +
  guides(col = guide_legend(nrow = 1, byrow = TRUE)) + 
  xlab("Tiempo") + 
  ylab("Zt") + 
  theme(plot.title = element_text(size = 11, face = "bold", hjust = 0)) + 
  theme(plot.subtitle = element_text(size = 10, hjust = 0)) + 
  theme(plot.caption = element_text(hjust = 0)) +
  theme(plot.margin = unit(c(1,1,1,1), "cm")) 
#
ggsave("G1_PROC_03.png", width = 20, height = 10, units = "cm")

#
