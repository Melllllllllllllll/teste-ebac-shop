pipeline {
    agent any
    environment {
        NO_COLOR = 'true'
    }

    stages {
        stage('Acessar GitHub') {
            steps {
                git branch: 'main', url: 'https://github.com/Melllllllllllllll/testes-e2e-ebac-shop.git'
            }
        }
    stage('Instalar Dependencias') {
            steps {
              bat 'npm install'
            }
        }
    stage('Executar testes') {
            steps {
               bat 'npm run cy:run'
            }
        }
    }
    
}
