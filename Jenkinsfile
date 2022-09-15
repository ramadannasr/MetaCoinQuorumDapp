pipeline {
    agent any

    stages {
        stage('Build SimpleStorage Quorum Dapp') {
            steps {
                nodejs('Node 16.x') {
                    ansiColor('css') {
                        bat 'npm install'
                        bat 'node_modules/.bin/truffle compile'
                    }
                }
            }
        }
        stage('Test') { 
            steps {
                nodejs('Node 16.x') {
                    ansiColor('vga') {
                        bat 'npm install'
                        bat 'node_modules/.bin/truffle test'
                    }
                }
            }
        }
    }
}
