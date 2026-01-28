pipeline {
    agent any
    stages {
        stage('Build & Security Scan') {
            steps {
                echo "Building Production Artifacts and running security scans..."
            }
        }
        stage('Approval Gate') {
            steps {
                input message: "Does the Staging environment look good? Approve for Production?"
            }
        }
        stage('Deploy to Production') {
            steps {
                echo "🚀 Deploying to Production Servers..."
            }
        }
    }
}
