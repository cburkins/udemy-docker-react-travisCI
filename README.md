### Intent:

1. When you push changes to your Github master branch, Github will notify Travis CI
1. Travis will read your .travis.yml file for instructions on what to do
1. Based on .travis.yml file, Travis CI will run a React test, then push code to Elastic Beanstalk container

### Instructions for setup

1. Clone this repo to your local machine
1. Setup a Travis CI account
1. Via Travis CI dashboard, install the TravisCI app into your Github account
1. Create an Elastic Beanstalk container (takes a few minutes)
1. Keep going, Create an AWS User with profile "AWSElasticBeanstalkFullAccess"
1. Copy AccessKey/SecretKey to Travis (witin repo, goto settings, then Environment variables)
1. Go back and check your Elastic Beanstalk container
1. Transcribe your Elastic Beanstalk config (name, env name, S3 bucket name, etc) into .travis.yml

### Instructions for repeated code updates

1. Push a change into the master branch

1) Verify that Travis CI started a build

![image](https://user-images.githubusercontent.com/9342308/71942308-c3e47a80-318a-11ea-9487-3637ffaec1d4.png)

1. In just a bit, verify that Elastic Beanstalk started a deployment

![image](https://user-images.githubusercontent.com/9342308/71942388-0c039d00-318b-11ea-93fc-7339c2ded87a.png)

1. Click here to access your deployed web page

![image](https://user-images.githubusercontent.com/9342308/71942478-5f75eb00-318b-11ea-88bb-1d4b94046d77.png)
