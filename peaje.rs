use std::io;

fn main() {
    let mut categoria = String::new();
    let mut tarifa = String::new();
    let mut total = 0;

    // Entrada de la categoría
    println!("Ingrese categoria: ");
    io::stdin().read_line(&mut categoria).unwrap();
    let categoria = categoria.trim();

    // Entrada de la tarifa
    println!("Ingrese tarifa: ");
    io::stdin().read_line(&mut tarifa).unwrap();
    let tarifa = tarifa.trim();

    // Cálculo del total
    if categoria == "auto" || categoria == "camioneta" {
        total = if tarifa == "normal" { 2000 } else { 3000 };
    } else if categoria == "moto" {
        total = if tarifa == "normal" { 600 } else { 900 };
    } else if categoria == "camion" || categoria == "bus" {
        total = if tarifa == "normal" { 3500 } else { 5200 };
    }

    // Mostrar el ticket
    println!(
        r#"
      ------ TICKET ------
      Categoria: {categoria}
      Tarifa: {tarifa}
      Total: ${total}
      "#
    );
}

