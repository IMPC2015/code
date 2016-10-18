library(VennDiagram)
library(RColorBrewer)
setwd("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/cellEG/svg")
svg("vennDiagram_Hart_5.svg",height=3,width=3)
colVec=brewer.pal(5, "Set2")
#Manually define colVec2:
draw.quintuple.venn(2073,1696,2197,2039,1894,1226,1308,1274,1395,1114,1065,1142,1270,1302,1249,998,967,1063,1053,1139,1104,917,975,939,1047,869,932,904,974,853,829,category=c("HCT116:2073","HeLa:1696","GBM:2197","RPE1:2039","DLD1:1894"),col=colVec,cat.col=colVec,cat.cex=rep(1.2,5),cat.pos = c(30, 10, 133.5, 145, 10),cat.dist =
rep(0.2, 5),fill=colVec,cex=0,fontfamily = "sans",cat.fontfamily="sans",rotation.degree=-5,margin=0.1)
dev.off()
