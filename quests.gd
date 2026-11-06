
extends Node

var quests = {
    "first_task": {
        "name": "Первый выход в Зону",
        "description": "Исследуй Кордон",
        "completed": false
    }
}

func complete_quest(id: String):
    if quests.has(id):
        quests[id]["completed"] = true
        print("Задание выполнено!")

func show_quests():
    for id in quests:
        print(quests[id]["name"])
