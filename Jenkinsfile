pipeline {
agent { dockerfile true }

   stages {

    stage('Cloning Git') {
	    steps{
	      sh 'echo checking out source code'
	    }  
     }  

    
    stage('Build-and-Tag') {
      steps{	
        sh 'echo Build and Tag'
          }
    }

    stage('Post-to-dockerhub') {
     steps {
        sh 'echo post to dockerhub repo'
     }
    }
    
 }


}
