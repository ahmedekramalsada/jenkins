pipeline {
    agent any
    stages {
        stage('Identify Branch') {
            steps {
                echo "Building on branch: ${env.BRANCH_NAME}"
            }
        }
        stage('Build') {
            steps {
                echo "Performing build for ${env.BRANCH_NAME}..."
            }
        }
        stage('Deploy to Dev') {
            when {
                branch 'dev'
            }
            steps {
                echo "Deploying to Development Environment"
            }
        }
        stage('Deploy to Test') {
            when {
                branch 'test'
            }
            steps {
                echo "Deploying to Testing Environment"
            }
        }
        stage('Deploy to Master') {
            when {
                branch 'master'
            }
            steps {
                echo "Deploying to Production (Master)"
            }
        }
    }
}
