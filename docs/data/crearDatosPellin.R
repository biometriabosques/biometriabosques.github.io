#leer datos
df<-read.csv("parcela03.csv")
df$dap
df$frec<-10000/250
nha<-sum(df$frec)
head(df)
hist(df$dap)
require(lattice)
histogram(~dap|Especie, data=df)
df$g<-df$dap^2*pi/40000
df$garb.ha<-df$g*df$frec
gha<-sum(df$garb.ha)
sqrt((gha/nha)*(40000/pi))


##esto use para modificar la lista de ejemplos
df<-read.csv("parcela03.csv")
head(df)
df<-df[,c(1,2,3)]
#df$dap<-round(df$dap,1)
write.csv(df,file="parcela03.csv",row.names = F)
# 
# df<-read.csv("parcela02.csv")
# df$dap<-round(df$dap,1)
# write.csv(df,file="parcela02.csv",row.names = F)
# 
# df<-read.csv("parcela01.csv")
# df$dap<-round(df$dap,1)
# write.csv(df,file="parcela01.csv",row.names = F)


##esto use para modificar el original parcela03.csv
# df0<-read.csv("parcela03.csv")
# nrow(df0)
# df<-df0[sample(1:nrow(df0),38),]
# nrow(df)
# df$frec<-10000/250
# sum(df$frec)
# head(df)
# hist(df$dap)
# require(lattice)
# histogram(~dap|Especie, data=df)
# df$g<-df$dap^2*pi/40000
# df$garb.ha<-df$g*df$frec
# sum(df$garb.ha)
# write.csv(df,file="parcela03.csv",row.names = F)
