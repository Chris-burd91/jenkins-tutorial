pipeline{
        agent any
        stages{
            stage('Clone repository'){
                steps{
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client"
                }
            }
            stage('Install docker & docker compose'){
                steps{
                    sh "curl https://get.docker.com | sudo bash"
		    sh ". ./docker-compose-install.sh"
                }
            }
            stage('Deploy application'){
		steps{
		    sh "sudo docker-compose up -d"
		}
        }   
 
}
}
