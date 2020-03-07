setwd("~/Desktop/Analytics in practive")
library(dplyr)
library(tidyverse)
library(jsonlite)
us_ag <- read_csv("us_agencies.csv")
str(us_ag)
us_co<- read_csv("us_companies.csv")
str(us_co)
colnames(us_ag)
colnames(us_co)
sum(is.na(us_ag))
sapply(us_ag, function(x) sum(is.na(x)))  # In us_agencies
sum(is.na(us_co))
sapply(us_co, function(x) sum(is.na(x)))  # In us_companies
us_ag_noDup<-us_ag %>% distinct()
us_co_noDup<-us_co %>% distinct()
us_ag_NoMissing <- function(x){sum(is.na(x))/length(x)*100}
apply(us_ag_noDup,2,us_ag_NoMissing)

us_co_NoMissing <- function(x){sum(is.na(x))/length(x)*100}
apply(us_co_noDup,2,us_co_NoMissing)
ChigoTraffic <- fromJSON("ChicagoTraffic.json")
print(nrow(ChigoTraffic$meta$view$columns))
print(ChigoTraffic$meta$view$columns$name)
CT_data<-ChigoTraffic$data
for(i in 1:1279){
  if(CT_data[[i]][[11]] == "100th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "101th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "102th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "103th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "104th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "105th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "106th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "107th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "108th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "109th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "110th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "111th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "112th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "113th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "114th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
  if(CT_data[[i]][[11]] == "115th St"){
    print(as.numeric(CT_data[[i]][[13]]))
  }
}
for(j in 1:1279){
  if(CT_data[[j]][[15]]=="41.651861" && CT_data[[j]][[16]]== "-87.54501"){t1<-as.numeric(CT_data[[j]][[13]])}
  if(CT_data[[j]][[15]]=="41.66836" && CT_data[[j]][[16]]== "-87.620176"){t2<-as.numeric(CT_data[[j]][[13]])}
}
Total_Traffic=t1+t2
print(Total_Traffic)
