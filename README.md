# 🎮 Way Home
A 2D platformer built with the Godot Engine Version 4.5

## 📖 Overview
This is a 2D platformer created using Godot, featuring three levels, enemy encounters, checkpoints, and a heart‑based health system. The game runs on itch.io, making it easy for players to jump in and explore. Each level introduces new mechanics, hazards, and interactions to keep the gameplay engaging.

## 🎮 Controls
- Left Arrow — Move left
- Right Arrow — Move right
- Up Arrow — Jump

## 🗺️ Levels

### Level 1 — Tutorial
- Learn movement and jumping
- Read instructions and interact with UI elements
- Meet your first hazards
- Introduces basic enemies

### Level 2 — Challenge
- More complex platforming
- Checkpoints to save progress
- Faster and more dangerous enemies

### Level 3 — Final Level
- Hardest enemy patterns
- Longer jumps and tighter timing
- Final challenge to complete the game

## 👾 Enemies & Hazards
Your adventure includes several types of enemies and obstacles:

### 🪨 Boulders
Falling hazards that move along paths and deal damage on contact.

### 🐾 Moles
Burrowing enemies that pop out of the ground and surprise the player.

### 🔥 Fire Traps
Stationary hazards that burn the player if touched.

### ⚔️ Spikes
Instant‑damage obstacles placed on floors or walls.

### ⚙️ Other Traps
Additional mechanical hazards such as traps that activate when touched.

## ❤️ Health System
The player uses a heart‑based health system:
- Taking damage removes one heart
- If hearts reach zero:
  - The player respawns at the last checkpoint (if activated), or
  - The level reloads from the beginning

This keeps the game challenging but fair.

## 📍 Checkpoints
Checkpoints allow the player to continue from a saved position instead of restarting the entire level.
- Touching a checkpoint saves your position
- On death, the player is teleported back to the last checkpoint
- If no checkpoint is active, the level restarts

## 🎵 Music
UpTownFunk music by Mark Ronson, feat. Bruno Mars

## 🛠️ Technology
- Engine: Godot
- Language: GDScript
- Platform: itch.io
- Autoloaded global state
- Checkpoint system
- Scene transitions
- UI animations
- Multiple enemy and hazard types

## 🚀 How to Play
- Open the game on itch.io
- Use the arrow keys to move and jump
- Avoid enemies and hazards
- Activate checkpoints to save progress
- Reach the end of each level to win
