var stop;
var car;
var question;
var frames = [];
var answers;
var answers_text = [];
var hasAnswered = false;
var lastAnswer;
var pause = false;
var ninja;
var isExplaining = false;
var hasExplained = false;
var explanation;
var background1;
var background2;
var playState = {
	create: function() {
		game.physics.startSystem(Phaser.Physics.ARCADE);
		game.world.setBounds(0, 0, 6000, 600);
		background1 = game.add.sprite(0, 0, 'background');
		background2 = game.add.sprite(800, 0, 'background');
		for (i=0; i < 7; ++i) {
			road = game.add.sprite(0, 0, 'road');
			road.scale.setTo(0.4, 0.4);
			road.y = 107;
			road.x = i * 80;
		}
		intersection = game.add.sprite(800, 0, 'intersection');
		intersection.scale.setTo(0.4, 0.4);
		intersection.y = 49;
		intersection.x = 560;
		stop = game.add.sprite(640, 200, 'stop');
		for (i=10; i < 24; ++i) {
			road = game.add.sprite(0, 0, 'road');
			road.scale.setTo(0.4, 0.4);
			road.y = 107;
			road.x = i * 77;
		}
		car = game.add.sprite(50, 50, 'car');
		car.y = 175;
		answers = loadAnswers();
		setAllAnswerFrames(frames, answers);
		car.fixedToCamera = true;
		game.physics.arcade.enable(car);
		ninja = game.add.sprite(0, 0, 'ninja');
		ninja.scale.setTo(0.1, 0.1);
		ninja.x = 0;
		ninja.y = 220;
		ninja.fixedToCamera = true;
		question = game.add.text(0, 0, 'Que doit faire la voiture au panneau stop ?', {
			font: "bold 24px Arial", fill: '#FFF'
		});
		question.x = Math.round(game.camera.width / 2 - question.width / 2);
		question.y = Math.round(game.camera.height / 5 * 3);
		question.fixedToCamera = true;
		setAnswerText(answers_text, answers, frames);
	},

	update: function() {
		if (!pause) {
			game.camera.x += 1;
			if (car.x + car.width > stop.x + stop.width / 2) {
				//stop.kill();
				pause = true;
				if (!hasAnswered || !answers[lastAnswer].correct) {
					game.state.start('lose');
				}
			}
		} else {
			if (!isExplaining) {
				cleanAnswerFrames(frames);
				cleanAnswers(answers_text);
				question.destroy();	
				isExplaining = true;
			}
			/*console.log('ninja.y');
			console.log(ninja.y);
			console.log(ninja.height);*/
			if (ninja.y < game.world.height - ninja.height) {
				console.log('on y entre');
				ninja.fixedToCamera = false;
				ninja.y += 1;
			} else if (!hasExplained) {
				console.log('EXPLAIN');
				hasExplained = true;
				explanation = game.add.text(0, 0, "Lorsqu'une voiture arrive à un panneau stop,\nelle doit s'arrêter afin de céder la priorité.",
					{font: "bold 24px Arial", fill: '#FFF'});
				explanation.x = Math.round(game.camera.width / 2 - explanation.width / 2);
				explanation.y = Math.round(game.camera.height / 5 * 3);
				explanation.fixedToCamera = true;
			}
		}
		if (background1.x + background1.width < 0) {
			background1.x = 800;
		}
		if (background2.x + background2.width < 0) {
			background2.x = 800;
		}
	}
};

function cleanAnswerFrames(frames) {
	for (i = 0; i < 3; ++i) {
		frames[i].destroy();
	}
}

function setAnswerText(answers_text, answers, frames) {
	for (i=0; i < 3; ++i) {
		answers_text[i] = game.add.text(0, 0, answers[i].answer, {font: "bold 24px Arial", fill: '#FFF', wordWrap: true,
			wordWrapWidth: frames[i].width});
		answers_text[i].anchor.set(0.5);
		answers_text[i].x = 12 + i * 250 + 13 * (i - 1) + frames[i].width / 2;
		answers_text[i].y = 430 + frames[i].height / 2;
		answers_text[i].fixedToCamera = true;
	}
}

function setAnswerFrame(frames, answers, settings) {
	console.log(settings.id_answer);
	frames[settings.id_answer] = game.add.sprite(settings.x, settings.y, settings.sprite);
	frames[settings.id_answer].fixedToCamera = true;
	frames[settings.id_answer].inputEnabled = true;
	console.log(answers);
	frames[settings.id_answer].events.onInputDown.add(selectAnswer, { frames: frames, answers, id_answer: settings.id_answer, answers_text: answers_text});
	console.log(frames);
}

function setAllAnswerFrames(frames, answers) {
	for (i = 0; i < 3; ++i) {
		setAnswerFrame(frames, answers,
			{id_answer: i,
				x: 12 + i * 250 + 13 * (i - 1),
				y: 430,
				sprite: 'answerFrame'});
	}
}

function cleanAnswers(answers_text) {
	console.log("cleanAnswers");
	console.log(answers_text);
	for (i = 0; i < 3; ++i) {
		answers_text[i].destroy();
	}
}

function loadAnswers() {
	return [{answer: "S'arreter", correct: true},
	{answer: "Accelerer", correct: false},
	{answer: "Faire demi tour", correct: false}];
}

function selectAnswer() {
	if (!hasAnswered) {
		this.frames[this.id_answer].kill();
		setAnswerFrame(this.frames, this.answers, {
			id_answer: this.id_answer,
			x: 12 + this.id_answer * 250 + 13 * (this.id_answer - 1),
			y: 430,
			sprite: this.answers[this.id_answer].correct ? 'correctFrame' : 'wrongFrame'
		});
		cleanAnswers(answers_text);
		setAnswerText(this.answers_text, this.answers, this.frames);
		hasAnswered = true;
		lastAnswer = this.id_answer;
	}

}