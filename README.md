# AQIE Init Script

Project to manage and maintain the farming stats cluster on Databricks. Currently it houses:

- The AQIE general init script. This is the init script used to configure the shared AQIE Rstudio cluster. The core of this init script, is based off of the DASH general purpose init script and the farming stats' init script. In particular the R installs have been amended to suit the needs of users in the air quality team. Added packages include openair, afcharts and packages for Shiny dashboards. This init script should work for all cluster sizes (including personal and large single nodes), and therefore can be easily used by any team members.
- The notebook coding start up and shut down for the shared AQIE RStudio cluster. This notebook is parameterised to run in two ways, turn on the cluster or turn off. The execution of the notebook is managed by two databricks jobs, which execute on a set schedule. The job to turn the cluster on is triggered every Monday at 06:00. The job to run the cluster off is triggered every Friday at 20:00. This ensures the cluster is up for the Defra core hours.
- The notebook to clean up logging files from the AQIE RStudio cluster. This is a notebook that deletes all logs that are 28 days or older. This just helps manage the log directories, ensuring they don't become too large.
- The notebook to view the logs from the AQIE cluster. This is a notebook that allows the user to ID and examine cluster logs. This is essential for troubleshooting instances where the cluster hasn't initialised as expected.

For more information on our shared cluster see the [Air Quality Wiki](https://dap-prd2-connect.azure.defra.cloud/Air-Quality-Wiki/guidance/dash-guidance.html).
