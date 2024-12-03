/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//Variáveis do menu
menu = ["Jogar", "Enciclopedia", "Sair"];
atual = 0;

controla_menu = function()
{
	//Se clicar pra cima
	if (keyboard_check_pressed(vk_up))
	{
		//O botão sobe
		atual--
	}
	if (keyboard_check_pressed(vk_down))
	{
		atual++
	}
	//Limitando o botão
	atual = clamp(atual,0,array_length(menu)-1);
	//Ao apertar enter
	if (keyboard_check_pressed(vk_enter))
	{
		ativa_menu()
	}
	
}
desenha_menu = function()
{
	//Alinhando texto
	draw_set_valign(1);
	draw_set_halign(1);
	//Definindo os meios
	var _meio_x = room_width/2;
	var _meio_y = room_height/2;
	for (var i = 0; i<array_length(menu);i++)
	{
		//Definindo a sprite criada
		var _num_spr = 0;
		//Checando se o botão é o selecionado
		if (i == atual)
		{
			_num_spr = 1;
		}
		//Desenhando botão
		draw_sprite_ext(spr_menu_botao,_num_spr,_meio_x,_meio_y,2,1,0,c_white,1);
		//Desenhando texto
		draw_text(_meio_x,_meio_y,menu[i]);
		//Aumentando meios
		_meio_y+= 100;
	}
	//Resetando os sets
	draw_set_valign(-1);
	draw_set_halign(-1);
}

ativa_menu = function()
{
	switch(atual)
	{
		//Jogar
		case 0:
			room_goto(rm_jogo)	
		break;
		//Enciclopedia
		case 1:
			show_message("não tem ainda :(");
		break;
		//Sair
		case 2:
			game_end()
		break;
	}
}