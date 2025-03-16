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

## После выполнения rebase и приведения истории feature/2 в порядок можно влить её в main:
```
* commit_hash update feature/2 commit 9
* commit_hash update feature 1 commit 2
* commit_hash update feature 1 from feature 2
```

## Перед ребазом создайте резервную копию ветки:
5. `git branch feature/2-backup feature/2`

## Проверьте историю после ребаза:
6. `git log --oneline --graph --all`

## Переключитесь на ветку main
7. `git checkout main`

## Получите актуальные изменения из удаленного репозитория (если кто-то уже обновил main):
8. `git pull origin main`

## Выполните слияние (merge) ветки feature/2 в main:
9. `git merge feature/2 -m "Merge feature/2 into main"`

## Отправьте изменения в удаленный репозиторий:
10. `git push -u origin main`
