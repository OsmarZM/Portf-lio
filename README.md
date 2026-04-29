# 🚀 Osmar Zanateli Moreno — Portfolio

> Portfólio pessoal dark-tech com animações interativas, construído com React standalone (sem build) e deployável em qualquer CDN estático.

**🔗 Live:** [portfofilo-mu.vercel.app](https://portfofilo-mu.vercel.app)  
**💼 LinkedIn:** [linkedin.com/in/osmarzm](https://linkedin.com/in/osmarzm)  
**👤 GitHub:** [github.com/OsmarZM](https://github.com/OsmarZM)  
**📸 Instagram:** [@osmar.zanateli](https://instagram.com/osmar.zanateli)

---

## ✨ Features

| Feature | Descrição |
|---|---|
| 🎨 **Dark Tech Design** | Paleta escura com tons cyan, purple, green e pink |
| 🌐 **Partículas Interativas** | Canvas WebGL com repulsão pelo mouse e rede neural |
| ⚡ **Efeito Glitch** | Nome com layers duplos cyan + pink a cada 6s |
| 🖱️ **Spotlight Cards** | Brilho radial que segue o cursor em cada card |
| ⌨️ **Typing Animation** | Texto digitado com 5 roles rotativos |
| 📡 **Stack Marquee** | Duas faixas de tech stack em direções opostas |
| 💻 **Terminal About** | Seção "whoami" com JSON estilo bash |
| 📱 **Responsivo** | Layout adaptável com clamp() e auto-fill grid |
| 🔤 **Tipografia** | Syne (display) + JetBrains Mono (code) |
| 🚫 **Zero Build** | HTML + React CDN — abre no browser direto |

---

## 🗂️ Estrutura do Projeto

```
osmar-portfolio/
├── index.html          # App completo (standalone, sem build)
├── portfolio.jsx       # Versão React/JSX (para uso com Vite/Next.js)
├── README.md           # Documentação completa
├── PROJECTS.md         # Detalhamento dos projetos
└── .github/
    └── workflows/
        └── deploy.yml  # CI/CD automático via GitHub Actions (opcional)
```

---

## 🛠️ Stack

- **React 18** via CDN (sem npm install, sem build)
- **Babel Standalone** para JSX no browser
- **Canvas API** para partículas
- **CSS Animations** para glitch, marquee e scanlines
- **Google Fonts** — Syne + JetBrains Mono
- **Vercel** para deploy estático

---

## 🚀 Deploy

### Opção 1 — Vercel (recomendado)

```bash
# 1. Clone o repositório
git clone https://github.com/OsmarZM/Portf-lio.git
cd osmar-portfolio

# 2. Deploy com Vercel CLI
npm i -g vercel
vercel --prod
```

Ou conecte o repositório diretamente em [vercel.com/new](https://vercel.com/new) — detecção automática de projeto estático.

### Opção 2 — GitHub Pages

1. Settings → Pages
2. Branch: `main` / Root: `/`
3. Save → disponível em `osmarzm.github.io/osmar-portfolio`

### Opção 3 — Qualquer CDN Estático

Só é necessário servir o `index.html`. Compatível com:
- Netlify (drag & drop)
- Cloudflare Pages
- AWS S3 + CloudFront
- Firebase Hosting

---

## 🎨 Design Tokens

```javascript
const C = {
  bg:      "#030608",   // Background principal
  surface: "#07090F",   // Cards e superfícies
  cyan:    "#00D4FF",   // Cor primária / accent
  purple:  "#8B5CF6",   // Accent secundário
  green:   "#10FFAA",   // Sucesso / público
  pink:    "#F026A2",   // Destaque / privado
  amber:   "#F59E0B",   // Atenção / infra
  text:    "#D1DCE8",   // Texto principal
  muted:   "#47596E",   // Texto secundário
};
```

---

## 📁 Projetos no Portfólio

Documentação detalhada em [`PROJECTS.md`](./PROJECTS.md).

| Projeto | Status | Stack Principal |
|---|---|---|
| WhatsApp AI Sales Assistant | 🔒 Privado | Node.js, Claude AI, Baileys, Bitrix24 |
| Fortatech Knowledge Graph | 🔒 Privado | Supabase, pgvector, Notion API |
| RAG vs MCP Playground | 🌐 Público | React, Claude API |
| Commercial Pipeline Analytics | 🔒 Privado | Python, Bitrix24 API |
| IT Infrastructure Proposal | 🔒 Privado | Active Directory, LGPD |
| Lead Lifecycle Visualizer | 🌐 Público | React, CSS Animations |

---

## ✏️ Personalização

### Atualizar e-mail de contato
No `index.html`, busque por `osmar@fortatech.com.br` e substitua pelo seu e-mail.

### Adicionar novo projeto
Localize o array `PROJECTS` no `index.html` e adicione um novo objeto:

```javascript
{
  id: 7,
  name: "Nome do Projeto",
  badge: "PÚBLICO",        // ou "PRIVADO"
  year: "2026",
  color: "#00D4FF",        // cor do card
  stack: ["Tech1", "Tech2"],
  problem: "Descrição do problema que foi resolvido.",
  solution: "Como foi resolvido e o que foi construído.",
  metric: "Resultado mensurável",
  github: "https://github.com/OsmarZM/repo", // opcional
}
```

### Alterar roles do typing
Localize `const ROLES` e edite o array:

```javascript
const ROLES = [
  "IA Aplicada na prática",
  "Automação de Processos",
  // adicione aqui
];
```

---

## 📐 Arquitetura do Código

```
App
├── ParticleCanvas       → Canvas fixo com rede de partículas interativas
├── GlitchName           → Nome com efeito glitch periódico (layers CSS)
├── TypingText           → Hook de digitação automática com backspace
├── SpotlightCard        → Card com spotlight radial via onMouseMove
├── TerminalAbout        → Terminal bash fake com JSON de perfil
└── sections
    ├── Hero             → Fullscreen com badge, glitch, stats
    ├── Projetos         → Grid de SpotlightCards
    ├── Stack            → Marquee duplo bidirecional
    ├── Sobre            → Bio + Terminal + Feature cards
    └── Contato          → CTA + footer
```

---

## 📄 Licença

MIT — pode usar como base, só mantém os créditos se quiser. 😄

---

<div align="center">
  <sub>Construído com React · Dark Side Only · © 2026 Osmar Zanateli Moreno</sub>
</div>
