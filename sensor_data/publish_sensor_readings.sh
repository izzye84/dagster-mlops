#!/bin/bash
# Run from any directory: cd to this script's folder and use the mlops_demo uv environment
cd "$(dirname "$0")" || exit 1

wait_for_more() {
  while true; do
    read -p "Type 'more' to publish 500 more readings: " input
    if [[ "$input" == "more" ]]; then
      break
    fi
  done
}

wait_for_more
uv run --project ../mlops_demo python publish_sensor_readings.py --num-records 500 --offset 0
wait_for_more
uv run --project ../mlops_demo python publish_sensor_readings.py --num-records 500 --offset 500
wait_for_more
uv run --project ../mlops_demo python publish_sensor_readings.py --num-records 500 --offset 1000
wait_for_more
uv run --project ../mlops_demo python publish_sensor_readings.py --num-records 500 --offset 1500