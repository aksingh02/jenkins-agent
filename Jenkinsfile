pipeline {
agent { dockerfile true }

   stages {

    stage('Cloning Git') {
	    steps{
	      sh 'echo checking out source code'
	    }  
     }  
 
    stage('Test'){
      steps{
      	sh 'echo SAST stage'
	   }
    }

    
    stage('Build-and-Tag') {
    /* This builds the actual image; synonymous to
         * docker build on the command line */
      steps{	
        sh 'echo Build and Tag'
          }
    }
 }


}
