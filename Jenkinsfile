def agentLabel
if (BRANCH_NAME == 'main') {
    agentLabel = 'master'
} else {
    agentLabel = ''
}

pipeline {
    agent { label agentLabel }
        stages {
            stage('deploy') {
                when {
                    branch 'main'
                }
                steps {
                    echo 'Deploying....'
                    sh 'docker-compose rm -svf keycloak'
                    sh 'docker-compose up -d --build'
                }
            }
        }
}
