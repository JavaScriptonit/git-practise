#!/bin/bash

# Убедитесь, что мы находимся в корне проекта
cd /Users/andreyshabunov/PhpstormProjects/git-practics

# Очистка и сброс всех изменений
# git checkout -B main
# git add .
# git commit -m "Initial commit"

# Создание ветки feature/1 с 5 коммитами
# echo "Creating feature/1 branch..."
# git checkout -b feature/1
# for i in {1..5}; do
#   echo "Feature 1 commit $i" > feature1_$i.txt
#   git add feature1_$i.txt
#   git commit -m "Feature 1 commit $i"
# done

# Создание ветки feature/2 с 5 коммитами
# echo "Creating feature/2 branch..."
# git checkout main
# git checkout -b feature/2
# for i in {1..5}; do
#   echo "Feature 2 commit $i" > feature2_$i.txt
#   git add feature2_$i.txt
#   git commit -m "Feature 2 commit $i"
# done

# Слияние feature/1 в main
# echo "Merging feature/1 into main using git merge..."
# git checkout main
# git merge feature/1 -m "Merge feature/1 into main"

# Создание bugfix/1 с 5 коммитами
echo "Creating bugfix/1 branch..."
git checkout -b bugfix/1
git checkout bugfix/1
for i in {22..23}; do
  cd /Users/andreyshabunov/PhpstormProjects/git-practics/bugfix1/
  echo "Bug fix commit $i" > bugfix1_$i.txt
  cd /Users/andreyshabunov/PhpstormProjects/git-practics/
  git add .
  git commit -m "Bug fix commit $i"
  git push -u origin bugfix/1
done

# Возвращаемся к main и выполняем merge bugfix/1
echo "Merging bugfix/1 into main using git merge..."
git checkout main
git merge bugfix/1 -m "Merge bugfix/1 into main"
git pull origin main
git push -u origin main

# Возвращение к feature/2 для выполнения rebase
# echo "Rebasing feature/2 onto main..."
# git checkout feature/2
# git rebase main

# Итоговое состояние репозитория
echo "Final state of the repository:"
git log --oneline --graph --all | less
