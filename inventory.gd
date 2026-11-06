
extends Node

var items: Array[String] = []

func add_item(item_name: String):
    items.append(item_name)
    print("Получен предмет: ", item_name)

func remove_item(item_name: String):
    items.erase(item_name)

func show_inventory():
    print("=== РЮКЗАК ===")
    for item in items:
        print(item)
