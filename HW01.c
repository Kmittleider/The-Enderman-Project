#define REG_DISPCTL *(unsigned short *)0x4000000
#define MODE3 3
#define BG2_ENABLE (1<<10)


/* Create a color with the specified RGB values */
#define COLOR(r, g, b) ((r) | (g)<<5 | (b)<<10)

/* Calculate the position of a pixel based on it's row and column */
#define OFFSET(R,C) ((R)*240+(C))

//Predefined colors
#define GRAY COLOR(5,5,5)
#define MAGENTA COLOR(31, 0, 31)
#define LIGHTPURPLE COLOR(20, 9, 20)
#define PURPLE COLOR(15, 6, 22)
#define BLACK 0

// Function Prototypes
void setPixel(int, int, unsigned short);
void drawRect(int, int, int, int, unsigned short);
void upClose(); 
void topLeft(); 
void center();
void topRight();

// Global Variables
volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;
volatile unsigned short *scanlineCounter = (unsigned short *) 0x04000006;

void waitForVBlank() {
    while(*scanlineCounter >= 160);
    while(*scanlineCounter < 160);
}

int main() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    int counter = 0;

    while (1) {
        waitForVBlank();
        counter++;
        if (counter == 40) {
            drawRect(168, 5, 64, 78, BLACK);
            upClose();
        } else if (counter == 80) {
            drawRect(93, 92, 127, 68, BLACK);
            topLeft();
        } else if (counter == 120) {
            drawRect(1, 4, 49, 83, BLACK);
            center();
        } else if (counter > 160) {
            drawRect(78, 48, 74, 112, BLACK);
            topRight();
            counter = 0;
        }
    }
}

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[(col) + 240*(row)] = color;
}

void drawRect(int col, int row, int length, int width, unsigned short color) {
    int i, j;
    for (i = 0; i < length; i++) {
        for (j = 0; j < width; j++) {
            setPixel(col + i, row + j, color);
        }
    }
}

void upClose() {
    
    //head
    drawRect(131, 97, 54, 50, GRAY);

    //left eye
    drawRect(131, 121, 7, 7, MAGENTA);
    drawRect(137, 121, 7, 7, LIGHTPURPLE);
    drawRect(144, 121, 7, 7, MAGENTA);

    //right eye
    drawRect(164, 121, 7, 7, MAGENTA);
    drawRect(171, 121, 7, 7, LIGHTPURPLE);
    drawRect(178, 121, 7, 7, MAGENTA);

    //body
    drawRect(115, 147, 88, 12, GRAY);

    //particles
    drawRect(120, 102, 3, 9, PURPLE);
    drawRect(121, 103, 1, 7, LIGHTPURPLE);
    drawRect(117, 105, 8, 3, PURPLE);
    drawRect(118, 106, 6, 1, LIGHTPURPLE);

    drawRect(99, 126, 10, 3, PURPLE);
    drawRect(100, 127, 8, 1, MAGENTA);
    drawRect(103, 123, 3, 7, PURPLE);
    drawRect(104, 124, 1, 5, MAGENTA);

    drawRect(202, 105, 3, 9, PURPLE);
    drawRect(203, 106, 1, 7, MAGENTA);
    drawRect(199, 107, 8, 3, PURPLE);
    drawRect(200, 108, 6, 1, MAGENTA);

    drawRect(197, 127, 3, 7, PURPLE);
    drawRect(198, 128, 1, 6, LIGHTPURPLE);
    drawRect(194, 129, 7, 4, PURPLE);
    drawRect(194, 130, 7, 2, LIGHTPURPLE);

    drawRect(207, 145, 7, 3, PURPLE);
    drawRect(208, 146, 6, 1, MAGENTA);
    drawRect(210, 142, 4, 8, PURPLE);
    drawRect(211, 143, 2, 6, MAGENTA);
}

void topLeft() {
    //head
    drawRect(14, 6, 14, 13, GRAY);

    //left eye
    drawRect(14, 12, 2, 2, MAGENTA);
    drawRect(16, 12, 2, 2, LIGHTPURPLE);
    drawRect(18, 12, 2, 2, MAGENTA);

    //right eye
    drawRect(22, 12, 2, 2, MAGENTA);
    drawRect(24, 12, 2, 2, LIGHTPURPLE);
    drawRect(26, 12, 2, 2, MAGENTA);

    //body
    drawRect(8, 19, 26, 23, GRAY);

    //arms
    drawRect(13, 19, 1, 23, BLACK);
    drawRect(8, 42, 5, 23, GRAY);

    drawRect(28, 19, 1, 23, BLACK);
    drawRect(29, 42, 5, 23, GRAY);

    //legs
    drawRect(14, 42, 5, 43, GRAY);
    drawRect(23, 42, 5, 43, GRAY);

    //particles
    drawRect(38, 22, 7, 3, PURPLE);
    drawRect(39, 23, 5, 1, MAGENTA);
    drawRect(41, 20, 3, 6, PURPLE);
    drawRect(42, 21, 1, 4, MAGENTA);
    
    drawRect(45, 43, 3, 8, PURPLE);
    drawRect(46, 44, 1, 6, LIGHTPURPLE);
    drawRect(43, 47, 6, 3, PURPLE);
    drawRect(44, 48, 4, 1, LIGHTPURPLE);

    drawRect(38, 76, 2, 5, PURPLE);
    drawRect(39, 76, 1, 5, MAGENTA);
    drawRect(35, 78, 7, 2, PURPLE);
    drawRect(35, 79, 7, 1, MAGENTA);

    drawRect(5, 70, 3, 6, PURPLE);
    drawRect(6, 71, 1, 4, LIGHTPURPLE);
    drawRect(2, 73, 8, 3, PURPLE);
    drawRect(3, 74, 6, 1, LIGHTPURPLE);
}

void center() { 
    //body & head
    drawRect(102, 53, 25, 63, GRAY);

    //arms
    drawRect(93, 77, 7, 67, GRAY);
    drawRect(129, 77, 7, 67, GRAY);

    //legs
    drawRect(102, 116, 8, 44, GRAY);
    drawRect(119, 116, 8, 44, GRAY);

    //left eye
    drawRect(102, 62, 3, 4, MAGENTA);
    drawRect(105, 62, 4, 4, LIGHTPURPLE);
    drawRect(109, 62, 3, 4, MAGENTA);

    //right eye
    drawRect(117, 62, 3, 4, MAGENTA);
    drawRect(120, 62, 4, 4, LIGHTPURPLE);
    drawRect(124, 62, 3, 4, MAGENTA);

    //particles
    drawRect(86, 85, 3, 7, PURPLE);
    drawRect(87, 86, 1, 5, MAGENTA);
    drawRect(83, 87, 8, 3, PURPLE);
    drawRect(84, 88, 6, 1, MAGENTA);

    drawRect(85, 127, 3, 10, LIGHTPURPLE);
    drawRect(86, 128, 1, 8, PURPLE);
    drawRect(81, 131, 4, 3, LIGHTPURPLE);
    drawRect(82, 132, 3, 1, PURPLE);

    drawRect(142, 142, 4, 10, MAGENTA);
    drawRect(143, 143, 2, 9, LIGHTPURPLE);
    drawRect(138, 145, 11, 4, MAGENTA);
    drawRect(139, 146, 10, 2, LIGHTPURPLE);

    drawRect(147, 109, 3, 6, MAGENTA);
    drawRect(148, 110, 1, 4, PURPLE);
    drawRect(149, 112, 3, 3, MAGENTA);
    drawRect(150, 113, 1, 1, PURPLE);

    drawRect(136, 62, 6, 4, LIGHTPURPLE);
    drawRect(137, 63, 4, 2, PURPLE);
    drawRect(139, 65, 3, 4, LIGHTPURPLE);
    drawRect(140, 66, 2, 2, PURPLE);
}

void topRight() {
    //body & head
    drawRect(192, 8, 14, 32, GRAY);

    //arms
    drawRect(187, 19, 4, 37, GRAY);
    drawRect(207, 19, 4, 37, GRAY);

    //legs
    drawRect(192, 40, 5, 38, GRAY);
    drawRect(201, 40, 5, 38, GRAY);

    //left eye
    drawRect(192, 13, 2, 2, MAGENTA);
    drawRect(194, 13, 2, 2, LIGHTPURPLE);
    drawRect(196, 13, 2, 2, MAGENTA);

    //right eye
    drawRect(200, 13, 2, 2, MAGENTA);
    drawRect(202, 13, 2, 2, LIGHTPURPLE);
    drawRect(204, 13, 2, 2, MAGENTA);

    //particles
    drawRect(177, 41,3, 8, PURPLE);
    drawRect(178, 42, 1, 6, MAGENTA);
    drawRect(174, 44, 7, 3, PURPLE);
    drawRect(175, 45, 5, 1, MAGENTA);

    drawRect(180, 74, 8, 3, PURPLE);
    drawRect(181, 75, 6, 1, MAGENTA);
    drawRect(184, 68, 3, 11, PURPLE);
    drawRect(185, 69, 1, 9, MAGENTA);

    drawRect(215, 47, 3, 6, LIGHTPURPLE);
    drawRect(216, 48, 1, 4, PURPLE);
    drawRect(213, 50, 7, 1, LIGHTPURPLE);
    drawRect(213, 51, 7, 1, PURPLE);

    drawRect(218, 64, 8, 3, PURPLE);
    drawRect(219, 65, 6, 1, MAGENTA);
    drawRect(221, 62, 3, 7, PURPLE);
    drawRect(222, 63, 1, 5, MAGENTA);
}