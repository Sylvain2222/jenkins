pipeline {
    agent any
    
    environment {
	PASS = credentials('sylvain')
    }
	stages {
		stage('Build') {
			steps {
				sh './jenkins/build/maven.sh'
 				sh './jenkins/build/build.sh'
			}
			post {
				success {
					archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
				}
			}
		}
		stage('Test') {
			steps {
				sh './jenkins/build/test.sh'
			}
		}
		stage('Push') {
			steps {
				sh './jenkins/build/push.sh'
			}
		}
		stage('Deploy') {
			steps {
				sh './jenkins/build/deploy.sh'
			}
		}
	}
}
