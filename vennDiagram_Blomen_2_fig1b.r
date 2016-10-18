library(VennDiagram)
library(RColorBrewer)
setwd("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/cellEG/svg")
svg("vennDiagram_Blomen_2.svg",height=3,width=3)
colVec=brewer.pal(3, "Set2")
colVec=colVec[1:2]
#Manually define colVec2:
draw.pairwise.venn(2054,2181,1734,category=c("KBM7:2054","HAP1:2181"),col=colVec,cat.col=colVec,cat.cex=rep(1.2,2),cat.pos = c(-158,155), cat.dist =
rep(0.03, 2),fill=colVec,cex=0,fontfamily = "sans",cat.fontfamily="sans",margin=0.11)
dev.off()
