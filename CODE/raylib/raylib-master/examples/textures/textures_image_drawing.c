/*******************************************************************************************
*
*   raylib [textures] example - Image loading and drawing on it
*
*   NOTE: Images are loaded in CPU memory (RAM); textures are loaded in GPU memory (VRAM)
*
*   This example has been created using raylib 1.4 (www.raylib.com)
*   raylib is licensed under an unmodified zlib/libpng license (View raylib.h for details)
*
*   Copyright (c) 2016 Ramon Santamaria (@raysan5)
*
********************************************************************************************/

#include "raylib.h"

int main()
{
    // Initialization
    //--------------------------------------------------------------------------------------
    int screenWidth = 800;
    int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "raylib [textures] example - image drawing");

    // NOTE: Textures MUST be loaded after Window initialization (OpenGL context is required)

    Image cat = LoadImage("resources/cat.png");             // Load image in CPU memory (RAM)
    ImageCrop(&cat, (Rectangle){ 100, 10, 280, 380 });      // Crop an image piece
    ImageFlipHorizontal(&cat);                              // Flip cropped image horizontally
    ImageResize(&cat, 150, 200);                            // Resize flipped-cropped image
    
    Image parrots = LoadImage("resources/parrots.png");     // Load image in CPU memory (RAM)
    
    // Draw one image over the other with a scaling of 1.5f
    ImageDraw(&parrots, cat, (Rectangle){ 0, 0, cat.width, cat.height }, (Rectangle){ 30, 40, cat.width*1.5f, cat.height*1.5f });
    ImageCrop(&parrots, (Rectangle){ 0, 50, parrots.width, parrots.height - 100 }); // Crop resulting image
    
    UnloadImage(cat);       // Unload image from RAM
    
    // Load custom font for frawing on image
    Font font = LoadFont("resources/custom_jupiter_crash.png");
    
    // Draw over image using custom font
    ImageDrawTextEx(&parrots, (Vector2){ 300, 230 }, font, "PARROTS & CAT", font.baseSize, -2, WHITE);
    
    UnloadFont(font); // Unload custom spritefont (already drawn used on image)

    Texture2D texture = LoadTextureFromImage(parrots);      // Image converted to texture, uploaded to GPU memory (VRAM)
    UnloadImage(parrots);   // Once image has been converted to texture and uploaded to VRAM, it can be unloaded from RAM
    
    SetTargetFPS(60);
    //---------------------------------------------------------------------------------------

    // Main game loop
    while (!WindowShouldClose())    // Detect window close button or ESC key
    {
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();

            ClearBackground(RAYWHITE);

            DrawTexture(texture, screenWidth/2 - texture.width/2, screenHeight/2 - texture.height/2 - 40, WHITE);
            DrawRectangleLines(screenWidth/2 - texture.width/2, screenHeight/2 - texture.height/2 - 40, texture.width, texture.height, DARKGRAY);

            DrawText("We are drawing only one texture from various images composed!", 240, 350, 10, DARKGRAY);
            DrawText("Source images have been cropped, scaled, flipped and copied one over the other.", 190, 370, 10, DARKGRAY);

        EndDrawing();
        //----------------------------------------------------------------------------------
    }

    // De-Initialization
    //--------------------------------------------------------------------------------------
    UnloadTexture(texture);       // Texture unloading

    CloseWindow();                // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}