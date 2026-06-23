Container Security Lab

Overview
This project demonstrates how to containerize a simple Python web application using Docker and apply basic DevOps security practices such as vulnerability scanning and CI/CD automation.

It uses Flask for the web application, Docker for containerization, GitHub Actions for automation, and Trivy for security scanning.

What This Project Does
Builds a simple Python web application
Packages it into a Docker container
Runs the application inside a container
Scans the container for security vulnerabilities
Automates the process using GitHub Actions
Project Structure
.
├── app.py
├── requirements.txt
├── Dockerfile
└── .github/
    └── workflows/
        └── security.yml

How to Run Locally
Build the Docker image
docker build -t my-app:latest .
Run the container
docker run -p 5000:5000 my-app:latest
Open in browser
http://localhost:5000

Security Features
Uses a minimal base image
Runs the container as a non-root user
Installs only required dependencies
Includes automated vulnerability scanning using Trivy
Adds security checks in CI/CD pipeline using GitHub Actions
Manual Vulnerability Scan

You can scan the image locally with:
trivy image my-app:latest

What I Learned
How Docker containers work
How to containerize a Python application
Basic container security practices
How to automate workflows using GitHub Actions
How vulnerability scanning fits into CI/CD pipelines

Future Improvements
Use multi-stage Docker builds to reduce image size
Add deployment to a cloud platform
Add image signing for better security
Improve monitoring and logging