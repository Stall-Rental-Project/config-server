pipeline {
    agent {
              label 'server28'
          }
    environment {
         DOCKER_CREDENTIALS = credentials('docker-builder')
         BUILD_USER         = 'Jenkins'
         PROJECT_NAME       = 'mhservice'
         SERVICE_NAME       = 'cloud-config'
         ENVIRONMENT        = 'prod'
    }
    stages {
        stage("Maven Build") {
            steps {
              sh "mvn clean install -U"
            }
        }
        stage("Docker build") {
            steps {
            sh 'docker build -f Dockerfile_${ENVIRONMENT} --network=host --rm=true -t docker-host.banvien.com.vn/${PROJECT_NAME}/${ENVIRONMENT}/${SERVICE_NAME}:${TAG} .'
            }
        }
        stage("Docker Push") {
            steps {
                sh "docker push docker-host.banvien.com.vn/${PROJECT_NAME}/${ENVIRONMENT}/${SERVICE_NAME}:${TAG}"
                sh "docker rmi docker-host.banvien.com.vn/${PROJECT_NAME}/${ENVIRONMENT}/${SERVICE_NAME}:${TAG}"
            }
        }
    }
}
