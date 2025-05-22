#!/bin/bash

if [ ! -f secrets.h ]; then
    if [ -f secrets.example.h ]; then
        cp secrets.example.h secrets.h
        echo "✅ Created secrets.h from secrets.example.h"
    else
        echo '// secrets.h' > secrets.h
        echo '#define STASSID "yourSSID"' >> secrets.h
        echo '#define STAPSK "yourPassword"' >> secrets.h
        echo "⚠️ secrets.example.h not found, created blank secrets.h"
    fi
else
    echo "✅ secrets.h already exists"
fi
