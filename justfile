default:
    @just --list

hello:
    echo "Hello World !"

git:
    git init
    git add .
    git commit -m "blabla"
    git remote add origin git@gitserver:Garrug/project.git
    git push origin master

status:
    git status

add:
    git add .

init:
    git init

commit message:
    git commit -m "{{message}}"

log:
    git log --oneline

tmp:
    rm -f tmp.txt

clean:
    if [ -f tmp.txt ]; then rm tmp.txt; fi

db-create: 
    mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS ma_base;"

db-insert:
    mysql -u root -p ma_base -e "INSERT INTO utilisateur (nom, email) VALUES ('Leo', 'leo@example.com');"

db-migrate:
    mysql -u root -p ma_base < migration.sql

db-downgrade:
    mysql -u root -p -e "DROP DATABASE IF EXISTS ma_base;"
    mysql -u root -p -e "CREATE DATABASE ma_base;"