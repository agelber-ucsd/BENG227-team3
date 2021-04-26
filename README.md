# BENG227-team3
rwr_scRNAseq


1. get_hip_counts.sh gets 10x whole cortex data from Allen Brain Atlas and subsets for hippocampal cells that pass qc

2. attempt_impute is a notebook that imputes count data for these cells using original author's net_impute and saves the new imputed values to a csv

3. scanpy_hip runs standard analysis first on raw count data and then imputed count data and visualizes results

