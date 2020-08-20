pipeline{
        agent any
        stages{
            stage('Clone repository'){
                steps{
                    sh "./scripts/get-repo.sh"
                }
            }
            stage('Install docker & docker compose'){
                steps{
		    sh "./scripts/docker-installs"
                }
            }
            stage('Deploy application'){
		steps{
		    sh "./scripts/deploy.sh"
		}
            }   
 
      }	
}
