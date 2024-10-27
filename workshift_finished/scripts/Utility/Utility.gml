// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function approach(_start, _end, _value){
	//this is a simple function that returns a *start* value,
	//moved toward and *end* value but *without passing it*.
	if (_start > _end){
		return max(_end, _start - _value);	
	} else {
		return min(_end, _start + _value);	
	}
}