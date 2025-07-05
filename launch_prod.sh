#!/bin/bash
# Lanzamiento MechBot v1.0 - Termux Edition
echo "🚀 INICIANDO DESPLIEGUE ÉPICO 🚀"

# 1. Construir imágenes
docker build -t mechmind/mechbot-core .

# 2. Subir a ECR
AWS_ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
AWS_REGION=$(aws configure get region)
ECR_URL="$AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com"

aws ecr create-repository --repository-name mechbot-core || true
aws ecr get-login-password | docker login --username AWS --password-stdin $ECR_URL
docker tag mechmind/mechbot-core:latest $ECR_URL/mechbot-core:latest
docker push $ECR_URL/mechbot-core:latest

# 3. Desplegar en ECS
aws ecs update-service --cluster mechbot-cluster --service mechbot-service --force-new-deployment

# 4. Notificación
curl -X POST -H 'Content-type: application/json' --data '{"text":"🚀 ¡MECHBOT V1.0 DESPLEGADO DESDE TERMUX!"}' $SLACK_WEBHOOK

echo "✅ ¡DESPLIEGUE COMPLETADO! MECHBOT ESTÁ VIVO"
