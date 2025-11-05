# 🍴 GetFood - Food Waste Reduction Project

GetFood is a simple web application built using **Spring Boot** and **MySQL** that helps reduce food waste by allowing users to share leftover or surplus food with others.

---

## 🧱 Project Structure

```
getfood/
├── src/
│   ├── main/
│   │   ├── java/project/getfood/
│   │   │   ├── controller/
│   │   │   ├── model/
│   │   │   ├── repository/
│   │   │   └── config/
│   │   └── resources/
│   └── test/
├── pom.xml
├── mvnw
├── mvnw.cmd
└── README.md
```

---

## ⚙️ How to Run

1. **Clone this project:**

   ```bash
   git clone https://github.com/yourusername/getfood.git
   cd getfood
   ```

2. **Configure MySQL in `application.properties`:**

   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/getfood_db
   spring.datasource.username=root
   spring.datasource.password=yourpassword
   spring.jpa.hibernate.ddl-auto=update
   ```

3. **Run the application:**

   ```bash
   ./mvnw spring-boot:run
   ```

   The app will start on **[http://localhost:8080](http://localhost:8080)**

---

## 🧩 Example Endpoint

**GET** `/food/all` – returns all available food posts
**POST** `/food/add` – adds a new food post

---

## 🧠 About

This project’s goal is to connect people who have excess food with those who need it — helping to **reduce food waste** and **support local communities**.

---

**Made with ❤️ using Spring Boot**  in which dir