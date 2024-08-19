#!/bin/bash

dates=("2023-08-18" "2023-09-15" "2024-01-13" "2024-04-11" "2024-05-29_1" "2024-05-29_2" "2024-05-29_3" "2024-05-29_4")

for date in "${dates[@]}"; do
    echo "Processing date: $date"

    python coslam_stihl.py --config configs/Stihl/d435i.yaml --input_folder /workspace/mounted_directory/media/fabian/data_recording_r/kwald/drosselweg/flaeche1/$date/tum/d435i --output output/short/$date

done

echo "All dates processed."