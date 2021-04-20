# Data and Data Format

We describe the data files and their format contained in this folder.

| Files | Description | Format |
|-------|-------------|--------|
| `gps/*` | GPS traces recorded with the [SensorLog](https://apps.apple.com/us/app/sensorlog/id388014573) app for the different evaluation scenarios in Section 7.1. | Each sample contains information provided by Apple's [CLLocation API](https://developer.apple.com/documentation/corelocation/cllocation) and includes longitude/latitude coordinates, an accuracy value, and a timestamp. |
| `of/<Scenario>_<Timestamp>_<Device>.csv` | Offline finding reports for individual evaluation scenarios in Section 7.1 (walking, driving, ...) that were reported during the time of the experiment (subset of `of_raw`, we use the min/max timestamps from the respective GPS trace). | Each sample corresponds to one report submitted by a finder device which includes latitude/longitude coordinates, accuracy and confidence of the reporting device, timestamps of generating (`Timestamp`) and publishing (`Date Published`) the report. |
| `of/top_locations_anonymized.csv` | Anonymized offline finding reports of the past seven days used in Section 7.2. Applied anonymization preserves the cluster structure of the original reports (see Jupyter notebook for details). | Same as above. |
| `of/true_top_locations_anonymized.csv` | User-assigned true location and description of the top locations indentified by our clustering algorithm. | Cluster ID, center coordinate, rank, and description. |
| `of_raw/*` | The offline finding reports for our devices downloaded from Apple's from the past seven days. | Left empty to preserve authors' privacy. |
