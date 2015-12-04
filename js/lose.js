var loseState = {
	create: function() {
		game_over = game.add.text(0, 0, 'GAME OVER', {
			font: "bold 40px Arial", fill: '#FFF'
		});
		game_over.x = Math.round(game.camera.width / 2 - game_over.width / 2);
		game_over.y = Math.round(game.camera.height / 2 - game_over.height / 2);
	}
}