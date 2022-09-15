pipeline {
    agent any

    stages {
        stage('Build') { 
            steps {
                nodejs('Node 8.x') {
                    ansiColor {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle compile'
                    }
                }
            }
        }
        stage('Test') { 
            steps {
                nodejs('Node 8.x') {
                    ansiColor {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle test'
                    }
                }
            }
        }
    }
}
