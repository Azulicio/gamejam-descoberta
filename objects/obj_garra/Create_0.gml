/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Estado de pesca
estado = "Pescando";
pegou = noone;
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
			pegou = instance_place(x,y,obj_pexe);
			if (pegou)
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
		break
	}
}