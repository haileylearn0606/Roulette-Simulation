# Roulette Simulation and Analysis

This repository contains a project simulating the earnings from betting in Roulette and analyzing the distribution of results. The project is written in R and uses the `data.table` and `ggplot2` libraries to process data and visualize results.

---

## Project Overview

This project explores the statistical outcomes of playing Roulette over multiple bets. The code simulates earnings from Roulette bets and evaluates the distribution of results using z-scores and histograms. It is divided into two main parts:

### **Q1A: Earnings Simulation**
- Simulates earnings from betting on Roulette `n` times.
- Assumptions:
  - The probability of winning a bet is 18/38, and losing is 20/38.
  - Winnings for each bet:
    - Win: +$1
    - Loss: -$1
- Function: `Roulette(n)`
  - Inputs: Number of bets (`n`).
  - Output: Final earnings after `n` bets.

### **Q1B: Distribution Analysis**
- Simulates the distribution of earnings for a large number of trials.
- Key Steps:
  - Replicates the Roulette simulation 10,000 times for a given `n`.
  - Computes the mean and standard deviation of the earnings.
  - Calculates z-scores for earnings.
  - Visualizes the distribution of z-scores using a histogram.
- Function: `Distribution(n)`
  - Inputs: Number of bets (`n`).
  - Output: Histogram of z-scores for the simulations.

---

## Key Libraries Used

- **data.table**: For efficient data manipulation and handling.
- **ggplot2**: For creating histograms to visualize z-score distributions.

---

## How to Run the Code

1. Install the required R libraries if not already installed:
   ```R
   install.packages("data.table")
   install.packages("ggplot2")
Load the libraries:

R
Copy code
library(data.table)
library(ggplot2)
Source the script or run each section in an R environment:

R
Copy code
source("roulette_simulation.R")
Use the functions to analyze specific scenarios:



Let me know if you need further edits or additions!
