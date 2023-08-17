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
                sh 'sudo docker build -t python-img3 .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo docker run -p 8085:8085 -d python-img3'
            }
        }
    }   
}
