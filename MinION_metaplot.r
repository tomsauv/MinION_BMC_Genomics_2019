require(ggplot2)

mydata=read.table("MinION_metadata.txt",header=T, sep='\t')
plot1<-ggplot(mydata, aes(x=Reads_in_million_1D,y=Mean_read_Length_1D,size=Yield_in_Gbp_1D,colour=Chemistry)) + 
     geom_point(alpha=.5) +
     geom_text(aes(label=Flow_cell),size=2.5,hjust=0,show.legend=FALSE)+ # Add label for the flow cell of interest, right justify label, and do not show in legend
     scale_colour_brewer(palette="Set1")+scale_size_area(max_size =8) + 
     guides(colour = guide_legend(override.aes = list(shape = 15, size=5))) + 
     scale_x_continuous(name="Number of reads produced (Millions)")+ # Edit x axis title
     scale_y_continuous(name ="Average library read length (bp)") + # Edit y axis title
     theme_classic()
plot2<-plot1 + labs(size = "Yield (Gbp)") # Fix legend title
ggsave("MinION_metaplot.pdf",plot2, width=15, height=11, units="cm")
