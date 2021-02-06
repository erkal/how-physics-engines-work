# How Physics Engines Work

Explaining the basics of physics engines using elm-playground

---

## How to run the code

You have to have [elm installed](https://guide.elm-lang.org/install/elm.html).

Then, you can clone the repo and run elm-reactor as follows

```bash
git clone https://github.com/erkal/how-physics-engines-work.git
cd how-physics-engines-work
elm reactor
```

---

## Remembering some School Physics

- `change in location = change in time * speed`
- `change in speed = change in time * accelaration`
- `force = mass * accelaration`

1. What are our units for distance and time?
2. What are our units for speed and accelaration?

Some nice links to refresh your memory:

- [Calculating speed, distance and time](https://www.bbc.co.uk/bitesize/topics/z83rkqt/articles/zhbtng8#:~:text=The%20formula%20speed%20%3D%20distance%20%C3%B7,distance%20%3D%20speed%20%C3%97%20time)
- [Speed, velocity and acceleration](https://www.bbc.co.uk/bitesize/guides/z3bqtfr/revision/3)

---

## Typical Animations with a Timeline

This is **not** the way how the physics engines work.

**Example:** Moving a ball to right.

### Advantages

- Static description of animation (position is a function of time). This means that time-travelling (also into the future) is possible in an instant
- No need to keep and update positions (or similar animated data) in the model
- Easily use [easing functions](https://easings.net/)

### Disadvantages

- Difficult to interrupt or chain. In games, we want to interrupt animations on user interaction or collision, etc.
- Difficult to manage, if trajectories of moving objects are complex (not straight lines, but for example, paraboloids)

---

## Animations that simulate Physics in small time steps

Let's talk about this on the moving ball example.

1. Moving ball example, this time with physics
2. Controlling the ball horizontally with keyboard (acceleration!)
3. Controll the ball vertically with keyboard
4. Add gravity
5. Using vectors
6. Make the ball bounce on the floor
7. Exercise: Colliding to four walls
8. Add gravity centers
9. Control gravity centers
10. Make a game out of it

Some useful links:

- [Real-Time Collision Detection](http://www.r-5.org/files/books/computers/algo-list/realtime-3d/Christer_Ericson-Real-Time_Collision_Detection-EN.pdf)
- [Fix Your Timestep!](https://gafferongames.com/post/fix_your_timestep/)
