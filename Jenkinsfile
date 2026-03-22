pipeline {
    agent any

    tools {
        maven 'MAVEN3'
    }

    environment {
        DOCKERHUB_USER = 'ashwath1703'
        DOCKERHUB_PWD = credentials('dockerhub-pwd')
        IMAGE_NAME = "${DOCKERHUB_USER}/lab3-maven-webapp:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Ashwath1703/comp367-lab2.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Login') {
            steps {
                sh 'docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PWD'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push $IMAGE_NAME'
            }
        }
    }
}

Update Jenkinsfile for Docker pipeline
