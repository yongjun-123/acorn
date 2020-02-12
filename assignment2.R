rm(list = ls())
cat('\f')

library(ggplot2)

mpg <- as.data.frame(ggplot2::mpg)

mpg
str(mpg)

# 'displ','cyl','cty','hwy'

mpg$drv

x <- mpg$drv

table(x)              # 도수
cumsum(table(x))      # 누적도수
prop.table(table(x))  # 상대도수


# cbind{base} -> return list
freq_list <- cbind(
  Freq = table(x),
  Cumul = cumsum(table(x)), 
  Relative = prop.table(table(x))
)
  
freq_list




# for(i in c('displ','cyl','cty','hwy')){
# 
# 
#   table(i)              # 도수
#   cumsum(table(i))      # 누적도수
#   prop.table(table(i))  # 상대도수
# 
# 
#   i_list <- cbind(
#     Freq = table(i),
#     Cumul = cumsum(table(i)),
#     Relative = prop.table(table(i)),
#     save(i_list, file = 'i_list.rda'))}


  



