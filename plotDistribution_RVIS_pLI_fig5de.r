library(ggplot2)
dat=read.table("~/Essential_genes_master_table.txt",header=T,sep="\t",quote="",na.strings=c('.',"NA"))
datEG=dat[which(dat$EG=="Y"),]
datNEG=dat[which(dat$NLG=="Y"),]

##Code for generating Figure 5d.
plotDat0=data.frame(dat$RVIS_ExAc_perc,rep('All',length(dat$RVIS_ExAc_perc)))
colnames(plotDat0) <- c("V1","V2")
plotDat1=data.frame(datEG$RVIS_ExAc_perc,rep('EG',length(datEG$RVIS_ExAc_perc)))
colnames(plotDat1) <- c("V1","V2")
plotDat2=data.frame(datNEG$RVIS_ExAc_perc,rep('NEG',length(datNEG$RVIS_ExAc_perc)))
colnames(plotDat2) <- c("V1","V2")
plotDat=rbind(plotDat0,plotDat1,plotDat2)
colnames(plotDat) <- c("V1","Density")
plotDat$Density=factor(plotDat$Density,levels=c("EG","NEG","All"))

png("~/figure5d_distributionOfRVIS.png",height=9,width=9,units='in',res=500)
ggplot(plotDat, aes(x=V1,group=Density,fill=as.factor(Density))) + 
  geom_histogram(aes(y = ..density..),position="identity", alpha=0.5,right=TRUE, binwidth=1) + 
  scale_fill_discrete(name="Histogram") +
  geom_line(aes(colour=Density), stat = 'density',position = "identity",adjust=0.5) +
  theme_bw() + xlab("RVIS percentile") + ylab("Density")+ xlim(c(0,100)) + ggtitle("") + ylim(c(0,0.04)) +
  theme(plot.title=element_text(size=20),legend.text=element_text(size=14),axis.text=element_text(size=14),axis.title=element_text(size=18))
dev.off()

##Test for difference in RVIS distribution
#EG vs. NEG
wilcox.test(plotDat1$V1,plotDat2$V1,alternative="less")
#EG vs. All
wilcox.test(plotDat1$V1,plotDat0$V1,alternative="less")
#NEG vs. All
wilcox.test(plotDat1$V2,plotDat0$V1,alternative="less")

##Code for generating Figure 5e.
plotDat0=data.frame(dat$pLI_perc,rep('All',length(dat$pLI_perc)))
colnames(plotDat0) <- c("V1","V2")
plotDat1=data.frame(datEG$pLI_perc,rep('EG',length(datEG$pLI_perc)))
colnames(plotDat1) <- c("V1","V2")
plotDat2=data.frame(datNLG$pLI_perc,rep('NEG',length(datNLG$pLI_perc)))
colnames(plotDat2) <- c("V1","V2")
plotDat=rbind(plotDat0,plotDat1,plotDat2)
colnames(plotDat) <- c("V1","Density")
plotDat$Density=factor(plotDat$Density,levels=c("EG","NEG","All"))

png("~/figure5e_distributionOfpLI.png",height=9,width=9,units='in',res=500)
ggplot(plotDat, aes(x=V1,group=Density,fill=as.factor(Density))) + 
  geom_histogram(aes(y = ..density..),position="identity", alpha=0.5,right=TRUE, binwidth=1) + 
  scale_fill_discrete(name="Histogram") +
  geom_line(aes(colour=Density), stat = 'density',position = "identity",adjust=0.5) +
  theme_bw() + xlab("pLI percentile") + ylab("Density")+ xlim(c(0,100)) + ggtitle("") + ylim(c(0,0.04)) +
  theme(plot.title=element_text(size=20),legend.text=element_text(size=14),axis.text=element_text(size=14),axis.title=element_text(size=18))
dev.off()

##Test for difference in pLI distribution
#EG vs. NEG
wilcox.test(plotDat1$V1,plotDat2$V1,alternative="less")
#EG vs. All
wilcox.test(plotDat1$V1,plotDat0$V1,alternative="less")
#All vs. NEG
wilcox.test(plotDat0$V2,plotDat1$V1,alternative="less")