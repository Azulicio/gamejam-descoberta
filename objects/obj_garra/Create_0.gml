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
			pegou = instance_place(x,y,obj_pexe);
			if (pegou)
			{
				estado = "Catch"
			}

		break
		case "Catch":
			if (pegou)
			{	
				pegou.x = x;
				pegou.y = y;
				if (y<180)
				{
					var _pegando = mouse_check_button(mb_left)
					if (_pegando)
					{
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