library(ggplot2)

#Figure 5. Barplot:proportionOfHGMD
fracDat=data.frame(frac=rep(NA,3),geneSet=rep("",3))
fracDat$frac=c(1235/3229,1167/4757,3302/19568)
fracDat$geneSet=c("EG\n1235/3229","NEG\n1167/4757","All\n3302/19568")
fracDat$geneSet=factor(fracDat$geneSet,levels=c("EG\n1235/3229","NEG\n1167/4757","All\n3302/19568"))

png("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/geneList/IMPC_paper_freeze/freeze_102315/figure5a_proportionOfHGMD.png",height=3,width=6,units='in',res=500)
ggplot(fracDat,aes(x=geneSet,y=frac,fill=geneSet)) +
	scale_fill_discrete(guide = FALSE) +
	geom_bar(stat="identity") +
	coord_flip() +
	theme_bw() + xlab("Gene set") + ylab("Proportion of HGMD(DM) genes") + ylim(c(0,0.5))
dev.off()

#Figure 5b. Piechart:HGMDfraction
fracDat=data.frame(frac=rep(NA,3),geneSet=rep("",3))
fracDat$frac=c(1235/3302,1167/3302,1-(1235+1167)/3302)
fracDat$geneSet=c("EG: 1235 (37.40%)","NEG: 1167 (35.34%)","Unknown: 900 (27.26%)")
fracDat$geneSet=factor(fracDat$geneSet,levels=c("EG: 1235 (37.40%)","NEG: 1167 (35.34%)","Unknown: 900 (27.26%)"))

png("/home/jixiao/pgfi_data/ifs/jixiao/programs/generalData/geneList/IMPC_paper_freeze/freeze_102315/figure5b_HGMDfraction.png",height=3,width=6,units='in',res=500)
ggplot(fracDat,aes(x="",y=frac,fill=geneSet)) +
	scale_fill_discrete(name="Gene set") +
	geom_bar(stat="identity") +
	coord_polar("y",start=0) +
	theme_bw() +  theme(axis.text.x=element_blank(),axis.title.y=element_blank(),axis.ticks = element_blank()) +
	ylab("HGMD(DM) genes")
dev.off()
