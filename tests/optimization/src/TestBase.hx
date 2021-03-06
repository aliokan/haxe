package ;

class TestBase {

	var numTests:Int;
	var numFailures:Int;

	function new() {
		numTests = 0;
		numFailures = 0;
	}

	function assertEquals<T>(expected:T, actual:T, ?p:haxe.PosInfos) {
		++numTests;
		if (expected != actual) {
			++numFailures;
			haxe.Log.trace('$actual should be $expected', p);
		}
	}

	function setup() { }
}