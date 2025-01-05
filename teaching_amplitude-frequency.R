# set the parameters
time <- seq(0, 10, by = 0.01)  # Time vector from 0 to 10 with a step of 0.01

# 1. High Frequency, Low Amplitude Wave
high_freq_low_amp <- 0.5 * sin(20 * time)

# 2. High Frequency, High Amplitude Wave
high_freq_high_amp <- 2 * sin(20 * time)

# 3. Low Frequency, High Amplitude Wave
low_freq_high_amp <- 2 * sin(2 * time)

# 4. Low Frequency, Low Amplitude Wave
low_freq_low_amp <- 0.5 * sin(2 * time)

# define y-axis limits
y_limits <- c(-2, 2)

# Open a PNG device
png("./wave_plots.png", width = 800, height = 1200)

# plot  waves with the same y-axis
par(mfrow = c(4, 1), mar = c(2, 4, 2, 2))  # 4 by 1 grid for the plots

  # High Frequency, Low Amplitude 
plot(time, high_freq_low_amp, type = "l", col = "blue", ylab = "Amplitude", main = "High Frequency, Low Amplitude", ylim = y_limits)

  # High Frequency, High Amplitude 
plot(time, high_freq_high_amp, type = "l", col = "red", ylab = "Amplitude", main = "High Frequency, High Amplitude", ylim = y_limits)

  # Low Frequency, High Amplitude 
plot(time, low_freq_high_amp, type = "l", col = "green", ylab = "Amplitude", main = "Low Frequency, High Amplitude", ylim = y_limits)

  #  Low Frequency, Low Amplitude 
plot(time, low_freq_low_amp, type = "l", col = "purple", ylab = "Amplitude", main = "Low Frequency, Low Amplitude", ylim = y_limits)

par(mfrow = c(1, 1))
dev.off()

