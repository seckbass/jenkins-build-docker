node{
	def app

	stage('Clone'){
		checkout scm	
	}

	stage('Build image'){
		app = docker.build("bassirou/nginx")
	}

	stage('Test image'){
		docker.image('nginx:latest').withRun('-p 80:80'){
			c -> 
			sh 'docker ps'
			sh 'curl localhost'
		}
	}
}
