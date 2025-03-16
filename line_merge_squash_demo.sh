#!/bin/bash

# Создание bugfix/1 с 5 коммитами
echo "Creating bugfix/1 branch..."
git checkout -b bugfix/1
git checkout bugfix/1
for i in {45..47}; do
  cd /Users/andreyshabunov/PhpstormProjects/git-practics/bugfix1/
  echo "Bug fix commit $i" > bugfix1_$i.txt
  cd /Users/andreyshabunov/PhpstormProjects/git-practics/
  git add .
  git commit -m "Bug fix commit $i"
  git push -u origin bugfix/1
done

# Возвращаемся к main и обновляем его
echo "Updating main branch..."
git checkout main
git pull origin main

# Выполняем squash коммитов из bugfix/1 в один коммит
echo "Squashing commits from bugfix/1 into a single commit..."
git checkout bugfix/1
git reset --soft main  # Перемещаем указатель на main, сохраняя изменения в индексе
git commit -m "Squashed bugfix/1 commits"  # Создаём один коммит из всех изменений

# Возвращаемся к main и выполняем fast-forward merge
echo "Merging bugfix/1 into main with fast-forward..."
git checkout main
git merge --ff-only bugfix/1  # Выполняем fast-forward merge
git push -u origin main

# Итоговое состояние репозитория
echo "Final state of the repository:"
git log --oneline --graph --all | less