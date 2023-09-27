pipeline {
  agent {
    docker {
      image 'docker-agent-slave'
    }
  }

  stages {
    stage('Build') {
      steps {
        echo 'Building the application...'
      }
    }

    stage('Test') {
      steps {
        echo 'Testing the application...'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying the application...'
      }
    }
  }
}
