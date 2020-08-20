pipeline{
        agent any
        stages{
            stage('Clone repository'){
                steps{
		    sh "cd .."
                    sh "git clone https://gitlab.com/qacdevops/chaperootodo_client"
                }
            }
            stage('Install docker & docker compose'){
                steps{
                    sh "curl https://get.docker.com | sudo bash"
		    sh "sudo apt update"
		    sh "sudo apt install -y curl jq"
		    sh "sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose"
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
