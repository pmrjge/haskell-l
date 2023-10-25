module PhysicsMotion where
    type R = Double
    type Position = R
    type Time = R
    type Velocity = R
    type Derivative = (R -> R) -> R -> R

    derivative:: R -> Derivative
    derivative dt x t = (x (t + dt/2) - x (t - dt/2)) / dt

    carPosition :: Time -> Position
    carPosition = cos

    carVelocity :: Time -> Velocity
    carVelocity = derivative 0.01 carPosition

    carVelocityAnalytic :: Time -> Velocity
    carVelocityAnalytic t = -sin t

    velFromPos :: R -> (Time -> Position) -> (Time -> Velocity)
    velFromPos = derivative

    