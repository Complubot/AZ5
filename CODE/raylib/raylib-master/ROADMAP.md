roadmap
-------

Current version of raylib is complete and functional but there is still a lot of room for improvement.
Here it is a wish-list with features and ideas to improve the library.

Note that [raylib source code](https://github.com/raysan5/raylib/tree/master/src) has some *TODO* marks around code with pending things to review and improve. Check [GitHub Issues](https://github.com/raysan5/raylib/issues) for further details!

**raylib 2.x**
 - [ ] raynet: Network module
 - [ ] Support Vulkan API (GRAPHICS_API_VULKAN)
 - [ ] Basic CPU/GPU stats sytem (memory, draws, time...)
 - [ ] Support Animated models
 
**raylib 1.8**
 - [x] Improved Materials system with PBR support
 - [x] Procedural image generation functions (spot, gradient, noise...)
 - [x] Procedural mesh generation functions (cube, sphere...)
 - [x] Custom Android APK build pipeline (default Makefile)

**raylib 1.7**
 - [x] Support configuration flags
 - [x] Improved build system for Android
 - [x] Gamepad support on HTML5
    
**raylib 1.6**
 - [x] Lua scripting support (raylib Lua wrapper)
 - [x] Redesigned audio module
 - [x] Support FLAC file format

**raylib 1.5**
 - [x] Support Oculus Rift CV1 and VR stereo rendering (simulator)
 - [x] Redesign Shaders/Textures system -> New Materials system
 - [x] Support lighting: Omni, Directional and Spot lights
 - [x] Redesign physics module (physac)
 - [x] Chiptunes audio modules support

**raylib 1.4**
 - [x] TTF fonts support (using stb_truetype)
 - [x] Raycast system for 3D picking (including collisions detection)
 - [x] Floyd-Steinberg dithering on 16bit image format conversion
 - [x] Basic image manipulation functions (crop, resize, draw...)
 - [x] Storage load/save data functionality
 - [x] Add Physics module (physac)
 - [x] Remove GLEW dependency -> Replaced by GLAD
 - [x] Redesign Raspberry PI inputs system
 - [x] Redesign gestures module to be multiplatform
 - [x] Module raymath as header-only and functions inline
 - [x] Add Easings module (easings.h)

Any feature missing? Do you have a request? [Let me know!][raysan5]

[raysan5]: mailto:ray@raylib.com "Ramon Santamaria - Ray San"
