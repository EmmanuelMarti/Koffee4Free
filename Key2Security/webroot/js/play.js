var stop;
var car;
var question;
var frames = [];
var answers;
var answers_text = [];
var hasAnswered = false;
var lastAnswer;
var playState = {
	create: function() {
		game.physics.startSystem(Phaser.Physics.ARCADE);
		game.world.setBounds(0, 0, 6000, 600);
		stop = game.add.sprite(800, 0, 'stop');
		car = game.add.sprite(50, 50, 'car');
		answers = loadAnswers();
		setAllAnswerFrames(frames, answers);
		car.fixedToCamera = true;
		game.physics.arcade.enable(car);
		question = game.add.text(0, 0, 'Que doit faire la voiture au panneau stop ?', {
			font: "bold 24px Arial", fill: '#FFF'
		});
		question.x = Math.round(game.camera.width / 2 - question.width / 2);
		question.y = Math.round(game.camera.height / 5 * 3);
		question.fixedToCamera = true;
		setAnswerText(answers_text, answers, frames);
	},

	update: function() {
		game.camera.x += 1;
		if (car.x + car.width > stop.x + stop.width / 2) {
			//stop.kill();
			if (!hasAnswered){
				game.state.start('lose');
			}
		}
	}
};

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