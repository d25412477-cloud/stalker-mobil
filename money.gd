
extends Node

var credits: int = 500

func add_money(amount: int):
    credits += amount
    print("Деньги: ", credits)

func spend_money(amount: int) -> bool:
    if credits >= amount:
        credits -= amount
        return true

    print("Недостаточно денег")
    return false

func get_money() -> int:
    return credits
