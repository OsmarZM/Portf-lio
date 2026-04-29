#!/bin/bash
# ==============================================
# deploy-github.sh
# Script para criar o repositório osmar-portfolio
# no GitHub e fazer push de todos os arquivos.
#
# Uso: ./deploy-github.sh SEU_TOKEN_AQUI
# ==============================================

set -e

TOKEN=$1
USERNAME="OsmarZM"
REPO_NAME="osmar-portfolio"
DESCRIPTION="🚀 Portfolio dark-tech com React, animações interativas, partículas e efeito glitch. Zero build — deploy direto no Vercel."

if [ -z "$TOKEN" ]; then
  echo "❌ Token não fornecido. Uso: ./deploy-github.sh SEU_TOKEN"
  exit 1
fi

echo "🔍 Verificando autenticação..."
gh_user=$(curl -s -H "Authorization: Bearer $TOKEN" https://api.github.com/user | python3 -c "import sys,json; print(json.load(sys.stdin)['login'])")
echo "✅ Autenticado como: $gh_user"

echo ""
echo "📦 Criando repositório $REPO_NAME..."
curl -s -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Accept: application/vnd.github+json" \
  https://api.github.com/user/repos \
  -d "{
    \"name\": \"$REPO_NAME\",
    \"description\": \"$DESCRIPTION\",
    \"homepage\": \"https://$REPO_NAME.vercel.app\",
    \"private\": false,
    \"has_issues\": true,
    \"has_wiki\": false,
    \"auto_init\": false
  }" | python3 -c "import sys,json; d=json.load(sys.stdin); print('✅ Repo criado:', d.get('html_url', d.get('message','erro')))"

echo ""
echo "🗂️ Inicializando git e fazendo push..."

cd "$(dirname "$0")"

git init
git config user.email "osmar@fortatech.com.br"
git config user.name "Osmar Zanateli Moreno"
git add .
git commit -m "feat: initial portfolio deploy 🚀

- Dark tech design com partículas interativas
- Efeito glitch no nome (GlitchName component)
- Spotlight nos cards via onMouseMove
- Typing animation com 5 roles
- Stack marquee bidirecional
- Terminal 'whoami' estilo bash
- 6 projetos documentados (problema → solução → métrica)
- Zero build — React via CDN standalone"

git branch -M main
git remote add origin "https://$TOKEN@github.com/$USERNAME/$REPO_NAME.git"
git push -u origin main

echo ""
echo "✅ Repositório publicado!"
echo "🔗 https://github.com/$USERNAME/$REPO_NAME"
echo ""
echo "▶️  Próximo passo: conecte em vercel.com/new para deploy automático"
