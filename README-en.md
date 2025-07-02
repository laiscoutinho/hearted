# 💕 Hearted — A Gamified Platform for Couples

Hearted is an interactive and gamified web application designed for couples to document their emotional journey, strengthen bonds through challenges, letters, shared lists, and earn points for meaningful interactions.

> Created with both emotional and educational focus, this project was built to practice skills in **Spring Boot (backend)** and **React + Tailwind (frontend)**, emphasizing **gamification, integration, and emotional UX**.

---

[Prototype Figma](https://www.figma.com/design/vOL1bmjgk6OVnu24TTiX0r/Hearted?t=vS6CPJRLTUvxbGrh-0)

---

### **🌐 Language:**  
🇺🇸 English | [🇧🇷 Portuguese](README.md)

---

## ✨ Key Features

- ✅ Link two users as a couple with a custom nickname  
- ✅ Private feed for sharing photos and text posts  
- ✅ Daily mood tracking using emojis  
- ✅ **Points system** for emotional actions (posts, letters, playlists, etc.)  
- ✅ **Daily challenges** with rewards and penalties  
- ✅ Create and manage **shared lists** (movies, trips, letters, etc.)  
- ✅ **Emotional calendar** with automatic date tracking  
- ✅ **Spotify integration** for shared playlists  
- ✅ Letter template store to unlock with points  
- ✅ Transfer points between partners  
- ✅ **Public couples ranking** based on total points  
- ✅ Admin panel to manage users, challenges, and templates

---

## 📚 Documentation

Full documentation with diagrams, database schema, and detailed modules is available in the [`/docs`](./docs) folder.

**Contents include:**

- System architecture overview  
- Database model (via dbdiagram.io)  
- Entity-relationship diagrams  
- Business rule descriptions  
- Feature and flow breakdown  
- MVP planning and roadmap

---

## 🧑‍💻 Tech Stack

### Backend:
- Java + Spring Boot  
- Spring Security + JWT  
- PostgreSQL  
- Postman  
- JPA/Hibernate  
- Flyway (DB versioning)

### Frontend:
- React.js  
- TailwindCSS  
- React Router DOM  
- Axios  
- Chart.js (monthly retrospectives)  
- Context API (session state management)

---

## 🚀 Running the Project

### 1. Clone the repository

```bash
git clone https://github.com/laiscoutinho/hearted
cd hearted
````

### 2. Backend (Spring Boot)

* Configure the `.env` or `application.properties` file with your DB credentials.
* Run with Maven or your preferred IDE:

```bash
cd backend
./mvnw spring-boot:run
```

### 3. Frontend (React)

```bash
cd frontend
npm install
npm run dev
```

---

## 🤝 Contributing

This is an educational project, but contributions are welcome!
If you have ideas for new challenges, letter templates, or improvements, feel free to open an issue or pull request.

---

## ✍️ Author

Developed by [**Laís Coutinho**](https://github.com/laiscoutinho/) — a Computer Science student passionate about software quality, UI/UX, and purpose-driven systems 💡
