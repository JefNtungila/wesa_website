# A Comparison of Time Series Methodology

---

Link to research slides: [Drive : Jef Ntungila](https://drive.google.com/file/d/14IofGkCPc1K-OZkddQsk54VmJbAMLcrB/view?usp=sharing)

This data analysis project compares different time series methodologies on the US sales dataset. The following time series methodologies are compared:

- Mean Baseline
- ARIMA
- SARIMA
- Fourier based time series (Facebook Prophet)
- LSTM

## Methodologies

### Historical Mean
We use the historical mean as a baseline to quantify other model performances.

### Historical Hourly Median
We compute the hourly median and forecast the hourly median for each day.

### Facebook Prophet
Facebook Prophet was custom created by Facebook to specifically deal with strong seasonal effects using Fourier Series. We use default hourly parameters.

### SARIMA (Seasonal-ARIMA)
SARIMA is a variation of ARIMA (moving averages) that is sensitive to seasonal components. Parameters are found using auto-arima.

### LSTM (Long Short-Term Memory)
LSTM is a recurrent neural network. It maps as input a vector of a sequence of time data to an output time unit when used as a time series model. We use 12 timesteps and 100 epochs.

## Tags
- Time Series
- LSTM, Facebook Prophet, SARIMA, ARIMA
- Machine Learning

## Excerpt
This data analysis project compares different time series methodologies on the US sales dataset.
