pipeline {
    agent any
    tools{
    nodejs '16.17.0'
    }
    stages {
        stage('Build SimpleStorage Quorum Dapp') {
            steps {
                    ansiColor('css') {
                        bat 'npm install'
                        bat 'node_modules/.bin/truffle compile'
                    }
            }
        }
        stage('Test') { 
            steps {
                    ansiColor('vga') {
                        bat 'npm install'
                        bat 'node_modules/.bin/truffle test'
                    }
            }
        }
    }
}
