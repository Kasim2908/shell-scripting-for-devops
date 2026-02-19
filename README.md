# 🚀 Shell Scripting for DevOps

This repository documents my hands-on journey learning **Bash/Shell Scripting** with a DevOps-focused approach.

The goal of this project is to build strong scripting fundamentals required for:

- Automation  
- Cloud operations  
- CI/CD pipelines  
- Infrastructure management  
- Error handling & debugging  

---

## 📌 What This Repository Covers

- Bash basics  
- Variables and arguments  
- Loops (`for`, `while`)  
- Conditional statements  
- Error handling  
- File & directory automation  
- AWS CLI automation  
- Real-world DevOps mini scripts  

---

## 📂 Project Structure
shell-scripting-for-devops/
│
├── day01/
├── day02/
├── day03/
├── day04/
│
├── create_ec2.sh
├── error_handle.sh
├── deploy_django_app.sh
└── README.md


---

## 🛠 Scripts Included

### 1️⃣ Loops Automation
- Create multiple directories dynamically using arguments
- Uses `for` loop with range input

### 2️⃣ Character Counter Script
- Counts characters in the running script
- Uses `wc -m`
- Demonstrates use of `$0`

### 3️⃣ AWS EC2 Automation
- Uses AWS CLI to launch EC2 instance
- Demonstrates region handling and CLI configuration

### 4️⃣ Error Handling Script
Uses:
```bash
set -e
trap 'echo "Error occurred"; exit 1;' ERR```


🚀 How to Run Scripts

Give execute permission:

chmod +x script_name.sh


Run script:

./script_name.sh


Example:

./for_loop.sh project 1 5



