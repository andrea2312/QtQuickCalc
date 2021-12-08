
var Operation;
var Values = [];

function setOperation(op) {
    Operation = op;
}

function pushValue(value) {
    Values.push(parseInt(value));
}

function negValue(value) {
    let res = parseInt(value) * -1;
    return toString(res);
}

function clearState() {
    Values = [];
    Operation = "";
}

function add(a, b) {
    return a + b;
}

function sub(a, b) {
    return a - b;
}

function mult(a, b) {
    return a * b;
}

function div(a, b) {
    return a / b;
}

function calc() {

    console.log(String(Operation));

    if (Values.length < 2)
        return 0;

    var result;
    var fisrtArg = Values[0];
    var secondArg = Values[1];

    switch(String(Operation))
    {
    case "+":
        result = add(fisrtArg, secondArg);
        break;
    case "-":
        result = sub(fisrtArg, secondArg);
        break;
    case "X":
        result = mult(fisrtArg, secondArg);
        break;
    case "/":
        result = div(fisrtArg, secondArg);
        break;
    }

    Values = [];

    return result;
}
