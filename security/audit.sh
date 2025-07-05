#!/bin/bash
echo "🔍 Auditoría de seguridad MechBot 🔍"
echo "1. Verificando credenciales AWS..."
aws sts get-caller-identity || echo "❌ Error AWS"
echo "2. Escaneando vulnerabilidades..."
pip-audit || echo "⚠️ Instala pip-audit: pip install pip-audit"
echo "3. Revisando permisos..."
find ~/MechBot -name "*.sh" -exec ls -l {} \;
echo "✅ Auditoría completada!"
