pipeline {
    agent any
    environment{
        DOCKERHUB_CREDS = credentials('dockerhub')
    }

    stages {
        stage('connect to Gihub') {
            steps {
                git branch: 'main', url: 'https://github.com/02majid/GitOps.git'
            }
        }
        
        stage('Build Image') {
            steps {
                sh 'docker build -t 02majid/gitops:$BUILD_NUMBER .'
            }
        }
        
        stage('Docker Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDS_PSW | docker login -u $DOCKERHUB_CREDS_USR --password-stdin'
            }
        }
        
        stage('Docker Push') {
            steps {
                sh 'docker push 02majid/gitops:$BUILD_NUMBER'
            }
        }
    }
}
