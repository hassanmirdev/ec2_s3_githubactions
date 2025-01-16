1. change the instance type and push to new branch by creating a branch (test) from main branch
2. obseerve the workflow actions- it will execute till terraform plan and generate docs to README.md
3. create a pull request from the feature branch (main branch- will be base and other branch will be the feature branch), merge the pull request
4. once the pull request is merger, it should trigger the workflow from terraform apply stage and check if the instance size is changed.
   ====
   
   
