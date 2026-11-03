pipeline {
    agent any
    stages {
        stage('Build & Run') {
            steps {
                checkout scm
                sh 'docker build -t app .'
                sh 'docker rm -f test-container || true'
                sh 'docker run -d --name test-container app'
                sh 'sleep 2 && docker ps -f name=test-container'
            }
        }
    }
    post {
        always { sh 'docker rm -f test-container || true' }
    }
}
