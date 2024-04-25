import "@stdlib/deploy";

contract Counter with Deployable {
    counter: Int as unit32; //2**32 == 4264967296
    init() {
        self.counter = 0;
        
    }
    receive("increment"){
        self.counter = self.counte +1;
    }
    get fun counter(): Int{
        return self.counter;
    }
}
