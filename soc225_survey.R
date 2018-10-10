library(tidyverse)

soc225 <- read_csv("data/SOC 225 Labs Welcome.csv")

soc225_ident <- 
  soc225 %>%
  select(c(Timestamp, 
           `What is your name (as spelled on canvas)?`, 
           `What would you like to be called?`, 
           `What lab section are you in?`,
           `What's something that you don't think anyone in our lab knows about you, but that you wouldn't mind sharing? (I'm going to share it, btw)`,
           `Is there anything else you'd like me to know? (I won't share this)`))

soc225_anon <- 
  soc225 %>% 
  select(-c(Timestamp, 
            `What is your name (as spelled on canvas)?`, 
            `What would you like to be called?`,
            `What's something that you don't think anyone in our lab knows about you, but that you wouldn't mind sharing? (I'm going to share it, btw)`,
            `Is there anything else you'd like me to know? (I won't share this)`))

write_csv(soc225_anon, "data/soc225_labs_anon.csv")
