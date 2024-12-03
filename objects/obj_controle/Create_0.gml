/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Geração de peixes
timer = room_speed*3;
timer_lixo = room_speed*3.5
cria_peixe = function()
{
	while (global.peixes<10)
	{
		timer--
		if (timer <= 0)
		{
			var _lado = choose("Direita", "Esquerda")
			if (_lado = "Direita")
			{
				var _pexe = instance_create_layer(1088,random_range(250,550),"Peixes",obj_pexe)
				_pexe.image_xscale*=-1;
				_pexe.speed *=-1;
				timer = room_speed*3;
			}
			else
			{
				var _pexe = instance_create_layer(-64,random_range(250,550),"Peixes",obj_pexe)
				timer = room_speed*3;
			}
		}
	break
	}
}
//Criando a garra
cria_garra = function()
{
	if (!instance_exists(obj_garra))
	{
		var _linha = instance_create_layer(570,32,"Garra",obj_linha);
		var _garra = instance_create_layer(570,32,"Garra",obj_garra);
	}
}
cria_garra();

//Criando lixo
cria_lixo = function()
{
	timer_lixo--
	if (timer_lixo<=0)
	{
		var _lixo = choose(obj_caixa,obj_lata)
		var _lado = choose("Direita", "Esquerda")
		if (_lado == "Direita")
		{
			var _objeto = instance_create_layer(1088,random_range(250,550),"Peixes",_lixo);
			_objeto.speed = -3;
			timer_lixo = room_speed*3.5
		}
		else
		{
			var _objeto = instance_create_layer(-64,random_range(250,550),"Peixes",_lixo);
			_objeto.speed = 3;
			_objeto.image_xscale *=-1;
			timer_lixo = room_speed*3.5
		}
	}
}

//Volta ao menu
volta_menu = function()
{
	if (keyboard_check_pressed(vk_escape))
	{
		room_goto(rm_menu);
	}
}