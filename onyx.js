


const ONYX = "onyx";
const I = "I"






const objective = "make onyx into a robot that I want to take care of";






function replace_symbol(search_symbol, symbol_corpus, replacement_symbol) {
	const location_of_onyx_symbol = symbol_corpus.search(search_symbol);
	if(location_of_onyx_symbol > -1){


		const end = location_of_onyx_symbol + search_symbol.length;


		symbol_corpus = 
			symbol_corpus.slice(0, location_of_onyx_symbol) + 
			replacement_symbol + 
			symbol_corpus.slice(end);
	}

	return symbol_corpus;
}







function speak(symbol_string) {
	let speech = symbol_string;

	speech = replace_symbol(ONYX, speech, "me");
	speech = replace_symbol(I, speech, "you");

	console.log(speech);
}






function i_am_onyx(){
	console.log("I am Onyx");
}






i_am_onyx()
speak(objective);
