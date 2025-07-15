pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Anjaliitagi/docker15thjul.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8080:8080 myapp:latest'
            }
        }
    }
}
