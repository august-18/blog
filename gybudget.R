#Yearlong budget in a foreign country

#Useful for students studying abroad, people working in 
#foreign countries while communicating with people in other 
#countries, such as relief workers, 
#people who want to share transparent budgets with people in
#other countries, people who are funded by grants
#accountable to donors, relief workers, NGO workers, 
#international or community development workers
#missionaries, students on scholarship
#unique features
#Incorporates currency conversion, analyzing and visualizing 
#multiple currencies, and visualizing exchange rates, as well 
#as __

#install packages
install.packages("tidyverse")

library(readxl)
budget <- read_xlsx("/Users/_/Dropbox/_ gap year/gy admin/_ expenses budget.xlsx")
"/Users/_/Git/data/_.pdf"
"data/_.pdf"

head(budget)
glimpse(budget)
colnames(budget)

library(tidyverse)

#https://towardsdatascience.com/a-gentle-guide-to-statistics-in-r-ccb91cc1177e
#https://moderndive.com/index.html

#ggplot
#ggplot(data = <DATA>) + 
#<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

#gr dates 
ggplot (data = budget, aes(x = Date)) +
  geom_density(fill = "blue")
#gr amts
ggplot (data = budget, aes(x = Amount)) +
  geom_density(fill = "blue")

range(budget$Date)
table(budget$Date, budget$Amount)

#graph amt vs date
ggplot (data = budget) +
  geom_point(mapping = aes(x = Date, y = Amount))

# more adv graphs
# ggplot(data = <DATA>) + 
# <GEOM_FUNCTION>(
#   mapping = aes(<MAPPINGS>),
#   stat = <STAT>, 
#   position = <POSITION>
# ) +
#   <COORDINATE_FUNCTION> +
#   <FACET_FUNCTION>
