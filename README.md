# one2onetool
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


Note:-

I have created this Project in AWS with my login credential and I have verified the codes with my internal team, as team suggested to create 2 load balancer 
because to code update in staging/release branch which should not overwrite the existing branch, I have created ECS cluster as advised but due to time constraint
unable to fix the issue in load balancer level. I hope single load balancer work fine for this assessment 

Load Balancer link mentioned below:-

http://ec2co-ecsel-10qmswv4b14xi-682940483.us-east-1.elb.amazonaws.com:3000/

