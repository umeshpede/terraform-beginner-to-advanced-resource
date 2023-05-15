pipeline {
        agent
    {
        label 'deploy'
    }
        stages
        {
                stage('terragrunt installation')
                   {
                           steps
                           {
                                   script
                                   {
                                          sh 'sudo sh terragrunt.sh'
                                           //sh 'sudo chown 777 /usr/local/bin/terragrunt'
                                   }
                           }
                   }
              stage ('Terragrunt plan')
                 {
                    steps
                    {
                           script
                            {
                               sh 'terragrunt --help'
                            }
                    }
                }
        }
}
