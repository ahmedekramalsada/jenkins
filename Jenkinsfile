pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo "Building application for Development..."
            }
        }
        stage('Unit Tests') {
            steps {
                echo "Running fast unit tests..."
            }
        }
        stage('Notify') {
            steps {
                echo "Dev Build Successful. Ready for PR to Test branch."
            }
        }
    }
}
