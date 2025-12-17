#!/bin/bash
# Simple local server for previewing sites
PORT=${1:-8000}
echo "Serving at http://localhost:$PORT"
echo "Press Ctrl+C to stop"
python3 -m http.server $PORT
