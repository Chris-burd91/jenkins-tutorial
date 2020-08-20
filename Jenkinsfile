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
		    sh "sudo chmod +x /usr/local/bin/docker-compose"
		    sh "docker-compose --version"
                }
            }
            stage('Deploy application'){
		steps{
		    sh "sudo docker-compose up -d"
		}
            }   
 
      }	
}
