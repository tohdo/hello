struct World<'a> {
    name : &'a str
}

fn id<T>(x : &T) -> &T {
    return x;
}

fn main() {
    let x = World { name : "world" };
    let y = id(&x);
    println!("Hello, {}!", y.name);
}
