import math

def factorial(num):
  """Вычисляет факториал числа num."""
  if num < 0:
    raise ValueError("Число должно быть положительным")
  elif num == 0:
    return 1
  else:
    return math.factorial(num)

try:
  # Запрашиваем у пользователя ввод целого числа
  num = int(input("Введите положительное целое число: "))

  # Вычисляем факториал введенного числа
  result = factorial(num)

  # Выводим результат на экран
  print(f"Факториал числа {num}: {result}")
except ValueError as e:
  # Обрабатываем ошибки ввода
  print("Ошибка:", e)
