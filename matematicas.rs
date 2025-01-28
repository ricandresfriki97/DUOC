use std::io;

fn main() {
    let mut input = String::new();

    // Entrada de a
    println!("Ingrese a: ");
    io::stdin().read_line(&mut input).unwrap();
    let a: i32 = input.trim().parse().unwrap();

    // Entrada de b
    input.clear();
    println!("Ingrese b: ");
    io::stdin().read_line(&mut input).unwrap();
    let b: i32 = input.trim().parse().unwrap();

    // Operaciones
    let suma = a + b;
    let resta = a - b;
    let multiplicacion = a * b;
    let cuociente = a as f64 / b as f64; // Conversión a f64 para división precisa
    let resto = a % b;
    let potencia = (a as f64).powi(b); // Potencia con f64::powi

    // Mostrar resultados
    println!(
        r#"
    Sea a = {a}   y   b = {b}
    suma: {suma}
    resta: {resta}
    multiplicación: {multiplicacion}
    cuociente: {cuociente}
    resto: {resto}
    potencia: {potencia}
    "#
    );
}

