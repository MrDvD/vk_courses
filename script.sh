#!/bin/bash

# 1. Создание директории на HDFS /createme
hdfs dfs -mkdir /createme
# 2. Удаление директории на HDFS /delme
hdfs dfs -rmdir /delme
# 3. Создание файла на HDFS /nonnull.txt с произвольным содержимым
echo "Hello" | hdfs dfs -put - /nonnull.txt

# Код ниже должен делать то же самое, что и выше (с конфигурационными файлами). Однако он тоже не приносит положительного результата
# hdfs dfs -mkdir hdfs://master:8020/createme
# hdfs dfs -rmdir hdfs://master:8020/delme
# echo "Hello" | hdfs dfs -put - hdfs://master:8020/nonnull.txt
