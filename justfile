default: 
    @just --list

git:
    git init
    git add .
    git commit -m "blabla"
    git remote add origin git@gitserver:user/Garrug/project.git
    git push origin master