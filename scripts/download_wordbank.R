library(wordbankr)
library(tidyverse)

# Get instrument data
eng_ws_data <- get_instrument_data(language = "English (American)",
                           form = "WS",
                           administrations = TRUE,
                           iteminfo = TRUE)

eng_wg_data <- get_instrument_data(language = "English (American)",
                                   form = "WG",
                                   administrations = TRUE,
                                   iteminfo = TRUE)


# Computes estimates of items' age of acquisition
aoa_ws <- fit_aoa(eng_ws_data) %>% filter(!is.na(aoa))
aoa_ws$definition <- gsub("\\s*\\([^\\)]+\\)","",as.character(aoa_ws$definition))
aoa_ws$definition <- gsub("/.*","",as.character(aoa_ws$definition))
aoa_ws$definition <- gsub("\\*","",as.character(aoa_ws$definition))
write.csv(aoa_ws, 'data/wordbank/aoa_ws.csv')


aoa_wg <- fit_aoa(eng_wg_data) %>% filter(!is.na(aoa))
aoa_wg$definition <- gsub("\\s*\\([^\\)]+\\)","",as.character(aoa_wg$definition))
aoa_wg$definition <- gsub("/.*","",as.character(aoa_wg$definition))
aoa_wg$definition <- gsub("\\*","",as.character(aoa_wg$definition))
write.csv(aoa_wg, 'data/wordbank/aoa_wg.csv')
