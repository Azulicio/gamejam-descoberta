/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Geração de peixes
timer = room_speed*3;
cria_peixe = function()
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
}
cria_garra = function()
{
	if (!instance_exists(obj_garra))
	{
		var _garra = instance_create_layer(576,32,"Garra",obj_garra);
	}
}