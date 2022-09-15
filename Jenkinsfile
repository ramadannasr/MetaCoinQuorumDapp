pipeline {
    agent any

    stages {
        stage('Build SimpleStorage Quorum Dapp') {
            steps {
                nodejs('Node 16.x') {
                    ansiColor('css') {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle compile'
                    }
                }
            }
        }
        stage('Test') { 
            steps {
                nodejs('Node 16.x') {
                    ansiColor('vga') {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle test'
                    }
                }
            }
        }
    }
}
