# git-practise
https://habr.com/ru/articles/432420/


# Команды для DEBUG:

## Проверка состояния веток (Показать лог конкретной ветки)
git log --oneline --graph main
git log --oneline --graph feature/2
git log --oneline --graph feature/1

## Посмотреть список всех веток (все локальные и удаленные ветки)
git branch -a
## Посмотреть список всех веток (локальные ветки)
git branch

## Переключитесь на ветку
git checkout feature/2
git checkout feature/1
git checkout main

## Удаление веток
git push origin --delete feature/2
git push origin --delete feature/1
### Удаление локальных веток
git branch -d feature/1
git branch -d feature/2
### Если ветка не была смержена
git branch -D feature/1 

## Pull из удаленных веток в локальную ветку
git pull origin main
git pull origin feature/2
git pull origin feature/1

## Добавить изменения в удаленную ветку
git add .
git commit -m "update lessons 4-6 readme"
git push -u origin feature/1
git push -u origin main
git push -u origin feature/2

## Состояние локальной ветки и удаленной
git status
