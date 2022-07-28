# one2onetool

Summary:-

I have used github actions to create a workflow.
Release branch has environment variable "DATA_FILE" and staging branch does not have it. 
email will be sent out after the job completion with the status. 
codeql has been used for verifying the quality of the code after which the build will start.

I have added files "Dockerfile" -- for docker build of nodejs image , 
                    "assignment-task.json" --- for task definition and container definition to be used in AWS ECS.
                    ".foreverignore" --- for using forever to start the service in cmd of docker. 
                    
image tag is changed to have "master-one2oneapp" in master branch, stage-one2oneapp in staging branch and release-one2oneapp in release branch.

in AWS :
 we have created an ecs repository with name "assignment21jul".
 we have created an ecs cluster with name "assignment-cluster".
 we have added a service within the cluster with name "assignment-service"
 we have added vpc network with host network enabled on port 3000.
 we have created sample container template with name "assignment-container".
 we have enabled VPC (subnet) to assign dynamic public ipv4 addresses. 
 
after triggering the work flow from github actions, deployment completed successfully and services tested with loadbalancer dns and port number 3000. 


****************************************************************************************************************************************************************
----------------------------------------------------------------------------------------------------------------------------------------------------------------


Note:-

I have created this Project in AWS with my login credential and I have verified the codes with my internal team, as team suggested to create 2 load balancer 
because to code update in staging/release branch which should not overwrite the existing branch, I have created ECS cluster as advised but due to time constraint
unable to fix the issue in load balancer level. I hope single load balancer work fine for this assessment 

Please follow the step to run github-action-workflow

1) Use below login credential to login the repository 

   github.com/danraman/one2onetool   
     get.draman@gmail.com / Passw0rd@12345
	 
  Next:- Go to the main page go to the <>Code  and select the branch below ,, which branch you need to execute the code..
  
 
2) Once select the branch  go to ---> Actions in the top of the tool bar, you will see ALL workflows --> Select  data_file (project name)

3)  Once select the Project --> Run workflow will be enable  and select the branch here also and run (run workflow) from the left side of the same page.

4) Refresh the page to view the executed job and you will see data_flow job which is executed recently.

5) Double click  data_flow running job and you see the stages of the deployment. Plese monitor the stages.

Note:- 

   LoadBalancer Url to view the deployment status:-
   
   http://EC2Co-EcsEl-1PBOINB4S8VEX-1335161565.us-east-1.elb.amazonaws.com:3000

