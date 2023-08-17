pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm: checkout scm: [$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/afzal-in/Abalong-age-prediction.git']]]
            }
        }
        
        stage('Build') {
            steps {
                sh 'sudo docker build -t python-img2 .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo docker run -p 8083:8083 -d python-img2'
            }
        }
    }   
}
