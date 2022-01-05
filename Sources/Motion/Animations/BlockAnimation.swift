public class BlockAnimation<State>: Animation {

    public var state: State
    
    private let callback: (State) -> State
    
    public init(state: State, callback: @escaping (State) -> State) {
        self.state = state
        self.callback = callback
    }
    
    public override func hasResolved() -> Bool {
        false
    }
    
    public override func tick(frame: AnimationFrame) {
        state = callback(state)
    }

}
