library(VennDiagram)
library(RColorBrewer)
setwd("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/cellEG/svg")
svg("vennDiagram_Wang_4.svg",height=3,width=3)
colVec=brewer.pal(4, "Set2")
#Manually define colVec2:
colVec2=colVec[c(1,3,4,2)]
draw.quad.venn(1878,1660,1630,1464,1197,1268,1136,1127,1032,1153,1015,935,1003,939,870,category=c("KBM7:1878","K562:1660","Jiyoye:1630","Raji:1464"),col=colVec2,cat.col=colVec,cat.cex=rep(1.2,4),cat.pos = c(-13, 15, 0, -2), fill=colVec,cex=0,fontfamily = "sans",cat.fontfamily="sans",margin=0.1)
dev.off()
