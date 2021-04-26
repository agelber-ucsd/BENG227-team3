# get full counts matrix and metadata
wget https://idk-etl-prod-download-bucket.s3.amazonaws.com/aibs_mouse_ctx-hip_10x/matrix.csv

wget https://idk-etl-prod-download-bucket.s3.amazonaws.com/aibs_mouse_ctx-hip_10x/metadata.csv

# get hippocampal cells that are not outliers
# and save metadata 

grep False metadata.csv | grep HIP | cut -d , -f 1 > ./qc_hip_cells.txt

head -n 1 metadata.csv > ./qc_hip_metadata.csv

grep False metadata.csv | grep HIP >> ./qc_hip_metadata.csv

# subset counts matrix for only these cells

head -n 1 ./matrix.csv > ./hip_counts.csv

grep -f ./qc_hip_cells.txt ./matrix.csv >> ./hip_counts.csv

