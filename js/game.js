var game = new Phaser.Game(800, 600, Phaser.AUTO, '');
game.state.add('load', loadState);

game.state.start('load');