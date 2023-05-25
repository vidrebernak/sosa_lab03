pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage("Clone Repository") {
            steps {
                bat "clone.bat"
            }
        }
        stage("Run Tests and Bandit") {
            steps {
                bat "test.bat"
            }
        }
        stage("Deploy to Production") {
            steps {
                bat "deploy.bat"
            }
        }
    }
    post {
        always {
            bat 'rmdir /s /q ..\\test'
        }
    }
}