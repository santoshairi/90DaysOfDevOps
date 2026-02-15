# Git Branch

### What is a branch in Git
- A Branch is a lightweight, movable pointer to a specific commit. It represents an indenpendent line of development, ofter described as "parallel universe" for your code where you can work without affecting the main project.

### Why do we use branches instead of committing everything to main?

- Committing directly to the main branch is generally avoided because it treats your production-ready code like a rough draft. Using branches creates a "buffer zone" that protects the stability and quality of your project


### What is HEAD in Git?
- In Git, HEAD is a special pointer that acts as an indicator for your current location in the repository. It essentially answers the question, "Where am I right now?"


### What happens to your files when you switch branches?
- When you switch branches, Git updates your working directory to match the state of the branch you are moving to. This means your local files physically change on your hard drive to reflect the version of the code stored in that branch's latest commit.

## Updated from feature1 branch 