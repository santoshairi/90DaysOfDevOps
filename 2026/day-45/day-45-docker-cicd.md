
## Challenge Tasks

### Task 1: Prepare
1. Use the app you Dockerized on Day 36 (or any simple Dockerfile)
2. Add the Dockerfile to your `github-actions-practice` repo (or create a minimal one)
3. Make sure `DOCKER_USERNAME` and `DOCKER_TOKEN` secrets are set from Day 44

![Images](images/task1.png)

## [wokrflows](workflows/task-1_docker-publish.yml)

---

### Task 2: Build the Docker Image in CI
Create `.github/workflows/docker-publish.yml` that:
1. Triggers on push to `main`
2. Checks out the code
3. Builds the Docker image and tags it

**Verify:** Check the build step logs — does the image build successfully?

![Images](images/task2.png)

## [wokrflows](workflows/task-2_docker-publish.yml)

---

### Task 3: Push to Docker Hub
Add steps to:
1. Log in to Docker Hub using your secrets
2. Tag the image as `username/repo:latest` and also `username/repo:sha-<short-commit-hash>`
3. Push both tags

**Verify:** Go to Docker Hub — is your image there with both tags?

![Images](images/task3.png)

## [wokrflows](workflows/task-3_docker-publish.yml)

---

### Task 4: Only Push on Main
Add a condition so the push step only runs on the `main` branch — not on feature branches or PRs.

Test it: push to a feature branch and verify the image is built but NOT pushed.

![Images](images/task4-1.png)
 
## switch to featuretest branch image will build but the same will not push to docker hub as per our requirment 

![Images](images/task4-2.png)

## [wokrflows](workflows/task-4_docker-publish.yml)

---

### Task 5: Add a Status Badge
1. Get the badge URL for your `docker-publish` workflow from the Actions tab
2. Add it to your `README.md`
3. Push — the badge should show green

![Images](images/task5-1.png)

![Images](images/task5-2.png)

## [wokrflows](workflows/task-5_docker-publish.yml)
