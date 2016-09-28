# https://plot.ly/r/map-subplots-and-small-multiples/

# US map small multiples
library(plotly)
library(ggplot2)

######################## Charter
df <- read.csv("C:/Users/Amlan/Documents/Amlan's Website/lea_charter_1.csv")
df <- df[order(df$SHYEAR), ]

df$YEAR <- NA
df$YEAR[df$SHYEAR =='2002-03'] <- 2003
df$YEAR[df$SHYEAR =='2003-04'] <- 2004
df$YEAR[df$SHYEAR =='2004-05'] <- 2005
df$YEAR[df$SHYEAR =='2005-06'] <- 2006
df$YEAR[df$SHYEAR =='2006-07'] <- 2007
df$YEAR[df$SHYEAR =='2007-08'] <- 2008
df$YEAR[df$SHYEAR =='2008-09'] <- 2009
df$YEAR[df$SHYEAR =='2009-10'] <- 2010
df$YEAR[df$SHYEAR =='2010-11'] <- 2011
df$YEAR[df$SHYEAR =='2011-12'] <- 2012
df$YEAR[df$SHYEAR =='2012-13'] <- 2013
df$YEAR[df$SHYEAR =='2013-14'] <- 2014

df <- subset(df, df$YEAR>2003)

barplot1 <- ggplot(data=df,aes(x=factor(YEAR))) +
    geom_bar(fill="steelblue") +
    geom_text(stat='count',aes(label=..count..),vjust=-2, size=3.5) +
    theme_minimal()+
    theme(axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    ggtitle("PLOT 1 - New Charter School Districts per year 2004-2014")

ggplotly(barplot1)

# common map properties
g <- list(scope = 'usa', showland = T, landcolor = toRGB("gray90"), showcountries = F, subunitcolor = toRGB("white"))

# year text labels
yrs <- unique(df$YEAR)
id <- seq_along(yrs)
df2 <- data.frame(
    YEAR = yrs,
    id = id
)

# id for anchoring traces on different plots
df$id <- as.integer(factor(df$YEAR))

p <- plot_ly(df, type = 'scattergeo', lon = LON, lat = LAT, group = YEAR,
             geo = paste0("geo", id), showlegend = F,
             marker = list(color = toRGB("blue"), opacity = 0.5)) %>%
    add_trace(lon = -78, lat = 47, mode = 'text', group = YEAR, type = 'scattergeo', showlegend = F,
              geo = paste0("geo", id), text = YEAR, data = df2) %>%
    layout(title = 'Geographic Distribution of New Charter School Districts per year 2004-2014<br> Source: <a href="https://nces.ed.gov/ccd/pubagency.asp">NCES</a>',
           geo = g,
           autosize = F,
           width = 1000,
           height = 900,
           hovermode = T)

subplot(p, nrows = 4)


######################## Mixed Charter
df <- read.csv("C:/Users/Amlan/Documents/Amlan's Website/lea_charter_2.csv")
df <- df[order(df$SHYEAR), ]

df$YEAR <- NA
df$YEAR[df$SHYEAR =='2002-03'] <- 2003
df$YEAR[df$SHYEAR =='2003-04'] <- 2004
df$YEAR[df$SHYEAR =='2004-05'] <- 2005
df$YEAR[df$SHYEAR =='2005-06'] <- 2006
df$YEAR[df$SHYEAR =='2006-07'] <- 2007
df$YEAR[df$SHYEAR =='2007-08'] <- 2008
#df$YEAR[df$SHYEAR =='2008-09'] <- 2009
df$YEAR[df$SHYEAR =='2009-10'] <- 2010
df$YEAR[df$SHYEAR =='2010-11'] <- 2011
df$YEAR[df$SHYEAR =='2011-12'] <- 2012
df$YEAR[df$SHYEAR =='2012-13'] <- 2013
df$YEAR[df$SHYEAR =='2013-14'] <- 2014

df <- subset(df, df$YEAR>2003)

barplot2 <- ggplot(data=df,aes(x=factor(YEAR))) +
    geom_bar(fill="tomato") +
    geom_text(stat='count',aes(label=..count..),vjust=-2, size=3.5) +
    theme_minimal()+
    theme(axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    ggtitle("PLOT 2 - New Mixed Charter Districts per year 2004-2014")

ggplotly(barplot2)

# common map properties
g <- list(scope = 'usa', showland = T, landcolor = toRGB("gray90"), showcountries = F, subunitcolor = toRGB("white"))

# year text labels
yrs <- unique(df$YEAR)
id <- seq_along(yrs)
df2 <- data.frame(
    YEAR = yrs,
    id = id
)

# id for anchoring traces on different plots
df$id <- as.integer(factor(df$YEAR))

q <- plot_ly(df, type = 'scattergeo', lon = LON, lat = LAT, group = YEAR,
             geo = paste0("geo", id), showlegend = F,
             marker = list(color = toRGB("red"), opacity = 0.5)) %>%
    add_trace(lon = -78, lat = 47, mode = 'text', group = YEAR, type = 'scattergeo', showlegend = F,
              geo = paste0("geo", id), text = YEAR, data = df2) %>%
    layout(title = 'Geographic Distribution of New Mixed Charter Districts per year 2004-2014<br> Source: <a href="https://nces.ed.gov/ccd/pubagency.asp">NCES</a>',
           geo = g,
           autosize = F,
           width = 1000,
           height = 900,
           hovermode = T)

subplot(q, nrows = 4)


######################## Non-Charter
df <- read.csv("C:/Users/Amlan/Documents/Amlan's Website/lea_charter_3.csv")
df <- df[order(df$SHYEAR), ]

df$YEAR <- NA
df$YEAR[df$SHYEAR =='2002-03'] <- 2003
df$YEAR[df$SHYEAR =='2003-04'] <- 2004
df$YEAR[df$SHYEAR =='2004-05'] <- 2005
df$YEAR[df$SHYEAR =='2005-06'] <- 2006
df$YEAR[df$SHYEAR =='2006-07'] <- 2007
df$YEAR[df$SHYEAR =='2007-08'] <- 2008
#df$YEAR[df$SHYEAR =='2008-09'] <- 2009
df$YEAR[df$SHYEAR =='2009-10'] <- 2010
df$YEAR[df$SHYEAR =='2010-11'] <- 2011
df$YEAR[df$SHYEAR =='2011-12'] <- 2012
df$YEAR[df$SHYEAR =='2012-13'] <- 2013
df$YEAR[df$SHYEAR =='2013-14'] <- 2014

df <- subset(df, df$YEAR>2003)

barplot3 <- ggplot(data=df,aes(x=factor(YEAR))) +
    geom_bar(fill="limegreen") +
    geom_text(stat='count',aes(label=..count..),vjust=-2, size=3.5) +
    theme_minimal()+
    theme(axis.title.x=element_blank(),
          axis.title.y=element_blank(),
          axis.text.y=element_blank(),
          axis.ticks.y=element_blank()) +
    ggtitle("PLOT 3 - New Non-Charter Districts per year 2004-2014")

ggplotly(barplot3)

# common map properties
g <- list(scope = 'usa', showland = T, landcolor = toRGB("gray90"), showcountries = F, subunitcolor = toRGB("white"))

# year text labels
yrs <- unique(df$YEAR)
id <- seq_along(yrs)
df2 <- data.frame(
    YEAR = yrs,
    id = id
)

# id for anchoring traces on different plots
df$id <- as.integer(factor(df$YEAR))

r <- plot_ly(df, type = 'scattergeo', lon = LON, lat = LAT, group = YEAR,
             geo = paste0("geo", id), showlegend = F,
             marker = list(color = toRGB("forestgreen"), opacity = 0.5)) %>%
    add_trace(lon = -78, lat = 47, mode = 'text', group = YEAR, type = 'scattergeo', showlegend = F,
              geo = paste0("geo", id), text = YEAR, data = df2) %>%
    layout(title = 'Geographic Distribution of New Non-Charter Districts per year 2004-2014<br> Source: <a href="https://nces.ed.gov/ccd/pubagency.asp">NCES</a>',
           geo = g,
           autosize = F,
           width = 1000,
           height = 900,
           hovermode = T)

subplot(r, nrows = 4)
