installedLibrary <- installed.packages()
if (is.na(pmatch("KoNLP", installedLibrary, nomatch = NA_integer_, duplicates.ok = FALSE))) {
  install.packages("KoNLP")
}
if (is.na(pmatch("tm", installedLibrary, nomatch = NA_integer_, duplicates.ok = FALSE))) {
  install.packages("tm")
}
if (is.na(pmatch("wordcloud", installedLibrary, nomatch = NA_integer_, duplicates.ok = FALSE))) {
  install.packages("wordcloud")
}
if (is.na(pmatch("RColorBrewer", installedLibrary, nomatch = NA_integer_, duplicates.ok = FALSE))) {
  install.packages("RColorBrewer")
}


library(KoNLP)
library(wordcloud)
library(RColorBrewer)

katok <- "~/Downloads/KakaoTalk_20200211_1205_06_299_group.txt"
txt <- readLines( file(katok, encoding = "UTF-8"), encoding = "UTF-8" )
txt <- enc2native(txt)

gsub("\\[.+\\]", "", txt) 
gsub('\\-.+\\-','',txt)

nouns <- unlist( sapply(txt, extractNoun, USE.NAMES = F) )

wordcount <- table(nouns)

pal <- brewer.pal(9, "Set1")

wordcloud(names(wordcount), freq = wordcount, scale = c(fontSize,1), rot.per = 0.35, min.freq = freqLevel, random.order = F, random.color = T, colors = pal)
