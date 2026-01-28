pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building application for Testing/QA..."
            }
        }
        stage('Integration Tests') {
            steps {
                echo "Running heavy integration and smoke tests..."
            }
        }
        stage('Deploy to Staging') {
            steps {
                echo "Deploying to QA/Staging environment..."
                // Example: sh 'kubectl apply -f deployment.yaml'
            }
        }
    }
}
