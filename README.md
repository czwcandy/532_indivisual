# Vancouver Weather Data Exploration App

## Motivation

**Target audience: Environmental researchers and enthusiasts**

Climate patterns are complex and require meticulous observation. By understanding weather trends, researchers can make informed decisions about environmental impacts and policymakers can establish better strategies for climate adaptation. This application provides an accessible platform for users to delve into Vancouver's weather data, allowing them to unearth monthly and yearly trends in temperature, precipitation, and other important climatic variables. Through interactive visualization, the app empowers users to identify patterns, compare historical contexts, and prepare for future weather phenomena, facilitating a deeper comprehension of the local climate dynamics.

## App Description

Please view the video: https://github.com/czwcandy/532_indivisual/blob/main/img/Screen%20Recording%202024-04-23%20at%2011.34.12%E2%80%AFAM.mp4
where I walk through the functionalities and features of the Vancouver Weather Data Exploration app. The video provides a demonstration of how to interact with the app and highlights the key components designed to aid in the exploration of weather data.

## Installation Instructions

To run the Vancouver Weather Data Exploration app locally, follow these steps:

1.  Clone the repository to your local machine using:

2.  Navigate to the repository directory:

3.  Ensure that you have R and Conda installed on your system. If not, install [Miniconda](https://docs.conda.io/en/latest/miniconda.html) (a minimal installer for Conda).

4.  Create a Conda environment using the `environment.yaml` file included in the repo: `conda env create -f environment.yaml`

5.  Once the environment is created, activate it: `conda activate shiny-app`

6.  With the environment activated, launch R in the treminal

7.  Inside the R session, set the correct working directory and run the app: `shiny::runApp('app.R')`

8.  The app will start in your default web browser. Interact with the app through the browser interface.

For additional information on using and navigating the app, refer to the provided video walkthrough.
