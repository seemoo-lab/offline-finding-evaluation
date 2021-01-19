[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/seemoo-lab/offline-finding-evaluation/HEAD?filepath=analysis.ipynb)

# Offline Finding Analysis 

This Jupyter notebook contains a quantitative analysis of location reports from Apple's offline finding (OF) location tracking system.
The results are part of our paper **Who Can *Find My* Devices? A Security and Privacy Analysis of Apple’s Crowd-Sourced Bluetooth Location Tracking System**.

## Execute

Use [Binder](https://mybinder.org/v2/gh/seemoo-lab/offline-finding-evaluation/HEAD?filepath=analysis.ipynb) to execute the notebook.
Alternative, you can locally execute the notebook.

**Setup environment.** We create and activate a dedicated virtual environment.

```bash
make venv
source venv/bin/activate
```

**Start.** Install all dependencies and start the main Jupyter notebook.

```bash
make
```

## Reproduce figures for our paper

Reproduce the figures in our paper by running (figures will be available in [plots](plots) folder):

```bash
make run
```

## Authors

* Alexander Heinrich ([email](mailto:aheinrich@seemoo.tu-darmstadt.de))
* Milan Stute ([email](mailto:mstute@seemoo.tu-darmstadt.de))
