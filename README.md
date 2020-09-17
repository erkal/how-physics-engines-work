# How Physics Engines Work

Explaining basics of physics engines using elm-playground

## How to run the code

You have to have elm installed. If you have yarn installed, you can do it via

```
yarn global add elm
```

Then, you can clone the repo and run elm-reactor as follows

```
git clone https://github.com/erkal/how-physics-engines-work.git
cd how-physics-engines-work.git
elm reactor
```

---

## Remembering some School Physics

Some nice links to refresh your memory:

- [Calculating speed, distance and time](https://www.bbc.co.uk/bitesize/topics/z83rkqt/articles/zhbtng8#:~:text=The%20formula%20speed%20%3D%20distance%20%C3%B7,distance%20%3D%20speed%20%C3%97%20time)
- [Speed, velocity and acceleration](https://www.bbc.co.uk/bitesize/guides/z3bqtfr/revision/3)

---

## Typical Animations with a Timeline

This is **not** the way how the physics engines work.

Example: Moving a ball to right.

### Advantages

- Static description of animation (position is a function of time). This means time travelleing (also into the future) is possible in an instant
- No need to keep and update positions (or similar animated data) in the model
- Easily use [easing functions](https://easings.net/)

### Disadvantages

- Difficult to interrupt or chain. In games, we want to interrupt animations on user interaction or collision, etc.
- Difficult to manage, if trajectories of moving objects are complex (not straight lines, but for example, paraboloids)

---

## Animations that simulate Physics in small time steps

Lets talk about this on the moving ball example.

1. Moving ball example, this time with physics
2. Controlling the ball with keyboard (acceleration!)
3. Adding friction
4. Colliding the wall to the right
5. Extending everything above to 2-dimensions
6. Add gravity
7. Exercise: Colliding to four walls

Some useful links:

- [Real-Time Collision Detection](http://www.r-5.org/files/books/computers/algo-list/realtime-3d/Christer_Ericson-Real-Time_Collision_Detection-EN.pdf)
- [Fix Your Timestep!](https://gafferongames.com/post/fix_your_timestep/)
