pipeline {
    agent any

    stages {

        stage('Pull Code') {
            steps {
                echo "✅ Code pulled from Git automatically by Jenkins"
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myapp .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                docker stop myapp-container || true
                docker rm myapp-container || true
                '''
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name myapp-container -p 9090:80 myapp'
            }
        }
    }

    post {
        success {
            echo "✅ Application deployed successfully!"
        }
        failure {
            echo "❌ Deployment failed!"
        }
    }
}
