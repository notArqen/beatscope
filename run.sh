#!/bin/sh
# serve locally (the m4a/ALAC converter needs http, not file://)
cd "$(dirname "$0")" && open http://localhost:8790 && exec python3 -m http.server 8790
