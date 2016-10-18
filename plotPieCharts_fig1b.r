#Piechart: Hart core
library(ggplot2)
setwd("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/cellEG/svg")
fracDat=data.frame(frac=rep(NA,3),geneSet=rep("",3))
fracDat$frac=c(564/1580,49/1580,(1580-564-49)/1580)
fracDat$geneSet=c("EG: 564 (35.7%)","NEG: 49 (3.1%)","Unknown: 967 (61.2%)")
fracDat$geneSet=factor(fracDat$geneSet,c("EG: 564 (35.7%)","NEG: 49 (3.1%)","Unknown: 967 (61.2%)"))

svg("piechart_EGNEGfraction_Hart_core_v2.svg",height=3,width=3)
ggplot(fracDat,aes(x="",y=frac,fill=geneSet)) +
	scale_fill_discrete(name="Gene set") +
	geom_bar(stat="identity") +
	coord_polar("y",start=0) +
	theme_minimal() +  theme(axis.text.x=element_blank(),axis.title.y=element_blank(),axis.ticks = element_blank(),legend.title = element_blank(),legend.position="bottom",legend.direction="vertical",legend.text=element_text(size=15)) +
	ylab("")
dev.off()

#Piechart: Wang core
fracDat=data.frame(frac=rep(NA,3),geneSet=rep("",3))
fracDat$frac=c(614/1739,47/1739,(1739-614-47)/1739)
fracDat$geneSet=c("EG: 614 (35.3%)","NEG: 47 (2.7%)","Unknown: 1078 (62.0%)")
fracDat$geneSet=factor(fracDat$geneSet,c("EG: 614 (35.3%)","NEG: 47 (2.7%)","Unknown: 1078 (62.0%)"))

svg("piechart_EGNEGfraction_Wang_core_v2.svg",height=3,width=3)
ggplot(fracDat,aes(x="",y=frac,fill=geneSet)) +
	scale_fill_discrete(name="Gene set") +
	geom_bar(stat="identity") +
	coord_polar("y",start=0) +
	theme_minimal() +  theme(axis.text.x=element_blank(),axis.title.y=element_blank(),axis.ticks = element_blank(),legend.title = element_blank(),legend.position="bottom",legend.direction="vertical",legend.text=element_text(size=15)) +
	ylab("")
dev.off()


#Piechart: Blomen core
fracDat=data.frame(frac=rep(NA,3),geneSet=rep("",3))
fracDat$frac=c(602/1734,53/1734,(1734-602-53)/1734)
fracDat$geneSet=c("EG: 602 (34.7%)","NEG: 53 (3.1%)","Unknown: 1079 (62.2%)")
fracDat$geneSet=factor(fracDat$geneSet,c("EG: 602 (34.7%)","NEG: 53 (3.1%)","Unknown: 1079 (62.2%)"))

svg("piechart_EGNEGfraction_Blomen_core_v2.svg",height=3,width=3)
ggplot(fracDat,aes(x="",y=frac,fill=geneSet)) +
	scale_fill_discrete(name="Gene set") +
	geom_bar(stat="identity") +
	coord_polar("y",start=0) +
	theme_minimal() +  theme(axis.text.x=element_blank(),axis.title.y=element_blank(),axis.ticks = element_blank(),legend.title = element_blank(),legend.position="bottom",legend.direction="vertical",legend.text=element_text(size=15)) +
	ylab("")
dev.off()
