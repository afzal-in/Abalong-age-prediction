pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'sudo docker build -t python-img .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo docker run -p 8081:8081 -d python-img'
            }
        }
    }   
}
