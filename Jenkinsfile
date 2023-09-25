pipeline {

  environment {
    dockerimagename = "aks0207/jenkins-agent"
    dockerImage = ""
  }

  agent {
    kubernetes {
      yamlFile 'demo.yaml'
      idleMinutes 1
    }
  }

  stages {

  //   stage('Checkout Source') {
  //     steps {
  //       git branch: 'main', url: 'https://github.com/aksingh02/nginx-jenkins.git'
  //     }
  //   }

    stage('Build maven code') {
      steps {
      container('mavencontainer') {  
          sh "mvn clean install"
       }    
      }
    }


    stage('Pushing Image') {
      environment {
               registryCredential = 'dockerhub-credentials'
           }
      steps{
        script {
          docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
            dockerImage.push("latest")
          }
        }
      }
    }
  }

  }
