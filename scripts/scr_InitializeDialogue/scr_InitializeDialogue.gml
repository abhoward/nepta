padding = 50; // Padding on x-axis between box and window

//Outer Box Properties (white)
width = window_get_width() - (2 * padding);
height = 200;

xOrigin = padding;
yOrigin = 10;

//Inner Box Properties (black)
borderSize = 20;
innerBoxWidth = width - borderSize;
innerBoxHeight = height - borderSize;

innerBox_xOrigin = xOrigin + (borderSize / 2);
innerBox_yOrigin = yOrigin + (borderSize / 2);

// Dialogue Display Properties
avatarScale = 2;
avatar_xOrigin = innerBox_xOrigin + 80;
avatar_yOrigin = innerBox_yOrigin + 80;

text_xOrigin = avatar_xOrigin + 100;
text_yOrigin = innerBox_yOrigin + 25;

for (i = 0; i < 100; i++) // 100 is for lines of dialogue
{
	dialogue[i, 0] = -1 // Sprite index
	dialogue[i, 1] = ""; // Conversation within Dialogue
}

active = false;

convoDialogueCount = 0; // Number of lines in a specific conversation
spriteToDisplay = -1; // Avatar to display
stringToDisplay = ""; // Conversation line to display
convoIndex = 0; // Current index towards our convoDialogueCount
currCharIndex = 1; // Current character index of string to apply to string to display