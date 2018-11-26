/*
 * File: World-1-2.k
 * ---------------------------
 * Uh oh. We've got some potholes. Ewww.
 */
//karel must start facing right
import "turns";

function up() {
	turnLeft();
	move();
	turnRight();
}

function right() {
	move();
}

function left() {
	turnAround();
	move();
	turnAround();
}

function down() {
	turnRight();
	move();
	turnLeft();
}

function checkFill(){
	down();
	if(noBeepersPresent()) {
		putBeeper();
		up();
	} else {
	up();
	}
}

function checkPothole() {
	if(rightIsClear()) {
		checkFill();
	} else {
	right();
	}
}



function FixPothole(){
	right();
	checkPothole();
	right();
	right();
	right();
	checkPothole();
	right();
}
