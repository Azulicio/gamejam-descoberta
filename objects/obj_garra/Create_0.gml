/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Estado de pesca
estado = "Pescando";
pegou = noone;
pegou_lixo = noone
cooldown = room_speed;
//Controles da garra
controle = function()
{
	y = mouse_y
	if (y<46) y=46;
}
//Pegando Peixe
pega_peixe = function()
{
	switch (estado)
	{
		case "Pescando":
			image_index=0;
			pegou = instance_place(x,y,obj_pexe) 
			pegou_lixo = instance_place(x,y,obj_lata);
			if (pegou) or (pegou_lixo)
			{
				estado = "Catch"
			}

		break
		case "Catch":
			if (pegou)
			{	
				image_index=1;
				pegou.x = x;
				pegou.y = y;
				if (place_meeting(x,y,obj_caixa))
				{
					estado = "Soltando";
					pegou.speed *= 2;
				}
				if (y<180)
				{
					var _pegando = mouse_check_button(mb_left)
					if (_pegando)
					{
						var _peixe = pegou.sprite_index
						ds_list_add(global.lista_encontrados,_peixe);
						obj_pexeindex.sprite_index = ds_list_find_value(global.lista_encontrados, ds_list_size(global.lista_encontrados)-1)
						instance_destroy(pegou);
						global.peixes++
						pegou = noone;
						estado = "Pescando";
					}
				}
			}
			else if (pegou_lixo)
			{
				image_index = 1;
				pegou_lixo.x = x;
				pegou_lixo.y = y;
				if (y<180)
				{
					var _pegando = mouse_check_button(mb_left)
					if (_pegando)
					{
						var _peixe = pegou_lixo.sprite_index
						ds_list_add(global.lista_encontrados,_peixe);
						obj_pexeindex.sprite_index = ds_list_find_value(global.lista_encontrados, ds_list_size(global.lista_encontrados)-1)
						instance_destroy(pegou_lixo);
						global.peixes++
						pegou_lixo = noone;
						estado = "Pescando";
					}
				}
			}
		break
		case "Soltando":
			image_index = 0;
			cooldown--;
			if (cooldown <0) 
			{
				estado = "Pescando"
				cooldown = room_speed;
			}
		break
	}
}