pipeline {
    agent any
    // environment {
    // mavenHome = tool name:'M2',type:'maven'
	// mavencmd= "${mavenHome}/bin/mvn"
	// }
    stages {
        stage("Git code") {
            steps {
            bat label: '', script: 'dir'
            }
        }

        stage("Build Spring Boot Application") {
            steps {
                bat label: '', script: 'mvn -f pom.xml clean package'
            }
		}
        stage("build docker image"){
		    steps {
                bat label: '', script: "docker build -t 8458882343/devops-springboot:latest ."
		    }
		}
        // stage("Push docker image"){
		//     steps {
        //        withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'LOGIN', usernameVariable: 'USER')]) {
        //             sh "docker login -u $USER -p $LOGIN"
        //             sh "docker push 8458882343/devops-springboot:latest"
        //         }
		//     }
		// }
	}
	post { 
        always {
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
        }
    }
}