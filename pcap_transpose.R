library("tidyverse")

pcap_data <- read_csv("pcap-artwork-master.csv", locale = locale(encoding = "UTF-8"))

pcap_data_transposed <-
  pivot_wider(pcap_data, names_from = attributename, values_from = attributevalue)

write_excel_csv(pcap_data_transposed, "pcap_transposed_artwork_metadata_full.csv", na = "")
