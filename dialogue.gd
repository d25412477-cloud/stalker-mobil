
extends Node

var dialogue_lines = [
    "Здравствуй, сталкер.",
    "В Зоне сейчас неспокойно.",
    "Будь осторожен на Кордоне.",
    "Если найдёшь артефакты — приходи."
]

var current_line := 0

func next_dialogue():
    if current_line < dialogue_lines.size():
        print(dialogue_lines[current_line])
        current_line += 1
    else:
        print("Разговор окончен")
