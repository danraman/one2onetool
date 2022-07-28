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

I have created this Project in AWS with my login credential and I have verified the deployment flow with my internal team, As team suggested to create 2 load balancer 
because if you do any code change in staging/release branch  the job will trigger automatically as per assigment but job should not overwrite the existing job.

I have tried to create one more  ECS cluster & load balancer but no luck and stuck with some issue in AWS level and unable to proceed due to time constraint
I hope single load balancer work fine for this assessment but it take more time to trigger the output

Please follow the below steps to run github-action-workflow:p

1) Use below login credential to login the repository 

   github.com/danraman/one2onetool   
     get.draman@gmail.com / Assessment@2022
	 
  Next:- Go to the main page --> go to the "<>Code"   and select the branch below ,, which branch you need to execute the code..
  
 
2) Once select the branch  go to ---> Actions in the top of the Menu bar, you will see ALL workflows --> Select  data_file (ie..project name)

3)  Once select the Project --> "Run workflow" will be enable  and select the branch  and  trigger (run workflow)  job  from the left side of the same page.

4) Refresh the page to view the executed job and you will see "data_flow" job which is executed recently.

5) Double click  data_flow running job and you see the stages of the deployment. Plese monitor the stages until complete.

Note:- 

Yesterday I was tried to create 2 loadbalancer as per the our team requirement and i had issue, Due to this job will run bit long in " Deploy Amazon ECS task Definition" stage and some time it get fails too, bocause of loadbalancer issue.

   LoadBalancer Url to view the deployment status:-
   
   http://EC2Co-EcsEl-1PBOINB4S8VEX-1335161565.us-east-1.elb.amazonaws.com:3000

