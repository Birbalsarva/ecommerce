pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                 git url: "https://github.com/Birbalsarva/ecommerce.git", branch: "main"
            }
        }
        stage('Build') {
            steps {
                // Build the frontend Docker image
                script {
                    docker.build('frontend', './frontend')
                }
                // Build the backend Docker image
                script {
                    docker.build('backend', './backend')
                }
            }
        }
        
        stage('Test') {
            steps {
                // Install Node.js and npm
                sh 'curl -fsSL https://deb.nodesource.com/setup_16.x | bash -'
                sh 'apt-get install -y nodejs'
                
                // Install project dependencies
                sh 'cd frontend && npm install'
                
                // Run unit tests and integration tests for the frontend
                sh 'cd frontend && npm test'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy the application using Docker Compose
                sh 'docker-compose up -d'
            }
        }
    }
    
    post {
        always {
            // Clean up after the pipeline execution
            sh 'docker-compose down'
        }
    }
}
