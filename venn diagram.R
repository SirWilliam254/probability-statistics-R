library("VennDiagram")   
grid.newpage()         # Move to new plotting page
draw.triple.venn(area1 = 15,                
                 area2 = 30,
                 area3 = 10,
                 n12 = 8,
                 n23 = 4,
                 n13 = 2,
                 n123 = 1,
                 fill = c("pink", "green", "orange"),
                 lty = "blank",
                 category = c("I", "II", "III"))  # Adding name to each set