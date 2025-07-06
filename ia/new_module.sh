#!/bin/bash
[ -z "$1" ] && echo "Uso: $0 <nombre_modulo>" && exit 1

cat > ~/MechBot/ia/$1.py << 'PYEOF'
#!/usr/bin/env python3
class ${1^}:
    def __init__(self):
        pass
PYEOF

echo "Módulo $1 creado en ~/MechBot/ia/$1.py"
