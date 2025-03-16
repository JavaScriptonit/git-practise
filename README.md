# git-practise
https://habr.com/ru/articles/432420/


# Команды для DEBUG:

## Проверка состояния веток
git log --oneline --graph main
git log --oneline --graph feature/2
git log --oneline --graph feature/1

## Переключитесь на ветку
git checkout feature/2
git checkout feature/1
git checkout main

## 
git pull origin main
git pull origin feature/2
git pull origin feature/1

# 
git add .
git commit -m "update lessons 4-6 readme"
git push -u origin main
git push -u origin feature/2
git push -u origin feature/1