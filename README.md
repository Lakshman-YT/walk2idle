# Smooth Walk-to-Stop Transition in Godot
A small demo project showcasing how to implement a smooth transition from walking to stopping in Godot using **AnimationTree** and **Tween**.

This repository accompanies the tutorial I created on YouTube. You can check out the video for a step-by-step guide: [Watch the Tutorial on YouTube](https://youtu.be/MTCGoue_vww).

---

## Features
- Smooth walk-to-stop transition for characters.
- Integration of **AnimationTree** for blending animations.
- Usage of **Tween** to create fluid motion effects.
- Easy-to-understand code for beginners.

---

## How It Works
### Key Components:
1. **AnimationTree**:
   - Used for blending walk and idle animations seamlessly.
   - Adjusts parameters to determine animation playback.

2. **Tween**:
   - Smoothly transitions movement speed and animation blending values.

### Steps:
1. Set up an `AnimationTree` with walk and idle animations.
2. Add a `Tween` node to handle the interpolation of motion and animation values.
3. Adjust parameters based on the character's velocity to trigger transitions.
4. Code snippets and logic are available in the repository files for reference.

---

## Getting Started
1. Clone the repository:
   ```bash
   git clone https://github.com/Lakshman-YT/walk2idle.git
   cd walk2idle
