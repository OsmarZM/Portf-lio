# 📁 PROJECTS.md — Detalhamento dos Projetos

> Documentação dos sistemas construídos por Osmar Zanateli Moreno.  
> Projetos privados são descritos pelo problema resolvido e pela solução arquitetada, sem exposição de código ou dados sensíveis.

---

## 🤖 WhatsApp AI Sales Assistant
**Status:** 🔒 Privado · **Ano:** 2025  
**Empresa:** Fortatech

### Problema
Vendedores externos operavam 100% no celular sem acesso a sistemas internos. Gerar uma proposta comercial levava horas, exigia acesso ao escritório e leads eram perdidos por falta de agilidade no atendimento.

### Solução Arquitetada
Agente conversacional multi-IA operando diretamente via WhatsApp, com:

- **Multi-IA com failover automático:** Claude (primário) → GPT-4o (secundário) → Gemini (terciário)
- **CNPJ Lookup:** busca automática de dados do cliente por CNPJ via API pública
- **Lead Locking:** mecanismo de lock de 30 dias para evitar conflito entre vendedores no mesmo cliente
- **Geração de PDF:** proposta comercial gerada automaticamente e enviada no próprio chat
- **CRM Integration:** criação automática de card no Bitrix24 após qualquer interação qualificada
- **Skills Engine modular:** cada funcionalidade como módulo independente (lookup, proposta, status)
- **Dual channel:** Baileys para canal interno (vendedores) + Meta Cloud API para canal externo (clientes)

### Stack
`Node.js` · `Baileys` · `Meta Cloud API` · `Claude AI` · `GPT-4o` · `Gemini` · `Supabase` · `Bitrix24 API` · `PDF Generation`

### Resultado
> Proposta gerada em menos de 2 minutos, diretamente pelo celular do vendedor, sem acesso ao escritório.

---

## 🧠 Fortatech Knowledge Graph
**Status:** 🔒 Privado · **Ano:** 2026  
**Empresa:** Fortatech

### Problema
Conhecimento institucional fragmentado entre pessoas, documentos e sistemas. Onboarding de novos colaboradores lento. Expertise perdida quando um colaborador saía da empresa — sem nenhum registro estruturado do "saber organizacional".

### Solução Arquitetada
Plataforma de grafo de conhecimento institucional vivo, com:

- **Supabase + pgvector:** armazenamento de embeddings semânticos para busca por similaridade
- **Knowledge Engine (Node.js):** motor central de captura, indexação e consulta do conhecimento
- **Notion (managers):** interface de captura para gestores — documentos, decisões, processos
- **Obsidian (devs):** interface de captura para desenvolvedores — notas técnicas, arquitetura
- **Sincronização bidirecional:** Notion ↔ Supabase ↔ Obsidian em tempo real via webhooks
- **RAG sobre base interna:** consulta semântica de qualquer conhecimento armazenado via IA

### Stack
`Node.js` · `TypeScript` · `Supabase` · `pgvector` · `Notion API` · `Obsidian` · `RAG`

### Resultado
> Base de conhecimento consultável por IA — onboarding acelerado e conhecimento institucional preservado.

---

## 🔬 RAG vs MCP Playground
**Status:** 🌐 Público · **Ano:** 2025  
**Repositório:** [github.com/OsmarZM/Rag-Mcp](https://github.com/OsmarZM/Rag-Mcp)

### Problema
Desenvolvedores confundem RAG (Retrieval-Augmented Generation) e MCP (Model Context Protocol) conceitualmente. Faltava um ambiente prático, funcional e interativo para experimentar as diferenças com uma API real.

### Solução Arquitetada
Playground interativo com dois modos de operação lado a lado:

- **Motor RAG local:** indexação de documentos no browser com busca semântica por similaridade
- **5 ferramentas MCP executáveis:** tools reais que o modelo pode chamar durante a conversa
- **Integração com Claude API:** conversa real, não simulada, com histórico de contexto persistente
- **UI educativa:** visualização de qual mecanismo está sendo usado em cada resposta

### Stack
`React` · `Claude API` · `JavaScript` · `CSS`

### Resultado
> Open-source disponível no GitHub. Ferramenta de estudo para devs entrando no ecossistema de IA aplicada.

---

## 📊 Commercial Pipeline Analytics
**Status:** 🔒 Privado · **Ano:** 2025  
**Empresa:** Fortatech

### Problema
Leads estagnados no CRM eram invisíveis para a gestão. Decisões comerciais tomadas no feeling, sem dados concretos sobre onde o funil estava travando ou quais responsáveis tinham maior taxa de conversão.

### Solução Arquitetada
Sistema de análise e relatório do pipeline comercial, com:

- **Extração via Bitrix24 API:** pull automático de todos os deals e histórico de etapas
- **Análise temporal:** identificação de deals parados por período (7d, 15d, 30d+)
- **Funil dinâmico:** visualização interativa com contagem e volume por etapa
- **KPI Cards:** métricas de conversão, ticket médio e tempo médio por etapa
- **Ranking de responsáveis:** performance individual de cada vendedor por taxa de avanço
- **PDF Report:** relatório dark-themed exportável para apresentações executivas
- **React Visualizer:** componente interativo de ciclo de vida do lead com drill-down por clique

### Stack
`Python` · `React` · `Bitrix24 API` · `PDF Generation` · `CSS Animations`

### Resultado
> Visibilidade total do funil em tempo real. Gestão comercial orientada a dados, não a percepções.

---

## 🔒 IT Infrastructure Proposal
**Status:** 🔒 Privado · **Ano:** 2025  
**Empresa:** Fortatech

### Problema
Fortatech sem infraestrutura de segurança centralizada. Risco crítico de conformidade com a LGPD (Lei Geral de Proteção de Dados) e ausência de gestão centralizada de dispositivos móveis — com vendedores externos acessando dados da empresa sem controle.

### Solução Arquitetada
Proposta executiva completa com 5 soluções de infraestrutura:

| Solução | Objetivo |
|---|---|
| **Active Directory** | Centralização de identidades e controle de acesso |
| **Kaspersky Endpoint** | Proteção contra malware e ameaças externas |
| **Acronis Backup** | Backup automatizado e recuperação de desastres |
| **IBM MaaS360** | MDM — gestão de dispositivos móveis |
| **Microsoft 365 Business Standard** | Produtividade, e-mail corporativo e colaboração |

Cada solução embasada em **casos reais de incidentes brasileiros**, com análise de custo-benefício e roadmap de implementação por fases.

### Resultado
> Proposta aprovada pela diretoria. Roadmap de implementação iniciado.

---

## 📈 Lead Lifecycle Visualizer
**Status:** 🌐 Público · **Ano:** 2025

### Problema
Time comercial sem alinhamento visual sobre o ciclo de vida de um lead. Falta de clareza sobre as ações esperadas em cada etapa e os pontos críticos de perda de conversão.

### Solução Arquitetada
Componente React interativo com visualização completa do funil:

- **6 estágios animados:** da prospecção ao fechamento
- **Métricas por etapa:** taxa de conversão e tempo médio de permanência
- **Ações mapeadas:** checklist de ações esperadas em cada etapa
- **Drill-down por clique:** detalhamento ao clicar em cada estágio
- **Transições fluidas:** animações CSS com timing cuidadoso

### Stack
`React` · `CSS Animations` · `JavaScript` · `Hooks`

### Resultado
> Onboarding comercial acelerado. Alinhamento visual do time sobre o processo de vendas.

---

<div align="center">
  <sub>Osmar Zanateli Moreno · github.com/OsmarZM · © 2026</sub>
</div>
