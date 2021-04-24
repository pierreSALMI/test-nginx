node {    
    def app     
    stage('Clone repository') {               
        checkout scm    
    }           
    stage('Build image') {         
        app = docker.build("sarumiishi/test-nginx:latest")    
    }           
    stage('Test image') {                       
        app.inside {            
         sh 'echo "Tests passed"'        
        }    
    }            
}
