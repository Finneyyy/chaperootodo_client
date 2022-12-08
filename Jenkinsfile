pipeline{
        agent any
        environment{
            DB_PASSWORD='password123'
        }
        stages{
            stage('Install '){
                steps{
                    sh "rm -rf chaperootodo_client/"
                    git branch: 'main', url: 'https://github.com/Finneyyy/chaperootodo_client.git'                    
                }
            }    
            stage('Install Docker'){
                steps{
                    // sh "whoami"
                    // sh "pwd"
                    // sh "ls -la"
                    sh "sudo -S usermod -aG sudo jenkins"
                    sh "sudo ./setup.sh"
                }
            }
            stage('Run App'){
                steps{
                    sh "sudo docker-compose pull && sudo -E DB_PASSWORD=${DB_PASSWORD} docker-compose up -d"
                }
            }
        }
}