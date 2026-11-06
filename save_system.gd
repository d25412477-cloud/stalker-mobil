
extends Node

const SAVE_PATH = "user://stalker_save.json"

func save_game(data: Dictionary):
    var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)

    if file:
        file.store_string(JSON.stringify(data))
        file.close()
        print("Игра сохранена!")

func load_game() -> Dictionary:
    if not FileAccess.file_exists(SAVE_PATH):
        return {}

    var file = FileAccess.open(SAVE_PATH, FileAccess.READ)

    if file == null:
        return {}

    var text_data = file.get_as_text()
    file.close()

    var result = JSON.parse_string(text_data)

    if result is Dictionary:
        return result

    return {}
