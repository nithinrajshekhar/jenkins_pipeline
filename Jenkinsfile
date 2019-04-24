pipeline {

agent {
	
node {
	
label 'master'
	
}
	
}
	
parameters {

choice(
	
name: 'deploy',
	
choices: 'plan\napply',
	
description: 'plan or apply terraform configuration to run'
	
)
	
choice(
	
name: 'approvals',
	
choices: '\n-auto-approve',
	
description: 'approve terraform'
	
)
	
}
	
environment {
	WORKDIR_CMD = '/var/lib/jenkins/workspace/FirstPipeline/'
  DEPLOYMENT = "${params.deploy}"
  APPROVE = "${params.approvals}"
}
	
stages {
	
stage('checkout-repo') {
	
steps {
	
checkout scm
	
}
	
}
	
stage('init-terraform') {
	
steps {
	
sh 'cd ${WORKDIR_CMD} && terraform init' 
	
}
	
}

	
stage('deploy-terraform') {
	
steps {
	
sh 'cd ${WORKDIR_CMD} && terraform $DEPLOYMENT $APPROVE'
	
}
	
}
	
}
	
}
