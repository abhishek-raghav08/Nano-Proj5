Step 1: Propose and Scope the Project
    CIRCLE CI will be used as pipline and Rolling build strategy will be used.
    A simple html index.html file will be created.
    An image containing the index.html will be pushed to docker hub.
    image name is : abhishekraghav08/uda-capstone:uda-capstone
    Kubernets Cluster will be created & deployed.
    Testing of deployment will be done by checking the status of deployment.
    if required rollback will be performed.

Step 2: Use Jenkins or Circle CI, and implement blue/green or rolling deployment.
Circle CI will be used. Link to pipline
https://app.circleci.com/pipelines/github/abhishek-raghav08?filter=mine

Step 3: Pick AWS Kubernetes as a Service, or build your own Kubernetes cluster.
    AW EKS will be used to create Kubernets &  deployed required resources ie. EC2 instances, load balancer. Please find the screen shots "EC2 instances.jpg" & "Loadbalancer.jpg".
    Cloudformation scripts are used to build infrastructure. Please see "deployment.yml"

Step 4: Build your pipeline
Circle CI pipeline created. Here are the Job/Step details:

    run-lint                        : step to lint the docker file
    build-push-image                : Step to build and push Docker image to Docker hub
    create-capston-cluster          : Step to Create the Kubernetes Cluster.
    deploy-capston-app              : Step to Build required infrstructres.
    test-capston-app                : Step to test the deployment staus.
    aws-eks/update-container-image  : Step to Update the Container image
    undeploy-capston-app            : Roll Back step
    delete-capston-cluster          : Clean up step

    Dockerfile added in root folder         : "Dockerfile"
    File to deploy Cluster and resources    : "deployment.yml"
    Git hub repository                      : https://github.com/abhishek-raghav08/Nano-Proj5
    Linting steps snapshots added in screenshots folder :  "Lint-fail.jpg" & "lint-succesful.jpg" 

Step 5: Test your pipeline
Rolling Build strategy is used. Below are the different screenshots captured and descriptions:

    for old build snapshot in Screenshots folder            : "Blue-build.jpg"
    For updated build snapshot in the screenshots folder    : "Green-build.jpg"
    For EKS CLuster created                                 : "EKS Cluster Created.jpg"
    For Rollout Status                                      : "Resource rollout status-update job.jpg"
    Resource Status after Rollut                            : "Resource rollout status-update job.jpg"
    For EC2 Instances running                               : "EC2 Instance.jpg"
    CircleCI snapshot for successful pipeline run           : "CircleCI successful run.jpg"
    CircleCI Workflow for succesful run                     : https://app.circleci.com/pipelines/github/abhishek-raghav08/Nano-Proj5/44/workflows/2757a7f9-250c-474e-bee2-330e4f068fd4

All screenshots are kept in "Screenshots" folder in Github repository: https://github.com/abhishek-raghav08/Nano-Proj5