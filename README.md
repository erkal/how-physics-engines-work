# How Physics Engines Work

Explaining basics of physics engines using elm-playground

## How to run the code

If you don't have elm installed, you can do it via

```
yarn global add elm
```

Then, you can clone the repo and run elm-reactor as follows

```
git clone https://github.com/erkal/how-physics-engines-work.git
cd how-physics-engines-work.git
elm reactor
```

## Remembering some School Physics

_(... pen and paper explanatinon)_

## Typical Animations with a Timeline

This is **not** the way how the physics engines work.

Example: Moving a ball to right.

### Advantages

- static description of animation (position is a function of time)
- no need to keep and update position in the model
- easily use easing functions
- time travelleing (also into the future) is instant

### Disadvantages

- This kind of animation is difficult to interrupt and chain. In games, we want to interrupt animations on user interaction or collision, etc. A nice elm package which deals with this difficult problem: [elm-animator](https://package.elm-lang.org/packages/mdgriffith/elm-animator/latest/)
- Difficult to manage, if trajectories of moving objects are complex (not straight lines but for example paraboloids)

1. Moving ball example using physics engine
2. Controlling the ball with keyboard (acceleration!)
3. Adding friction
4. Colliding the wall to the right
5. Extending everything above to 2-dimensions
6. Add gravity
7. [More on time steps](https://gafferongames.com/post/fix_your_timestep/)
8. [Nice book on collision detection (online pdf)](http://www.r-5.org/files/books/computers/algo-list/realtime-3d/Christer_Ericson-Real-Time_Collision_Detection-EN.pdf)
