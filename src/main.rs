extern crate hello;
use hello::world::World;

fn id<T>(x : &T) -> &T {
    return x;
}

fn main() {
    let x = World { name : "world" };
    let y = id(&x);
    println!("Hello, {}!", y.name);
}

