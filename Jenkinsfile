pipeline {
    agent any
    tools{
    nodejs '16.17.0'
    }
       environment {
        JENKINS_UID = sh(returnStdout: true, script: "id -u ${USER}").trim()
    }
    stages {
        stage('Build SimpleStorage Quorum Dapp') {
            steps {
                    ansiColor('css') {
                        sh 'npm install'
                        sh 'node_modules/.bin/truffle compile'
                    }
            }
        }

        stage('Apply Config') {
            steps {
                sh 'bash -c "chown -R ${JENKINS_UID} ."'
                sh 'rm "truffle-config.js"'
                sh 'cp "nodeConfigFiles/truffle-config.js" .'



            }
        }
        stage('Test') {
            steps {
                sh 'node_modules/.bin/truffle test'
            }
        }

        stage('Deploy') {
            steps {

                sh 'node_modules/.bin/truffle migrate'

            }
        }
    }

        post {
        aborted {
            error "Aborted, exiting now"
        }
        failure {
            error "Failed, exiting now"
        }
    }
}
