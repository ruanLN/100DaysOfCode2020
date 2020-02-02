/**
 * Challanged by @kingnido to solve https://app.codesignal.com/challenge/xs9u2omQGtqgCL65v
 * took some time to figure out that I need to count how much free spaces I have in a given range.
 * my solution received a time limit exceeded in some test cases, probably it is possible to cache
 * partial solutions to avoid recalculation, and cut cases that never will be the solution
 * 
 * another possible approach is to count the filled numbers in a given range, it will avoid some 
 * calculation
 */

fn freeSpacesInBetween(sorted_balls: &[i32], size: usize) -> usize {
    let mut free: usize = 0;
    let mut occupied: usize = 0;
    for (x,y) in sorted_balls.iter().zip(sorted_balls.iter().skip(1)) {
        let diff = (y - x) as usize;
        free += diff - 1;
        occupied += 1;
        if free + occupied >= size {
            return  size - occupied
        }
    }
    let end = sorted_balls[0] as usize + size -1 ;
    free += end - *sorted_balls.last().unwrap() as usize ;
    return free
}

fn ballsRearranging(balls: Vec<i32>) -> i32 {
    let mut balls = balls.clone();
    balls.sort();
    let mut min_value = std::usize::MAX;
    for i in 0..balls.len() {
        min_value = std::cmp::min(min_value, freeSpacesInBetween(&balls[i..], balls.len()))
    }
    return min_value as i32;
}
