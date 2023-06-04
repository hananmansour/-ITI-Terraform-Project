<h1>ITI-Terraform-Project</h1>
This is a project associated with terraform course in the Intensive Code Camp program Systems Administration track at ITI.

<h2>In this project we implement this design</h2>

![Project](https://github.com/hananmansour/-ITI-Terraform-Project/assets/66485038/ccd55925-06e4-4c74-8679-629a606297ae)

<h2>What is state and why is it important in Terraform?</h2>
Terraform must store state about your managed infrastructure and configuration.
This state is used by Terraform to map real world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.
This state file is extremely important; it maps various resource metadata to actual resource IDs so that Terraform knows what it is managing.
This file must be saved and distributed to anyone who might run Terraform.
<br>

<h2>State Lock:</h2>
If supported by your backend, Terraform will lock your state for all operations that could write state. 
This prevents others from acquiring the lock and potentially corrupting your state.

<br>
<h2>The output</h2>
<h3>App instance and DB instance</h3><br>

![1](https://github.com/hananmansour/-ITI-Terraform-Project/assets/66485038/efdd33e2-1028-43ff-9f1e-6efe09e435c9)

<h3>terraform.tfstate file stored in s3 bucket</h3><br>

![2](https://github.com/hananmansour/-ITI-Terraform-Project/assets/66485038/1629e1a5-3082-47e2-8f60-ded17aaea076)

<h3>notice under Items in DynamoDB we got the .tfstate file on Dynamodb with a Lock string.</h3><br>

![3](https://github.com/hananmansour/-ITI-Terraform-Project/assets/66485038/f872ac06-9271-4df7-a8db-1562cf440815)
