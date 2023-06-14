const SIZE: usize = 10000;

fn build(l: &mut [i32]) {
    let mut num = SIZE as i32;
    for i in 0..SIZE {
        l[i] = num;
        num -= 1;
    }
}

fn sort(l: &mut [i32]) {
    let mut sorted = false;

    while !sorted {
        sorted = true;
        for i in 0..SIZE - 1 {
            if l[i] > l[i + 1] {
                l.swap(i, i + 1);
                sorted = false;
            }
        }
    }
}

fn main() {
    let mut to_sort = [0; SIZE];
    build(&mut to_sort);
    sort(&mut to_sort);
}
