pipeline {
    agent any

    stages {
        stage('Build SimpleStorage Quorum Dapp') {
            steps {
                nodejs('latest') {
                    ansiColor('css') {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle compile'
                    }
                }
            }
        }
        stage('Test') { 
            steps {
                nodejs('latest') {
                    ansiColor('vga') {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle test'
                    }
                }
            }
        }
    }
}
