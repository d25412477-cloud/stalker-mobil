
extends Node3D

@export var trader_name: String = "Сидорович"

var money: int = 1000

var goods = {
    "Аптечка": 150,
    "Бинт": 50,
    "Патроны": 100
}

func _ready():
    print("Торговец ", trader_name, " готов к торговле")

func show_goods():
    for item in goods:
        print(item, " — ", goods[item], " рублей")

func buy_item(item: String):
    if goods.has(item):
        var price = goods[item]

        if money >= price:
            money -= price
            print("Куплено: ", item)
        else:
            print("Недостаточно денег")
