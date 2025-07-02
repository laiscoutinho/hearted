# 💕 Hearted — Plataforma Gamificada para Casais

Hearted é uma aplicação web interativa e gamificada para casais registrarem sua jornada afetiva, fortalecendo vínculos por meio de desafios, cartas, listas afetivas e pontuação por interação.

> Criado com foco educacional e emocional, esse projeto foi desenvolvido para treinar habilidades em **Spring Boot (backend)** e **React + Tailwind (frontend)** com foco em **gamificação, integração e UX emocional**.

---

[Prototipo Figma](https://www.figma.com/design/vOL1bmjgk6OVnu24TTiX0r/Hearted?t=vS6CPJRLTUvxbGrh-0)

---

### **🌐 Language:**  
[🇺🇸 English](README-en.md) | 🇧🇷 Portuguese

---

## ✨ Principais Funcionalidades

✅ Vincular dois usuários em um casal com apelido próprio  
✅ Feed de postagens com fotos e textos privados  
✅ Registro de humor diário (emoji)  
✅ Sistema de **pontos** por ações afetivas (posts, cartas, playlists, etc.)  
✅ **Desafios diários** com pontuação e penalidade se ignorado  
✅ Criação de **listas afetivas** (filmes, viagens, desejos, etc.)  
✅ **Calendário afetivo** com marcações automáticas  
✅ Integração com **Spotify** para playlists do casal  
✅ Loja de templates de cartas que podem ser "compradas" com pontos  
✅ Transferência de pontos entre parceiros  
✅ **Ranking público de casais** com mais pontos  
✅ Painel administrativo para gerenciamento de usuários, desafios e templates

---

## 📚 Documentação

A documentação completa com diagramas, modelo de banco e detalhamento de cada módulo está disponível na pasta [`/docs`](./docs).

📌 **Conteúdo da documentação:**
- Arquitetura geral do sistema  
- Modelo relacional do banco (dbdiagram.io)  
- Diagrama de entidades (ER)  
- Descrição das regras de negócio  
- Detalhamento das funcionalidades e fluxos  
- Planejamento do MVP e roadmap

---

## 🧑‍💻 Tecnologias Utilizadas

### Backend:
- Java + Spring Boot
- Spring Security + JWT
- PostgreSQL 
- Postman
- JPA/Hibernate
- Flyway (versão do banco)

### Frontend:
- React.js
- TailwindCSS
- React Router DOM
- Axios
- Chart.js (retrospectivas)
- Context API (gerenciamento de sessão)

---

## 🚀 Rodando o Projeto

<details>
<summary><strong>1. Clonando o repositório</strong></summary>

```bash
git clone https://github.com/laiscoutinho/hearted
cd hearted
````

</details>

<details>
<summary><strong>2. Backend (Spring Boot)</strong></summary>

* Configure o arquivo `.env` ou `application.properties` com as variáveis de conexão.
* Rode via Maven ou IDE:

```bash
cd backend
./mvnw spring-boot:run
```

</details>

<details>
<summary><strong>3. Frontend (React)</strong></summary>

```bash
cd frontend
npm install
npm run dev
```

</details>

---

## 🤝 Contribuições

Este projeto é mantido com fins educacionais, mas contribuições são bem-vindas!
Se tiver ideias de novos desafios, templates de cartas ou melhorias no sistema, fique à vontade para abrir uma issue ou PR.

---

## ✍️ Autora

Desenvolvido por [**Laís Coutinho**](https://github.com/laiscoutinho/) — estudante de Ciência da Computação e apaixonada por qualidade de software, UI/UX e sistemas com propósito 💡
