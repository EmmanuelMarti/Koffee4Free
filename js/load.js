var loadState = {
	preload: function () {
		game.load.image('car', 'assets/voiture.png');
		game.load.image('stop', 'assets/stop.png');
		game.load.image('answerFrame', 'assets/cadre.png');
		game.load.image('correctFrame', 'assets/cadre_valide.png');
		game.load.image('wrongFrame', 'assets/cadre_invalide.png');
		game.load.image('ninja', 'assets/ninja.png');
		game.load.image('background', 'assets/background.png');
		game.load.image('road', 'assets/route.png');
		game.load.image('intersection', 'assets/intersection.png');
	},
	create: function () {
		game.state.start('play');
	}
};