#!/bin/bash

# Убедитесь, что мы находимся в корне проекта
cd /Users/andreyshabunov/PhpstormProjects/git-practics

# Инициализация Git репозитория (если не инициализирован)
if [ ! -d ".git" ]; then
  git init
fi

# Очистка и сброс всех изменений
git checkout -B master
git add .
git commit -m "Initial commit"

# Создание веток с коммитами
echo "Creating feature/1 branch..."
git checkout -b feature/1
echo "Feature 1 implementation" > feature1.txt
git add feature1.txt
git commit -m "Add feature1.txt in feature/1"

echo "Creating feature/2 branch..."
git checkout master
git checkout -b feature/2
echo "Feature 2 implementation" > feature2.txt
git add feature2.txt
git commit -m "Add feature2.txt in feature/2"

# Слияние с использованием Git Merge
echo "Merging feature/1 into master using git merge..."
git checkout master
git merge feature/1 -m "Merge feature/1 into master"

# Создание ветки bugfix/1
echo "Creating bugfix/1 branch..."
git checkout -b bugfix/1
echo "Bug fix implementation" > bugfix1.txt
git add bugfix1.txt
git commit -m "Add bugfix1.txt in bugfix/1"

# Слияние с использованием Git Rebase
echo "Rebasing feature/2 onto master..."
git checkout feature/2
git rebase master

echo "Merging feature/2 into master using git merge..."
git checkout master
git merge feature/2 -m "Merge feature/2 into master"

# Итоговое состояние репозитория
echo "Final state of the repository:"
git log --oneline --graph --all
