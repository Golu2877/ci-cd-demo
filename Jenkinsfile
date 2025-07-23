pipeline {
    agent any  // Where to run this pipeline (local/any Jenkins agent)

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning the repository...'
                // git url: 'https://github.com/username/repo.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
                // Run build commands like: sh './build.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Run test commands like: sh './test.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the project...'
                // Deployment steps
            }
        }
    }
