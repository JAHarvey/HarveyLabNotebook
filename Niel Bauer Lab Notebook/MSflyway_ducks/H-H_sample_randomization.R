#JAH
#03182026
#Modified 06012026 for IL25-26 wild bird serum samples
library(dplyr)
library(readr)


divers25 <- read_csv("/Users/niel/Desktop/H-H_to_randomize25.csv")
divers26 <- read_csv("/Users/niel/Desktop/H-H_to_randomize26.csv")


#Randomize RNA extractions

set.seed(123)

dive_rand25 <- divers25 %>%
  group_by(sample_id, Collection_date) %>%
  mutate(rand = runif(n())) %>%
  ungroup() %>%
  arrange(rand) %>%
  mutate(
    extraction_set = ceiling(row_number() / 3)
  )

dive_rand26 <- divers26 %>%
  group_by(sample_id, Collection_date) %>%
  mutate(rand = runif(n())) %>%
  ungroup() %>%
  arrange(rand) %>%
  mutate(
    extraction_set = ceiling(row_number() / 3)
  )


write_csv(dive_rand25, "IL25_samples_randomized_for_H-H.csv")
write_csv(dive_rand26, "IL26_samples_randomized_for_H-H.csv")
