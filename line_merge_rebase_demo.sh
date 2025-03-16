#!/bin/bash

# Создание bugfix/1 с 2 коммитами
echo "Creating bugfix/1 branch..."
git checkout -b bugfix/1
git checkout bugfix/1
for i in {26..27}; do
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

# Выполняем rebase bugfix/1 на main
echo "Rebasing bugfix/1 onto main..."
git checkout bugfix/1
git rebase main

# Возвращаемся к main и выполняем merge bugfix/1
echo "Merging bugfix/1 into main using git merge..."
git checkout main
git merge bugfix/1 -m "Merge bugfix/1 into main"
git push -u origin main

# Итоговое состояние репозитория
echo "Final state of the repository:"
git log --oneline --graph --all | less