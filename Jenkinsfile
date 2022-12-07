pipeline{
        agent any
        stages{
            stage('Build App'){
                steps{
                    sh "sudo -S rm -rf chaperootodo_client/"
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client"
                    sh "./docker-install.sh"
                    sh "sudo usermod -aG docker jenkins"
                    sh "reset"
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