var loadState = {
	preload: function () {
		game.load.image('car', 'assets/voiture.png');
		game.load.image('stop', 'assets/stop.png');
		game.load.image('answerFrame', 'assets/cadre.png');
		game.load.image('correctFrame', 'assets/cadre_valide.png');
		game.load.image('wrongFrame', 'assets/cadre_invalide.png');
		//game.load.image('background', 'assets/background.png');
	},
	create: function () {
		game.state.start('play');
	}
};