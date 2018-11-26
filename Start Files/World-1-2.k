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

function drop(){
	down();
	putBeeper();
	up();
}

function FixPotHole(){
	right();
	drop();
	right();
	right();
	right();
	drop();
	right();
}
