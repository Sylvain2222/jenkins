pipeline {
    agent any

	stages {
		stage('Build') {
			steps {
				sh './jenkins/build/maven.sh'
 				sh './jenkins/build/build.sh'
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
