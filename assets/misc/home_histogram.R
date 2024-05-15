(my_plot <- ggplot() +
  geom_histogram(data = data.frame(var_a = rnorm(n = 1000, mean = 0, sd = 2)),
                 aes(var_a, fill = after_stat(x > 3)), bins = 12, color = "#f7f7f7", size = 1.5) +
  scale_fill_manual(values = c("#222831", "#FFB534")) +
  guides(fill = FALSE) +
  theme_void()  +
  theme(panel.background = element_blank(),
        panel.border = element_blank()))

ggsave(filename = "assets/img/home_hist.png", plot = my_plot, width = 5, height = 2, units = "in", dpi = 300)
