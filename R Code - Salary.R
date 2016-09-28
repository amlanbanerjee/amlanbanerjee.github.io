require(ggplot2)
require(plotly)
salary <- read.csv("C:/Users/Amlan/Documents/Amlan's Website/salary_estimates.csv", header=T)
salary.dt <- read.csv("C:/Users/Amlan/Documents/Amlan's Website/salary_estimates_dt.csv", header=T)

state <- as.matrix(c("Alabama",
           "Alaska",
           "Arizona",
           "Arkansas",
           "California",
           "Colorado",
           "Connecticut",
           "DC",
           "Delaware",
           "Florida",
           "Georgia",
           "Hawaii",
           "Idaho",
           "Illinois",
           "Indiana",
           "Iowa",
           "Kansas",
           "Kentucky",
           "Louisiana",
           "Maine",
           "Maryland",
           "Massachusetts",
           "Michigan",
           "Minnesota",
           "Mississippi",
           "Missouri",
           "Montana",
           "Nebraska",
           "Nevada",
           "New Hampshire",
           "New Jersey",
           "New Mexico",
           "New York",
           "North Carolina",
           "North Dakota",
           "Ohio",
           "Oklahoma",
           "Oregon",
           "Pennsylvania",
           "Rhode Island",
           "South Carolina",
           "South Dakota",
           "Tennessee",
           "Texas",
           "Utah",
           "Vermont",
           "Virginia",
           "Washington",
           "West Virginia",
           "Wisconsin",
           "Wyoming"))
#
p12 <- subplot(
    plot_ly(subset(salary,State==state[1]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[2]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p12 <- layout(p12,
            xaxis = list(title = state[1], showgrid=TRUE),
            xaxis2 = list(title = state[2], showgrid=TRUE, showlegend = FALSE) #https://plot.ly/r/legend/#hiding-legend-entries
)

#
p34 <- subplot(
    plot_ly(subset(salary,State==state[3]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[4]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p34 <- layout(p34,
            xaxis = list(title = state[3], showgrid=TRUE),
            xaxis2 = list(title = state[4], showgrid=TRUE, showlegend = FALSE)
)

#
p56 <- subplot(
    plot_ly(subset(salary,State==state[5]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[6]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p56 <- layout(p56,
              xaxis = list(title = state[5], showgrid=TRUE),
              xaxis2 = list(title = state[6], showgrid=TRUE, showlegend = FALSE)
)

#
p78 <- subplot(
    plot_ly(subset(salary,State==state[7]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[8]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p78 <- layout(p78,
              xaxis = list(title = state[7], showgrid=TRUE),
              xaxis2 = list(title = state[8], showgrid=TRUE, showlegend = FALSE)
)

#
p910 <- subplot(
    plot_ly(subset(salary,State==state[9]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[10]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p910 <- layout(p910,
              xaxis = list(title = state[9], showgrid=TRUE),
              xaxis2 = list(title = state[10], showgrid=TRUE, showlegend = FALSE)
)

#
p1112 <- subplot(
    plot_ly(subset(salary,State==state[11]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[12]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p1112 <- layout(p1112,
               xaxis = list(title = state[11], showgrid=TRUE),
               xaxis2 = list(title = state[12], showgrid=TRUE, showlegend = FALSE)
)

#
p1314 <- subplot(
    plot_ly(subset(salary,State==state[13]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[14]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p1314 <- layout(p1314,
                xaxis = list(title = state[13], showgrid=TRUE),
                xaxis2 = list(title = state[14], showgrid=TRUE, showlegend = FALSE)
)


#
p1516 <- subplot(
    plot_ly(subset(salary,State==state[15]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[16]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p1516 <- layout(p1516,
                xaxis = list(title = state[15], showgrid=TRUE),
                xaxis2 = list(title = state[16], showgrid=TRUE, showlegend = FALSE)
)

#
p1718 <- subplot(
    plot_ly(subset(salary,State==state[17]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[18]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p1718 <- layout(p1718,
                xaxis = list(title = state[17], showgrid=TRUE),
                xaxis2 = list(title = state[18], showgrid=TRUE, showlegend = FALSE)
)

#
p1920 <- subplot(
    plot_ly(subset(salary,State==state[19]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[20]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p1920 <- layout(p1920,
                xaxis = list(title = state[19], showgrid=TRUE),
                xaxis2 = list(title = state[20], showgrid=TRUE, showlegend = FALSE)
)


#
p2122 <- subplot(
    plot_ly(subset(salary,State==state[21]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[22]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p2122 <- layout(p2122,
                xaxis = list(title = state[21], showgrid=TRUE),
                xaxis2 = list(title = state[22], showgrid=TRUE, showlegend = FALSE)
)


#
p2324 <- subplot(
    plot_ly(subset(salary,State==state[23]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[24]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p2324 <- layout(p2324,
                xaxis = list(title = state[23], showgrid=TRUE),
                xaxis2 = list(title = state[24], showgrid=TRUE, showlegend = FALSE)
)


#
p2526 <- subplot(
    plot_ly(subset(salary,State==state[25]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[26]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p2526 <- layout(p2526,
                xaxis = list(title = state[25], showgrid=TRUE),
                xaxis2 = list(title = state[26], showgrid=TRUE, showlegend = FALSE)
)

#
p2728 <- subplot(
    plot_ly(subset(salary,State==state[27]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[28]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p2728 <- layout(p2728,
                xaxis = list(title = state[27], showgrid=TRUE),
                xaxis2 = list(title = state[28], showgrid=TRUE, showlegend = FALSE)
)

#
p2930 <- subplot(
    plot_ly(subset(salary,State==state[29]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[30]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p2930 <- layout(p2930,
                xaxis = list(title = state[29], showgrid=TRUE),
                xaxis2 = list(title = state[30], showgrid=TRUE, showlegend = FALSE)
)

#
p3132 <- subplot(
    plot_ly(subset(salary,State==state[31]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[32]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p3132 <- layout(p3132,
                xaxis = list(title = state[31], showgrid=TRUE),
                xaxis2 = list(title = state[32], showgrid=TRUE, showlegend = FALSE)
)


#
p3334 <- subplot(
    plot_ly(subset(salary,State==state[33]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[34]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p3334 <- layout(p3334,
                xaxis = list(title = state[33], showgrid=TRUE),
                xaxis2 = list(title = state[34], showgrid=TRUE, showlegend = FALSE)
)


#
p3536 <- subplot(
    plot_ly(subset(salary,State==state[35]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[36]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p3536 <- layout(p3536,
                xaxis = list(title = state[35], showgrid=TRUE),
                xaxis2 = list(title = state[36], showgrid=TRUE, showlegend = FALSE)
)


#
p3738 <- subplot(
    plot_ly(subset(salary,State==state[37]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[38]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p3738 <- layout(p3738,
                xaxis = list(title = state[37], showgrid=TRUE),
                xaxis2 = list(title = state[38], showgrid=TRUE, showlegend = FALSE)
)


#
p3940 <- subplot(
    plot_ly(subset(salary,State==state[39]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[40]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p3940 <- layout(p3940,
                xaxis = list(title = state[39], showgrid=TRUE),
                xaxis2 = list(title = state[40], showgrid=TRUE, showlegend = FALSE)
)



#
p4142 <- subplot(
    plot_ly(subset(salary,State==state[41]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[42]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p4142 <- layout(p4142,
                xaxis = list(title = state[41], showgrid=TRUE),
                xaxis2 = list(title = state[42], showgrid=TRUE, showlegend = FALSE)
)


#
p4344 <- subplot(
    plot_ly(subset(salary,State==state[43]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[44]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p4344 <- layout(p4344,
                xaxis = list(title = state[43], showgrid=TRUE),
                xaxis2 = list(title = state[44], showgrid=TRUE, showlegend = FALSE)
)


#
p4546 <- subplot(
    plot_ly(subset(salary,State==state[45]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[46]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p4546 <- layout(p4546,
                xaxis = list(title = state[45], showgrid=TRUE),
                xaxis2 = list(title = state[46], showgrid=TRUE, showlegend = FALSE)
)


#
p4748 <- subplot(
    plot_ly(subset(salary,State==state[47]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[48]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p4748 <- layout(p4748,
                xaxis = list(title = state[47], showgrid=TRUE),
                xaxis2 = list(title = state[48], showgrid=TRUE, showlegend = FALSE)
)


#
p4950 <- subplot(
    plot_ly(subset(salary,State==state[49]), x = Year, y = Salary, color = Source, colors = "Set1"),
    plot_ly(subset(salary,State==state[50]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p4950 <- layout(p4950,
                xaxis = list(title = state[49], showgrid=TRUE),
                xaxis2 = list(title = state[50], showgrid=TRUE, showlegend = FALSE)
)


p51 <- subplot(
    plot_ly(subset(salary,State==state[51]), x = Year, y = Salary, color = Source, colors = "Set1"),
    margin = 0.05)
p51 <- layout(p51,
                xaxis = list(title = state[51], showgrid=TRUE)
)


library(DT)

