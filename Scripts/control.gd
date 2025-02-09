extends Control

@onready var coin_text: Label = $coin_label

func atualizarMoedas(quantidade:int):
	coin_text.text = "%d" % quantidade
