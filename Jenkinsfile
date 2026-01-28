pipeline {
    agent any
    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'test', 'prod'], description: 'Select the target environment')
        booleanParam(name: 'RUN_TESTS', defaultValue: true, description: 'Check to run unit tests')
    }
    stages {
        stage('Initialize') {
            steps {
                echo "Deploying to: ${params.ENVIRONMENT}"
            }
        }
        stage('Conditional Test') {
            when { expression { params.RUN_TESTS == true } }
            steps {
                echo "Running unit tests for ${params.ENVIRONMENT}..."
            }
        }
    }
}
