# CI/CD Fundamentals with GitHub Actions

---

# Task 1: The Problem

## Scenario
A team of **5 developers** pushes code to the same repository and deploys manually to production.

## What can go wrong?

| Problem | Description |
|-------|-------------|
| Merge conflicts | Developers may modify the same files and face conflicts during merging |
| Integration failures | Code may work individually but fail when combined |
| Environment differences | Each developer might use different OS versions, dependencies, or configurations |
| Human deployment errors | Wrong commands, wrong branch, or wrong server used during deployment |
| No rollback process | Fixing problems requires another manual deployment |
| Lack of visibility | Teams may not know exactly what version is running in production |

## What does “It works on my machine” mean?

“It works on my machine” means the application runs correctly on the developer’s computer but fails in staging or production environments.

### Causes
- Different operating systems
- Different dependency versions
- Missing environment variables
- Locally installed packages not defined in the project configuration

### Why it is a real problem
Production environments must behave consistently. CI/CD pipelines run code in clean environments so that builds and tests behave the same everywhere.

## How many times can a team safely deploy manually?

| Deployment Type | Safe Frequency |
|----------------|---------------|
| Fully manual deployment | 1–2 times per week |
| Script-assisted deployment | A few times per week |
| Automated CI/CD pipeline | Dozens or hundreds of times per day |

---

# Task 2: CI vs CD

## Continuous Integration (CI)

Continuous Integration is the practice of frequently merging code changes into a shared repository where automated pipelines build and test the application.

### What happens
1. Developer pushes code
2. Pipeline starts automatically
3. Application is built
4. Automated tests run
5. Results are reported

### What CI catches
- Build failures
- Test failures
- Syntax errors
- Dependency conflicts

### Example
Developer pushes code → GitHub Actions runs:
- Install dependencies
- Run automated tests
- Perform code quality checks

---

## Continuous Delivery

Continuous Delivery ensures the software is always ready to be deployed. The pipeline automatically builds and tests the application, but production deployment requires manual approval.

### Example pipeline
Push code → Run tests → Build application → Deploy to staging → Manual approval → Deploy to production

---

## Continuous Deployment

Continuous Deployment automatically deploys every successful change to production without human approval.

### Example pipeline
Push code → Run tests → Build Docker image → Automatically deploy to production

---

# Task 3: Pipeline Anatomy

A CI/CD pipeline contains several important components.

## Trigger
A trigger starts the workflow automatically.

Example:
on:
  push:
    branches: [main]

Common triggers include:
- push
- pull_request
- scheduled workflows
- manual triggers

## Stage
A stage represents a logical phase in the pipeline.

Examples:

| Stage | Purpose |
|------|---------|
| Build | Compile code or build Docker images |
| Test | Run automated tests |
| Deploy | Deploy the application |

Stages usually run sequentially.

## Job
A job is a group of steps executed on the same runner.

Example structure:

jobs:
  build:
  test:
  deploy:

Jobs can run sequentially or in parallel.

## Step
A step is a single command executed inside a job.

Example:

steps:
  - name: Checkout Code
    uses: actions/checkout@v4
  - name: Run Tests
    run: npm test

Steps run sequentially.

## Runner
A runner is the machine that executes the job.

Example:

runs-on: ubuntu-latest

Types of runners:
- GitHub hosted runners
- Self-hosted runners

## Artifact
Artifacts are files created during pipeline execution and stored for later use.

Examples:
- build packages
- compiled binaries
- test reports

Example usage:

- uses: actions/upload-artifact@v4

---

# Task 4: Pipeline Diagram

Scenario: A developer pushes code to GitHub. The application is tested, built into a Docker image, and deployed to a staging server.

Pipeline flow:

Developer pushes code  
↓  
GitHub repository receives commit  
↓  
GitHub Actions workflow triggers  
↓  
Stage 1: Test  
- Run unit tests  
- Run lint checks  

↓  

Stage 2: Build  
- Build Docker image  
- Push image to Docker registry  

↓  

Stage 3: Deploy  
- Pull Docker image  
- Deploy container to staging server  

Application is now running on the staging environment.

---

# Task 5: Explore in the Wild

Example open-source repository: **FastAPI**

Workflow files are located in:

.github/workflows/

Example workflow file:

.github/workflows/test.yml

## What triggers the workflow?

Typical triggers include:

on:
  push:
  pull_request:

The workflow runs whenever:
- Code is pushed to the repository
- A pull request is opened or updated

## How many jobs does it have?

Typical workflows contain multiple jobs such as:

jobs:
  lint
  test
  build

Usually there are **2–5 jobs** depending on the project.

## What does it do?

Typical actions in the workflow include:
- Checking out the repository code
- Installing project dependencies
- Running lint checks for code quality
- Running automated tests
- Ensuring the project builds successfully

The purpose is to ensure new code changes **do not break the application before they are merged**.

---

# Summary

| Task | Key Learning |
|----|---------------|
| Task 1 | Problems with manual deployments |
| Task 2 | Understanding CI, Continuous Delivery, and Continuous Deployment |
| Task 3 | Key components of a CI/CD pipeline |
| Task 4 | CI/CD pipeline flow from push to deployment |
| Task 5 | Understanding real GitHub Actions workflows |
