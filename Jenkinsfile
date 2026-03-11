pipeline {
    agent {
        label 'docker-agent'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Infrastructure Validation') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'develop') {
                        sh './validation/run-dev.sh'
                    } else if (env.BRANCH_NAME.startsWith('release/')) {
                        sh './validation/run-staging.sh'
                    } else if (env.BRANCH_NAME == 'main') {
                        sh './validation/run-prod.sh'
                    }
                }
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'validation-output/*.txt', allowEmptyArchive: true
        }
    }
}