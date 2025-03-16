# Rebase

## Переключитесь на ветку feature/2
1. `git checkout feature/2`

## Получите актуальные изменения из main
2. `git fetch origin main`

## Выполните ребаз feature/2 на main
3. `git rebase main`
### Если во время ребаза возникнут конфликты:
- `git add <file>`
- `git rebase --continue`

## Принудительно обновите ветку feature/2 на удаленном репозитории
4. `git push --force-with-lease origin feature/2`

## После выполнения ребаза:
```
* commit_hash update feature/2 commit 9
* commit_hash feature 2 update feature2_3.txt
* commit_hash feature 2 update feature2_2.txt
* commit_hash update feature 2 commit 6
* commit_hash update main branch readme
* commit_hash feature 1 update readme 2
* commit_hash feature 1 update readme
* commit_hash update feature 1 commit 2
* commit_hash update feature 1 from feature 2
* commit_hash unstaged
```

## Перед ребазом создайте резервную копию ветки:
5. `git branch feature/2-backup feature/2`

## Проверьте историю после ребаза:
6. `git log --oneline --graph --all`

##

##