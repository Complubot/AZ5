/**********************************************************************************************
*
*   raylib - Advance Game template
*
*   Title Screen Functions Definitions (Init, Update, Draw, Unload)
*
*   Copyright (c) 2014 Ramon Santamaria (@raysan5)
*
*   This software is provided "as-is", without any express or implied warranty. In no event
*   will the authors be held liable for any damages arising from the use of this software.
*
*   Permission is granted to anyone to use this software for any purpose, including commercial
*   applications, and to alter it and redistribute it freely, subject to the following restrictions:
*
*     1. The origin of this software must not be misrepresented; you must not claim that you
*     wrote the original software. If you use this software in a product, an acknowledgment
*     in the product documentation would be appreciated but is not required.
*
*     2. Altered source versions must be plainly marked as such, and must not be misrepresented
*     as being the original software.
*
*     3. This notice may not be removed or altered from any source distribution.
*
**********************************************************************************************/

#include "raylib.h"
#include "screens.h"

//----------------------------------------------------------------------------------
// Global Variables Definition (local to this module)
//----------------------------------------------------------------------------------

// Title screen global variables
static int framesCounter;
static int finishScreen;

static Texture2D title;
static float titleAlpha = 0.0f;

//----------------------------------------------------------------------------------
// Title Screen Functions Definition
//----------------------------------------------------------------------------------

// Title Screen Initialization logic
void InitTitleScreen(void)
{
    // Initialize TITLE screen variables here!
    framesCounter = 0;
    finishScreen = 0;
    
    title = LoadTexture("resources/textures/title.png");
}

// Title Screen Update logic
void UpdateTitleScreen(void)
{
    // Update TITLE screen variables here!
    framesCounter++;
    
    titleAlpha += 0.005f;
    
    if (titleAlpha >= 1.0f) titleAlpha = 1.0f;

    // Press enter to change to ATTIC screen
    if ((IsKeyPressed(KEY_ENTER)) || (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)))
    {
        finishScreen = 1;
    }
}

// Title Screen Draw logic
void DrawTitleScreen(void)
{
    //DrawText("TITLE SCREEN", 100, 100, 140, Fade(BLACK, titleAlpha));
    DrawRectangle(0, 0, GetScreenWidth(), GetScreenHeight(), DARKGRAY);
    DrawTexture(title, GetScreenWidth()/2 - title.width/2, 20, Fade(WHITE, titleAlpha));
    
    if ((framesCounter > 180) && ((framesCounter/40)%2)) DrawText("PRESS ENTER to START", 380, 545, 40, BLACK);
}

// Title Screen Unload logic
void UnloadTitleScreen(void)
{
    // Unload TITLE screen variables here!
    UnloadTexture(title);
}

// Title Screen should finish?
int FinishTitleScreen(void)
{
    return finishScreen;
}