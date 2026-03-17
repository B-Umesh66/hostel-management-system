# 🏨 Hostel Management System (Flask + MySQL)

A full-stack Hostel Management System built using **Flask (Python)** and **MySQL**, designed to efficiently manage hostel operations such as student allocation, room management, outpass requests, and administrative control.

---

## 🚀 Features

* 👨‍🎓 Student registration and hostel allocation
* 🏢 Hostel and room management
* 🔄 Room change request system
* 📝 Outpass request and approval system
* 👮 Warden management
* 🔐 Admin login system
* ⚙️ Database constraints and triggers for data integrity

---

## 🛠️ Tech Stack

* **Backend:** Flask (Python)
* **Database:** MySQL
* **Frontend:** HTML, CSS (Jinja Templates)
* **Tools:** Git, GitHub

---

## 📂 Project Structure

```bash
Hostel Management System/
│── app.py
│── requirements.txt
│── DBMS files/
│   ├── Create_Tables.sql
│   ├── Insert_Values.sql
│   └── Triggers.sql
│── templates/
│── static/
```

---

## ⚙️ Setup Instructions

### 1️⃣ Clone the repository

```bash
git clone https://github.com/B-Umesh66/hostel-management-system.git
cd hostel-management-system
```

---

### 2️⃣ Create virtual environment & install dependencies

```bash
python -m venv .venv

# Windows
.venv\Scripts\activate

pip install -r requirements.txt
```

---

### 3️⃣ Database Setup

#### Create database

```bash
mysql -u root -p
```

```sql
CREATE DATABASE hostel_management;
USE hostel_management;
```

---

### Import SQL Files

#### ✅ Recommended (MySQL SOURCE)

```sql
SOURCE C:/full/path/to/DBMS files/Create_Tables.sql;
SOURCE C:/full/path/to/DBMS files/Insert_Values.sql;
SOURCE C:/full/path/to/DBMS files/Triggers.sql;
```

💡 Example:

```sql
SOURCE C:/Users/YourName/Documents/Hostel Management System/DBMS files/Create_Tables.sql;
```

---

#### ✅ Using Command Prompt (CMD)

```cmd
mysql -u root -p hostel_management < "DBMS files/Create_Tables.sql"
mysql -u root -p hostel_management < "DBMS files/Insert_Values.sql"
mysql -u root -p hostel_management < "DBMS files/Triggers.sql"
```

---

#### ⚠️ Using PowerShell

```powershell
Get-Content "DBMS files/Create_Tables.sql" | mysql -u root -p hostel_management
Get-Content "DBMS files/Insert_Values.sql" | mysql -u root -p hostel_management
```

> ⚠️ Use MySQL `SOURCE` method for triggers (recommended)

---

### 4️⃣ Run the application

```bash
python app.py
```

Open in browser:
👉 http://127.0.0.1:5000/

---

## 🧠 Database Highlights

* 🔗 Foreign key relationships ensure consistency
* ⚡ Triggers enforce rules:

  * Prevent gender mismatch in hostel allocation
* 📊 Structured relational schema

---

## 📸 Screenshots

### 🏠 Home Page
<img width="1915" height="898" alt="Hostel management system" src="https://github.com/user-attachments/assets/b7837882-01d5-4530-8e0c-607421320e09" />

### 🧑‍🎓 Student login page
<img width="1919" height="912" alt="student login" src="https://github.com/user-attachments/assets/dca7644b-b028-44eb-b543-37c6b5b5c3b0" />

### 📝 Outpass Request
<img width="1919" height="469" alt="outpass" src="https://github.com/user-attachments/assets/89bf0049-8487-4604-8635-1ef0e1e11438" />





---

## 🔐 Security Notes

* Passwords are stored in plain text (for academic/demo use)
* For production:

  * Use password hashing (bcrypt)
  * Store credentials in environment variables

---

## 📌 Future Improvements

* Role-based authentication system
* REST API integration
* UI enhancements (Bootstrap/React)
* Deployment (Render / AWS / Docker)

---

## 👨‍💻 Author

**Umesh B**
🔗 GitHub: https://github.com/B-Umesh66

---

## ⭐ If you like this project

Give it a star ⭐ on GitHub!
