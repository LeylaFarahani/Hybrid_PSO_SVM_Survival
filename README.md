# Survival Analysis using Hybrid PSO-SVM Model

This repository contains MATLAB code for a hybrid model that integrates Particle Swarm Optimization (PSO) with Support Vector Machine (SVM) for feature selection and parameter optimization. The model is designed for survival analysis, with a focus on predicting patient outcomes based on high-dimensional gene expression data.

## Table of Contents
- [Overview](#overview)
- [Requirements](#requirements)
- [Usage](#usage)
- [Parameters](#parameters)
- [Output](#output)
- [Contact](#contact)

## Overview
This study aims to identify prognostic biomarkers associated with survival outcomes by utilizing a two-step hybrid algorithm:
1. **Martingale Residual Calculation**: A null Cox model calculates martingale residuals for each patient, which are then used as a pseudo-survival outcome.
2. **PSO-SVM Optimization**: Particle Swarm Optimization (PSO) is applied to optimize SVM parameters and select a subset of predictive gene features.

## Requirements
The following software and toolboxes are required:
- MATLAB (R2021a or newer)
- PSO, GA, and LIBSVM Toolboxes

Install the necessary MATLAB toolboxes by running:
```matlab
matlab.addons.install('PSO Toolbox');
matlab.addons.install('GA Toolbox');
matlab.addons.install('LIBSVM Toolbox');
