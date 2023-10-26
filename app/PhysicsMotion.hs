module PhysicsMotion where
    type R = Double
    type Position = R
    type Time = R
    type Velocity = R
    type Acceleration = R
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

    positionCV :: Position -> Velocity -> Time -> Position
    positionCV x0 v0 t = v0 * t + x0

    accFromVel :: R -> (Time -> Velocity) -> (Time -> Acceleration)
    accFromVel = derivative

    velocityCA :: Velocity -> Acceleration -> Time -> Velocity
    velocityCA v0 a0 t = a0 * t + v0

    positionCA :: Position -> Velocity -> Acceleration -> Time -> Position
    positionCA x0 v0 a0 t = a0 * t**2 / 2 + v0 * t + x0

    