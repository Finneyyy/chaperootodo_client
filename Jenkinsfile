pipeline{
        agent any
        stages{
            stage('Build App'){
                steps{
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client"
                    sh "./docker-install.sh && reset"
                    sh "./docker-compose.sh"
                }
            }
            stage('Run App'){
                steps{
                    sh "DB_PASSWORD=password123"
                    sh "sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d"
                }
            }
        }
}