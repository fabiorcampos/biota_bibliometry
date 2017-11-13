library(scholar)
library(dplyr)

### ID of Biota Program
id = 'cNjmGrIAAAAJ'

### Number of articles
num_articles = get_num_articles(id)
num_articles

### Number of Journals
num_journals = get_num_distinct_journals(id)

### Dataframe of publications
df = get_publications(id, cstart = 0, pagesize = 100, flush = FALSE)
str(df)
names(df)
head(df)
table(df$journal)

### Publications analysis
pubs = count(df, year)
summary(pubs$n)
plot(pubs, type='l', col = "red", main = "Publicações do Biota (1998 - 2016)")

### Journals analysis
journals = count(df, journal)