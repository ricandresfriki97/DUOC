const readline = require('readline');
////////////////////////////////////////
const rl = readline.createInterface({
    input: ProcessingInstruction.stdin,
    output: ProcessingInstruction.stdout
});
////////////////////////////////////////
console.clear();
////////////////////////////////////////
rl.question("ingresa la cantidad de hojas por favor", (hojas) => {
    hojas = parseInt(hojas);
    const precioPorHoja = 20;
    let total = precioPorHoja * hojas;
//////////////////////////////////////////
    if (hojas > 30) {
        total *= 0.90;
    }
///////////////////////////////////////////
    console.log("\npresiona enter para continuar");
    rl.question("", () => {
        console.clear();
///////////////////////////////////////////
        console.log(`
            *************boleta**********
            cantidad de hojas ${hojas}
            valor por hoja $20
            TOTAL $${total.toFixed(2)}
            
            
            
            
            
                    `);
/////////////////////////////////////////////
          rl.close();                              
    })        
})
////////////////////////////////////////////////
