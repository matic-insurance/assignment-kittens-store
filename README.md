# Kittens Store
Small Sinatra application that returns information about cats available in the store.

The application is a combination of plain text and JSON endpoints. Currently available endpoints
- `/` - hello page
- `/kittens/info` - Read count of kittens in database and presents info in readable text

### Assignment
Our company developed and released MVP of this application.
We envision a great potential for the app and would like to keep building it in a fast and reliable way.
In order to present MVP to the stakeholders, we should build and deploy the application on our primary Cloud.

### Requirements (Must have)

- Package application by writing dockerfile(s) and store the image in container registry (e.g DockerHub or AWS ECR)
- Spin up Kubernetes cluster in the Cloud environment
- Deploy application dependency resources (e.g. database) in the Cloud or k8s cluster
- Deploy the application into k8s cluster and show the working state
- (*) Configure HPA (Horizontal Pod Autoscaler) and demonstrate that application can be scaled under the pressure (e.g. amount of requests/sec or cpu usage)

### Requirements (Nice to have)

- Use AWS as primary Cloud platfrom
- Use Terraform as a main Infrastructure provisioning tool
- Use Helm as primary tools for organizing deployment manifests
- Automation - who likes to perform manual steps?
- Configuration - how can we adopt a similar solution for other products/flows/technologies?
- Code - infrastructure/provision as a code works the best to be readable for all engineers, maintain truth and avoid any hidden manual configurations.

As you work on your solution you will inevitably have questions - please send all inquiries via Slack. We are happy to assist and help


### Setup and run application

#### Setup
Need ruby 2.4.9
- `bundle install` - install dependency
- Configure database in `config/database.yml` or pass configuraton via `DATABASE_URL` (see section below)
- `bundle exec rake db:create` - create db and run migrations
- `bundle exec rake db:migrate` - migrate db to latest version
- `bundle exec rake db:seed` - seed database with basic data

#### Run application
- `bundle exec rackup --port 1234 --host 0.0.0.0` - Launch web application on port `1234`

#### Environment variables
- `DATABASE_URL` - url to database e.g `postgres://{user}:{password}@{hostname}:{port}/{database-name}`
- `RACK_ENV` - environment for the app. possible values: `production`, `development`, `test`
