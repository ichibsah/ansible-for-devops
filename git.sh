
#git remote add master git@github.com:ichibsah/ansible-for-devops.git

#git push --force --set-upstream master master

# https://github.com/ichibsah/ansible-for-devops.git
# git@github.com:ichibsah/ansible-for-devops.git
#git push <name>

#…or push an existing repository from the command line
git remote add origin git@github.com:ichibsah/ansible-for-devops.git
#git branch -M main
git branch -M master
#git push -u origin main
git push -u origin master


git add .
git commit -am "$(date)"
git push
#git push master master -f