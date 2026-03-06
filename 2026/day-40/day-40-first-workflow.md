
### Task 1: Set Up
1. Create a new **public** GitHub repository called `github-actions-practice`
2. Clone it locally
3. Create the folder structure: `.github/workflows/`

![Image](Images/task1.png)


![Image](Images/task1.1.png)

---

### Task 2: Hello Workflow
Create `.github/workflows/hello.yml` with a workflow that:
1. Triggers on every `push`
2. Has one job called `greet`
3. Runs on `ubuntu-latest`
4. Has two steps:
   - Step 1: Check out the code using `actions/checkout`
   - Step 2: Print `Hello from GitHub Actions!`

Push it. Go to the **Actions** tab on GitHub and watch it run.

**Verify:** Is it green? Click into the job and read every step.

![Image](Images/task2.png)

---

### Task 3: Understand the Anatomy
Look at your workflow file and write in your notes what each key does:
- `on:`
  - Defines when the workfloow should run 
- `jobs:`
  - Devines what jobs will run in the workflow
- `runs-on:`
  - Defines which runner (machine/Os) will execute the job
- `steps:`
  - Setps are the individual tasks inside a job
- `uses:`
  - Used to run pre build GitHub Actions
  - Example:- uses: actions/checkout@v4 
- `run:`
  - used to excute shell commands
  - Example:- run: echo "hello from Github Actions" 
- `name:` (on a step)
  - Provides a human readable name for the step
  - Example: - name: Print Greeting
    - this name appears in the Actions UI logs 

---

### Task 4: Add More Steps
Update `hello.yml` to also:
1. Print the current date and time
2. Print the name of the branch that triggered the run (hint: GitHub provides this as a variable)
3. List the files in the repo
4. Print the runner's operating system

Push again — watch the new run.

![Image](Images/task4.png)

---

### Task 5: Break It On Purpose
1. Add a step that runs a command that will **fail** (e.g., `exit 1` or a misspelled command)
2. Push and observe what happens in the Actions tab
3. Fix it and push again

![Image](Images/task5.png)

### Write in your notes: What does a failed pipeline look like? How do you read the error?
  - When a pipeline fails in GitHub Actions, the workflow run shows a red ❌ status instead of a green ✔

---
## [Wrokflows](workflows)

