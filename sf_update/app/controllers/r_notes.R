
setwd("~/Desktop/")
options(stringsAsFactors=F)

# tinyurl.com/url-output
# tinyurl.com/url-output2

df = read.csv("opower_output.csv")
df2 = read.csv("opower_output2.csv")

t = df[1,1]

website_found = df[ df$foundwebsite == "yes", ]
website_missing = df[ df$foundwebsite == "no",]

include = df[ df$X_unit_id %in% df2$X_unit_id,]
disclude = df[ !(df$X_unit_id %in% df2$X_unit_id),]

website_found$foundwebsite_gold = ""
website_found$website_gold = ""

for(i in 1:nrow(website_found)){
  if (website_found$foundwebsite.confidence[i] > 0.8){
    website_found$foundwebsite_gold[i] = website_found$foundwebsite[i]
  }
  print(i)
}
