-module(myModule).
-export([add/2,temperature/2,newTemperature/2, displayElements/2, evenNumbers/1]).
add(A,B) ->
	A + B.
temperature(Scale, Temperature) ->
	if Scale == kelvin -> 
		   Temperature - 273.15;
	   true ->
		   273.15 + Temperature
	end.

newTemperature(Scale, Temperature) ->
	case Scale of
		celsius ->
			Temperature - 273.15;
		kelvin ->
			273.15 + Temperature;
		_ ->
			uknown_scale
	end.

displayElements(Element, List) when Element > 1 ->
	io:fwrite("~w~n",[lists:nth(Element, List)]),
	displayElements(Element - 1, List).

evenNumbers(List) ->
	[Number || Number <- List, Number rem 2 =:= 0].
	
