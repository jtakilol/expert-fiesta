#!/bin/bash

# Run the Python script
python generate_report.py

# Check if the file was created and open it
if [ -f "exploit_verification_report.html" ]; then
    xdg-open exploit_verification_report.html || open exploit_verification_report.html
else
    echo "Report generation failed."
fi
