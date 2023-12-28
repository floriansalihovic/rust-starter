pub fn say_hello() -> &'static str {
    "Hello world!"
}

#[cfg(test)]
mod tests {
    use crate::say_hello;

    #[test]
    fn it_works() {
        assert_eq!(say_hello(), "Hello world!");
    }
}
