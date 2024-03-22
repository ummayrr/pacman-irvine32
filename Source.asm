 INCLUDE Irvine32.inc
 includelib winmm.lib


WriteConsoleW PROTO :DWORD, :PTR WORD, :DWORD, :PTR DWORD, :DWORD

PlaySound PROTO, pszSound:PTR BYTE,  hmod:DWORD,  fdwSound:DWORD

BUFFER_SIZE = 5000
.data


number3 db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                 ..-'''-.      ",0ah
        db "                                \.-'''\ \      ",0ah
        db "                                       | |      ",0ah
        db "                                    __/ /       ",0ah
        db "                                   |_  '.       ",0ah
        db "                                      `.  \     ",0ah
        db "                                        \ '.    ",0ah
        db "                                         , |    ",0ah
        db "                                         | |    ",0ah
        db "                                        / ,'    ",0ah
        db "                              --....--'  /         ",0ah
        db "                              `.. __..-'          ",0ah
        db "                                                ",0ah
        db "                                                ",0ah
        db "                                                ",0ah,0






number2 db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                       .-''-.     ",0ah
        db "                                     .' .-.  )    ",0ah
        db "                                    / .'  / /     ",0ah
        db "                                   (_/   / /      ",0ah
        db "                                        / /       ",0ah
        db "                                       / /        ",0ah
        db "                                      . '         ",0ah
        db "                                     / /    _.-') ",0ah
        db "                                   .' '  _.'.-''  ",0ah
        db "                                  /  /.-'_.'      ",0ah
        db "                                 /    _.'         ",0ah
        db "                                ( _.-'             ",0ah,0


number1 db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                               ",0ah
        db "                                        __       ",0ah
        db "                                   ...-'  |`.    ",0ah
        db "                                   |      |  |   ",0ah
        db "                                   ....   |  |   ",0ah
        db "                                     -|   |  |   ",0ah
        db "                                      |   |  |   ",0ah
        db "                                   ...'   `--'   ",0ah
        db "                                   |         |`. ",0ah
        db "                                   ` --------\ | ",0ah
        db "                                    `---------'' ",0ah,0

SND_FILENAME DWORD 00020000h
SND_LOOP DWORD  00000008h
SND_ASYNC DWORD 00000001h
file BYTE "sound.wav" , 0

box1 db"********************************************************************************",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"*                                                                              *",0ah
db"********************************************************************************",0ah,0


box2 db"|                                                                              |",0ah
db"|   ************************************************************************",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   *                                                                      *   |",0ah
db"|   ************************************************************************",0ah,0

pacmanart db" (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((",0ah
db"|   (                                                                      (   |",0ah
db"|   (   @@@@@@@@@%%%%####%@@@@@@@@                                         (   |",0ah
db"|   (   @@@@@@@%#++=======+#@@@@@                                          (   |",0ah
db"|   (   @@@@@@*++======  ====#@@@                                          (   |",0ah
db"|   (   @@@@@*++==========+*%@@@@                                          (   |",0ah
db"|   (   @@@@#+++=======+#                                                  (   |",0ah
db"|   (   @@@@#++++=====*%@O O O O O O O O O O                               (   |",0ah
db"|   (   @@@@%++++=======+*%@@@@@@                                          (   |",0ah
db"|   (   @@@@@#+++++=========*%@@@                                          (   |",0ah
db"|   (   @@@@@@%*++++++++++++*@@@@                                          (   |",0ah
db"|   (   @@@@@@@@@#**++++*#%@@@@@@                                          (   |",0ah
db"|   (                                                                      (   |",0ah
db"|   (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((",0ah,0



nameEnter dw ' ',':',06bah, 06cch, 0631h, 06a9h, 0020h, 062ch, 0631h, 062fh, 0020h, 0645h, 0627h, 0646h, 0020h, 0627h, 0646h, 067eh, 0627h,0
aapkaNaam dw ' ',':',0645h, 0627h, 0646h, 0020h, 0627h, 06a9h, 067eh, 0622h,0
    

temp byte ?
var dd ?

strScore dw ' ',':',06d2h, 06c1h, 0020h, 0631h, 0648h, 06a9h, 0633h, 0627h, 0020h, 0627h, 06a9h, 0020h, 067eh, 0622h,0
writtenChars DWORD ?
score dd 0



xPos BYTE 37
yPos BYTE 19


oldXPos BYTE 37
oldYPos BYTE 19

xCoinPos BYTE ?
yCoinPos BYTE ?

inputChar BYTE ?

playerChar dw 15E7h
x dd ?
var1 dd ?

enemyChar dw 15E3h
xEnemyPos BYTE 37
yEnemyPos BYTE 12


xEnemyPos3a byte 4
yEnemyPos3a byte 3


xEnemyPos3b byte 60
yEnemyPos3b byte 15


xEnemyPos3c byte 15
yEnemyPos3c byte 20



enemyDirection dd 0
space db " ",0

maze db "+==========================================================================+",0ah,0
db "|              |.........|.......|......|...........|.......|              |",0ah,0
db "|              *.....................o......................*              |",0ah,0
db "|              *...................******...................*              |",0ah,0
db "|         ******............................................******         |",0ah,0
db "|              *............................................*              |",0ah,0
db "|              *..****.*.*********.*....*.*********.*.*****.*              |",0ah,0
db "|              *.......*...........*....*...........*.*.....*              |",0ah,0
db "|              *******.*.***.*****.*----*.*****.***.*.*****.*              |",0ah,0
db "|         ****       *.*...*.....*.*    *.*.....*...*.*.....* *****        |",0ah,0
db "|              *******.*.***.***o*.*    *.*o***.***.*.*****.*              |",0ah,0
db "|         ****       *.*...*.....*.*    *.*.....*...*.*.....* *****        |",0ah,0
db "|              *******.*.***.*****.******.*****.***.*.*****.*              |",0ah,0
db "|              *............................................*              |",0ah,0
db "|              *..........**....................**..........*              |",0ah,0
db "|              *..........**....................**..........*              |",0ah,0
db "|              *..........**.......******.......**..........*              |",0ah,0
db "|         ******..........**....................**..........******         |",0ah,0
db "|              *..........**....................**..........*              |",0ah,0
db "|              *..........******............******..........*              |",0ah,0
db "|              *............................................*              |",0ah,0
db "|              |.........|.......|......|...........|.......|              |",0ah,0
db "+==========================================================================+",0ah,0

maze2 db"                        ****************************                        ",0ah,0
db"                        *............**............*                        ",0ah,0
db"                        *o*  *.*   *.**.*   *.*  *o*                        ",0ah,0
db"                        *.****.*****.**.*****.****.*                        ",0ah,0
db"                        *..........................*                        ",0ah,0
db"                        *.****.**.********.**.****.*                        ",0ah,0
db"                        *......**....**....**......*                        ",0ah,0
db"                        ******.***** ** *****.******                        ",0ah,0
db"                             *.***** ** *****.*                             ",0ah,0
db"                             *.**          **.*                             ",0ah,0
db"                        ******.** ***--*** **.******                        ",0ah,0
db"                        *     .   *------*   .     *                        ",0ah,0
db"                        ******.** *------* **.******                        ",0ah,0
db"                             *.** ******** **.*                             ",0ah,0
db"                             *.** ******** **.*                             ",0ah,0
db"                        ******.** ******** **.******                        ",0ah,0
db"                        *............**............*                        ",0ah,0
db"                        *.****.*****.**.*****.****.*                        ",0ah,0
db"                        *o..**.......  .......**..o*                        ",0ah,0
db"                        ***.**.**.********.**.**.***                        ",0ah,0
db"                        *......**....**....**......*                        ",0ah,0
db"                        *..........................*                        ",0ah,0
db"                        ****************************                        ",0ah,0


maze3 db" ************************************* *************************************",0ah,0
db" *....o....*.....*.....*.*...*.*...*.*.....*...........*...o.........*....**",0ah,0
db" *.*****.*.*.*.***.*****.*.*.*.***.*.***.*.*.*******.*.*.*.***********.*****",0ah,0
db" *.*.*.*.*...*.*.*.*.*...*.*...*.....*...*.*...*...*.*...*.....*...........*",0ah,0
db" *.*.*.*******.*.*.*.*.***.*****.*****.*.*.***.*.*****.*****.***.....*******",0ah,0
db" *...*...*.........*.....*.*.....*.....*.*.*.*...*...*.*.*.....*...........*",0ah,0
db" *.*.***.*****.***.*.*.***.***.***.*******.*.*.*****.***.***.***.....*.***.*",0ah,0
db" *.*.....*.*.*...*.*.*...*...*.....*.*.............*.....*.*.....*...*.*...*",0ah,0
db" *.*****.*.*.*.***.*****.***.*.*.*.*.***.*********.***.***.*.***.***.*****.*",0ah,0
db" *.*.........*...*.*...........*.*.*.......*.......*.......*...*...*...*...*",0ah,0
db" *.*******.*****************.***.*******.*.*******.*.*****.***********.*.*.*",0ah,0
db" *...........*.........*.*.*...*.*...*...*...*...*.....*.*.*.....*.......*.*",0ah,0
db" *****.***************.*.*.*******.*.*.*.*****.*****.*.*.*.*.....*.....***.*",0ah,0
db" *.*.....*.*.*.....*.....*.*.....*.*...*...*.*.....*.*...*...............*.*",0ah,0
db" *.*****.*.*.*.*******.***.*.***.*******.*.*.*.*****.*********.*******.*.*.*",0ah,0
db" *.*...*.....*.....*.*...*.*...*.*.....*.*.....*.....*.....*.*...***...*.*.*",0ah,0
db" *.*.*.***.*****.***.***.*.***.*.***.***.***.*.*.*****.*****.***.***.***.*.*",0ah,0
db" *.*.*.....*.....*.*.*.........*.*.......*.*.*.*.......*...*.....*...*...*.*",0ah,0
db" *.*****.*.*****.*.*.***.*.***.*.*.*****.*.***.*******.*.*****.***.*.*****.*",0ah,0
db" *...*...*.......*.*...*.*.*...*.*.....*.*.......*.....*...*.*.*.*.*.*.....*",0ah,0
db" *.***.*****.***.*.*.***.*****.***.***.***.***.***.***.*.***.***.*.***.***.*",0ah,0
db" ..........*...*.......o.....*.......*.*.....*.................o............",0ah,0
db" ************************************* *************************************",0ah,0

title1 db"*    ######                                                               ",0ah
db"*    #    #                                                               ",0ah
db"*    ######                                                               ",0ah
db"*    #                                                                    ",0ah
db"*    #                                                                    ",0ah,0


title2 db"*    ######   #####                                                       ",0ah
db"*    #    #   #   #                                                       ",0ah
db"*    ######   #####                                                       ",0ah
db"*    #        #   #                                                       ",0ah
db"*    #        #   #                                                       ",0ah,0

title3 db"*    ######   #####  #####                                                ",0ah
db"*    #    #   #   #  #   #                                                ",0ah
db"*    ######   #####  #####                                                ",0ah
db"*    #        #   #  #   #                                                ",0ah
db"*    #        #   #  #   #                                                ",0ah,0

title4 db"*    ######   #####  #####  ##    ###                                     ",0ah
db"*    #    #   #   #  #   #  ##  ###                                       ",0ah
db"*    ######   #####  #####  #####                                         ",0ah
db"*    #        #   #  #   #  ##  ###                                       ",0ah
db"*    #        #   #  #   #  ##    ###                                     ",0ah,0

title5 db"*    ######   #####  #####  ##    ###      @@       @@                    ",0ah
db"*    #    #   #   #  #   #  ##  ###        @@@@   @@@@                    ",0ah
db"*    ######   #####  #####  #####          @@ @@ @@ @@                    ",0ah
db"*    #        #   #  #   #  ##  ###        @@  @@@  @@                    ",0ah
db"*    #        #   #  #   #  ##    ###      @@   @   @@                    ",0ah,0

title6 db"*    ######   #####  #####  ##    ###      @@       @@   @@@@@            ",0ah
db"*    #    #   #   #  #   #  ##  ###        @@@@   @@@@   @   @            ",0ah
db"*    ######   #####  #####  #####          @@ @@ @@ @@   @@@@@            ",0ah
db"*    #        #   #  #   #  ##  ###        @@  @@@  @@   @   @            ",0ah
db"*    #        #   #  #   #  ##    ###      @@   @   @@   @   @            ",0ah,0

title7 db"*    ######   #####  #####  ##    ###      @@       @@   @@@@@   @@@    @@",0ah
db"*    #    #   #   #  #   #  ##  ###        @@@@   @@@@   @   @   @@@@   @@",0ah
db"*    ######   #####  #####  #####          @@ @@ @@ @@   @@@@@   @@ @@  @@",0ah
db"*    #        #   #  #   #  ##  ###        @@  @@@  @@   @   @   @@  @@ @@",0ah
db"*    #        #   #  #   #  ##    ###      @@   @   @@   @   @   @@   @@@@",0ah,0

buffer BYTE BUFFER_SIZE DUP(?)
filename     BYTE "D:\Downloads\highscores.txt",NULL
fileHandle   HANDLE ?
stringLength DWORD ?
bytesWritten DWORD ?
gameOverStr BYTE "Game Over!",0dh,0ah,0
nameStr DB 255 Dup (?)
scoreStr  BYTE 12 DUP(?) 
levelNumberStr db 5 DUP (?)
bytesRead DWORD ?
newLine db 0ah,0ah

lastMoveTime DWORD 0
lastMoveTime2 DWORD 0
lastMoveTime3 DWORD 0

startTime dd 0
lives db 3
strLives dw ':',06bah,0627h,06cch,06afh,062fh,0646h,0632h,0020h,06cch,0642h,0627h,0628h,' ',' ',0
heartChar dw 2764h
lastCollisionTime dd 0
temp2 dd 0
consoleOutputHandle DWORD ?

levelNumber dd 1
namePrompt db "Name: "
levelPrompt db " - Score "
scorePrompt db "Level: "

welcome dw '!','>','.','.','.','.','.','.','.','.','.',062fh, 06cch, 062fh, 0645h, 0622h, 0020h, 0634h, 0648h, 062eh,'.','.','.','.','.','.','.','.','.','<','!',0
option1 dw '!',' ','>',' ',06bah, 06cch, 0644h, 06cch, 06beh, 06a9h, 0020h, 0645h, 06cch, 06afh,' ','<',' ','!',0
option2 dw '!',' ','>',' ',062ah, 0627h, 06cch, 0627h, 062fh, 06c1h,' ','<',' ','!',0
option3 dw '!',' ','>',' ',06bah, 06cch, 0631h, 06a9h, 0020h, 062fh, 0646h, 0628h,' ','<',' ','!',0
currentSelection db 1 


instructionsStr db "The objective of the game is to get PAC-MAN to eat all the dots",0ah
db "           in the maze without getting caught by the ghosts!",0ah,0ah
db"         Use WASD to move PAC-MAN around the maze to start collecting dots",0ah
db"            to earn points. Watch out for the ghosts – PAC-MAN loses",0ah
db"                  a turn everytime you get caught by one.",0ah,0

pausedStr db "!>..........Paused..........<!",0
.code
main PROC

    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov consoleOutputHandle, eax

    call hidecursor
    mov edx, offset box1
call box1Draw

mov eax,500
call delay

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title1
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title2
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title3
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title4
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title5
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title6
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax,500
call delay
mov edx, offset title7
call title1draw

mov eax,1000
call delay

mov dl,2
mov dh,10

mov edx, offset box2
call box2Draw

mov eax,1000
call delay

mov dl, 3
mov dh, 8
call gotoxy

mov edx, offset pacmanart
call pacmanartdraw

mov eax,1000
call delay

mov eax,500
call delay


mov dl, 50
mov dh, 12
call gotoxy

mov eax, white
call SetTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET nameEnter 
    mov ecx, LENGTHOF nameEnter
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

    mov eax, lightGreen
call SetTextColor
    call HideCursor
    mov dl,40
    mov dh,12
    call gotoxy
    call ShowCursor
        mov edx, offset nameStr
    mov ecx, 255
    call readstring

call clrscr
call TitleScreen
mov dl,40
mov dh,10
call gotoxy

mov eax, white
call settextcolor

mov eax, white
call SetTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET welcome
    mov ecx, LENGTHOF welcome
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov eax, lightGreen
call settextcolor
call hidecursor

menuLoop:
call MenuOptions
call ReadChar
mov inputChar,al
cmp inputChar, "w"
je wConditions
cmp inputChar, "s"
je sConditions
cmp inputChar, 13
je continueAfterMenu
jmp menuLoop

wConditions:
    cmp currentSelection,1
    je oneToThree
    cmp currentSelection, 3
    je threeToTwo
    cmp currentSelection,2
    je twoToOne
    jmp menuLoop

sConditions:
    cmp currentSelection,1
    je oneToTwo
    cmp currentSelection, 2
    je TwotoThree
    cmp currentSelection,3
    je threeToOne
    jmp menuLoop


    threeToTwo:
    mov currentSelection,2
    jmp menuLoop
    
    twoToOne:
    mov currentSelection,1
    jmp menuLoop
    
    oneToThree:
    mov currentSelection,3
    jmp menuLoop
    
    oneToTwo:
    mov currentSelection,2
    jmp menuLoop
    
    twoToThree:
    mov currentSelection,3
    jmp menuLoop
    
    threeToOne:
    mov currentSelection,1
    jmp menuLoop

continueAfterMenu:
cmp currentSelection,1
je gameStartSelected
cmp currentSelection,2
je InstructionsSelected
cmp currentSelection,3
je exitSelected


gameStartSelected:
call gameStartProc

exitSelected:
call GameOver

InstructionsSelected:
call Instructions
call clrscr
call TitleScreen
jmp menuLoop
    ;call Level1

ret
main ENDP

PauseScreen PROC

call clrscr
call TitleScreen
mov dl,40
mov dh,10
call gotoxy

mov eax, white
call settextcolor

mov edx, offset pausedStr
call writestring

mov eax, lightGreen
call settextcolor
call hidecursor

menuLoop:
call MenuOptions
call ReadChar
mov inputChar,al
cmp inputChar, "w"
je wConditions
cmp inputChar, "s"
je sConditions
cmp inputChar, 13
je continueAfterMenu
jmp menuLoop

wConditions:
    cmp currentSelection,1
    je oneToThree
    cmp currentSelection, 3
    je threeToTwo
    cmp currentSelection,2
    je twoToOne
    jmp menuLoop

sConditions:
    cmp currentSelection,1
    je oneToTwo
    cmp currentSelection, 2
    je TwotoThree
    cmp currentSelection,3
    je threeToOne
    jmp menuLoop


    threeToTwo:
    mov currentSelection,2
    jmp menuLoop
    
    twoToOne:
    mov currentSelection,1
    jmp menuLoop
    
    oneToThree:
    mov currentSelection,3
    jmp menuLoop
    
    oneToTwo:
    mov currentSelection,2
    jmp menuLoop
    
    twoToThree:
    mov currentSelection,3
    jmp menuLoop
    
    threeToOne:
    mov currentSelection,1
    jmp menuLoop

continueAfterMenu:
cmp currentSelection,1
je gameStartSelected
cmp currentSelection,2
je InstructionsSelected
cmp currentSelection,3
je exitSelected


gameStartSelected:
ret

exitSelected:
call GameOver

InstructionsSelected:
call Instructions
call clrscr
call TitleScreen
jmp menuLoop

ret
pauseScreen ENDP

Instructions PROC
 call clrscr

  
mov dl, 10
mov dh, 12
call gotoxy

mov edx, offset instructionsStr
call WriteString
loop1:
call ReadChar
mov inputChar,al
cmp al,27
jne loop1
ret
Instructions ENDP


gameStartPROC PROC
  call clrscr

mov eax, SND_FILENAME 
or eax, SND_LOOP      
or eax, SND_ASYNC    
invoke PlaySound, addr file, 0, eax


call HideCursor
mov eax,1000
call delay

    mov edx, OFFSET number3
    call DrawASCIIArt
    mov eax,1000
    call Delay
    call clrscr


    mov edx, OFFSET number2
  call DrawASCIIArt
    mov eax,1000
    call Delay
    call clrscr

    mov edx, OFFSET number1
  call DrawASCIIArt
    mov eax,1500
    call Delay

    call clrscr
    call Level1
    gameStartProc ENDP

MenuOptions PROC

mov eax, lightGreen
call SetTextColor
mov dl,50
mov dh,14
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option1
    mov ecx, LENGTHOF option1
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov dl,50
mov dh,15
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option2
    mov ecx, LENGTHOF option2
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov dl,50
mov dh,16
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option3
    mov ecx, LENGTHOF option3
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

cmp currentSelection,1
je highlight_1

cmp currentSelection,2
je highlight_2

cmp currentSelection,3
je highlight_3


highlight_1:
mov dl,50
mov dh,14
call gotoxy

mov eax, white
call setTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option1
    mov ecx, LENGTHOF option1
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov eax, lightGreen
call setTextColor

mov dl,50
mov dh,15
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option2
    mov ecx, LENGTHOF option2
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
mov dl,50
mov dh,16
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option3
    mov ecx, LENGTHOF option3
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0


ret

highlight_2:
mov dl,50
mov dh,14
call gotoxy

mov eax, lightGreen
call setTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option1
    mov ecx, LENGTHOF option1
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov eax, white
call setTextColor

mov dl,50
mov dh,15
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option2
    mov ecx, LENGTHOF option2
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

mov dl,50
mov dh,16
call gotoxy

mov eax, lightGreen
call setTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option3
    mov ecx, LENGTHOF option3
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0


ret

highlight_3:
mov dl,50
mov dh,14
call gotoxy

mov eax, lightGreen
call setTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option1
    mov ecx, LENGTHOF option1
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
mov dl,50
mov dh,15
call gotoxy

    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option2
    mov ecx, LENGTHOF option2
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
mov dl,50
mov dh,16
call gotoxy


mov eax, white
call setTextColor
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET option3
    mov ecx, LENGTHOF option3
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0

ret



ret
MenuOptions ENDP

TitleScreen PROC



    call clrscr

    mov edx, offset box1
call box1Draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title1
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title2
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title3
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title4
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title5
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov edx, offset title6
call title1draw

mov dl,0
mov dh,2
call gotoxy

mov eax, white
call settextcolor

mov edx, offset title7
call title1draw


mov dl,2
mov dh,10

mov edx, offset box2
call box2Draw


mov dl, 3
mov dh, 8
call gotoxy

mov edx, offset pacmanart
call pacmanartdraw
ret
TitleScreen ENDP


Level2 PROC
mov levelnumber,2
startin:
call GetMseconds
mov startTime, eax
    call drawmaze2
    call DrawPlayer

       call DrawEnemy
       call Randomize
       call DrawName
            mov eax,white (black * 16)
        call SetTextColor
        ; draw score:
call DrawScore

call DrawLives


 gameLoop:

       
        onGround:
         
        ; get user key input:
        call ReadKey
        jz handleEnemyMovement

        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"

        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar, 27
        je paused
        
      
        

moveUp:
    cmp yPos, 2
    je gameLoop
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 78
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall4
    cmp al, '+'
    je wall4
    cmp al, '-'
    je wall4
    cmp al, '|'
    je wall4
      cmp al, '='
    je wall4
    cmp al, ' '
    je notwall4
    cmp al, '.'
        je collectCoin1
                  cmp al, 'o'    
     je collectBonus1

    collectBonus1:
    call UpdatePlayer2
    dec yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin1:
    call UpdatePlayer2
    dec yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

notwall4:
    call UpdatePlayer2
    dec yPos
    call DrawPlayer
jmp gameLoop
wall4:
    jmp gameLoop




moveDown:
    cmp yPos, 23
    je gameLoop
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 78
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall3
    cmp al, '+'
    je wall3
    cmp al, '-'
    je wall3
    cmp al, '|'
    je wall3
      cmp al, '='
    je wall1
    cmp al, ' '
    je notwall3
    cmp al, '.'
     je collectCoin2
          cmp al, 'o'    
     je collectBonus2

    collectBonus2:
    call UpdatePlayer2
    inc yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin2:
    call UpdatePlayer2
    inc yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    
notwall3:

    call UpdatePlayer2
    inc yPos
    call DrawPlayer
jmp gameLoop
wall3:
    jmp gameLoop

moveLeft:
    cmp xPos,1
    je gameLoop
    mov playerChar,5604
      movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 1
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall1
    cmp al, '+'
    je wall1
    cmp al, '-'
    je wall1
    cmp al, '|'
    je wall1
    cmp al, '='
    je wall1
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je collectCoin3
              cmp al, 'o'    
     je collectBonus3

    collectBonus3:
    call UpdatePlayer2
    dec xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin3:
    call UpdatePlayer2
    dec xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    
notwall1:

    call UpdatePlayer2
    dec xPos
    call DrawPlayer
jmp gameLoop
wall1:
    jmp gameLoop

moveRight:
    cmp xPos, 78
    je gameLoop
   mov playerChar,15E7h
     movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 1
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall
    cmp al, '+'
    je wall
    cmp al, '-'
    je wall
    cmp al, '|'
    je wall
    cmp al, '='
    je wall
    cmp al, ' '
    je notwall
    cmp al, '.'
    je collectCoin4
              cmp al, 'o'    
     je collectBonus4

    collectBonus4:
    call UpdatePlayer2
    inc xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin4:
    call UpdatePlayer2
    inc xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

notwall:

    call UpdatePlayer2
    inc xPos
    call DrawPlayer
jmp gameLoop
wall:
    jmp gameLoop


handleEnemyMovement:
    call GetMseconds
    sub eax, lastMoveTime
    cmp eax, 150
    jl continueGameLoop

    call GetMseconds
    mov lastMoveTime, eax
    call updateEnemy2
    call drawEnemy

continueGameLoop:
    jmp gameLoop


    exitGame:
        
call gameOver
;invoke ExitProcess,0
ret

paused:
call PauseScreen
call clrscr
jmp startin
Level2 ENDP

Level1 PROC
startin:
call GetMseconds
mov startTime, eax
    call DrawMaze
    call DrawPlayer

       call DrawEnemy
       call Randomize
       call DrawName
            mov eax,white (black * 16)
        call SetTextColor
        ; draw score:
call DrawScore

call DrawLives


 gameLoop:

       
        onGround:
         
        ; get user key input:
        call ReadKey
        jz handleEnemyMovement

        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"

        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar, 27
        je paused
        
      
        

moveUp:
    cmp yPos, 2
    je gameLoop
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 78
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall4
    cmp al, '+'
    je wall4
    cmp al, '-'
    je wall4
    cmp al, '|'
    je wall4
      cmp al, '='
    je wall4
    cmp al, ' '
    je notwall4
    cmp al, '.'
        je collectCoin1
          cmp al, 'o'    
     je collectBonus1

    collectBonus1:
    call UpdatePlayer
    dec yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin1:
    call UpdatePlayer
    dec yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

notwall4:
    call UpdatePlayer
    dec yPos
    call DrawPlayer
jmp gameLoop
wall4:
    jmp gameLoop




moveDown:
    cmp yPos, 23
    je gameLoop
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 78
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall3
    cmp al, '+'
    je wall3
    cmp al, '-'
    je wall3
    cmp al, '|'
    je wall3
      cmp al, '='
    je wall1
    cmp al, ' '
    je notwall3
    cmp al, '.'
     je collectCoin2
               cmp al, 'o'    
     je collectBonus2

    collectBonus2:
    call UpdatePlayer
    inc yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin2:
    call UpdatePlayer
    inc yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    
notwall3:

    call UpdatePlayer
    inc yPos
    call DrawPlayer
jmp gameLoop
wall3:
    jmp gameLoop

moveLeft:
    cmp xPos,1
    je gameLoop
    mov playerChar,5604
      movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 1
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall1
    cmp al, '+'
    je wall1
    cmp al, '-'
    je wall1
    cmp al, '|'
    je wall1
    cmp al, '='
    je wall1
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je collectCoin3
              cmp al, 'o'    
     je collectBonus3

    collectBonus3:
    call UpdatePlayer
    dec xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin3:
    call UpdatePlayer
    dec xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    
notwall1:

    call UpdatePlayer
    dec xPos
    call DrawPlayer
jmp gameLoop
wall1:
    jmp gameLoop

moveRight:
    cmp xPos, 78
    je gameLoop
   mov playerChar,15E7h
     movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 1
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall
    cmp al, '+'
    je wall
    cmp al, '-'
    je wall
    cmp al, '|'
    je wall
    cmp al, '='
    je wall
    cmp al, ' '
    je notwall
    cmp al, '.'
    je collectCoin4
              cmp al, 'o'    
     je collectBonus4

    collectBonus4:
    call UpdatePlayer
    inc xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin4:
    call UpdatePlayer
    inc xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

notwall:

    call UpdatePlayer
    inc xPos
    call DrawPlayer
jmp gameLoop
wall:
    jmp gameLoop


handleEnemyMovement:
    call GetMseconds
    sub eax, lastMoveTime
    cmp eax, 150
    jl continueGameLoop

    call GetMseconds
    mov lastMoveTime, eax
    call updateEnemy
    call drawEnemy

continueGameLoop:
    jmp gameLoop


    exitGame:
        
call gameOver
;invoke ExitProcess,0
ret

paused:
call PauseScreen
call clrscr
jmp startin
Level1 ENDP

UpdateEnemy PROC


    mov eax, white 
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    movzx eax, yEnemyPos
    dec eax
    imul eax, 78 
    movzx ebx, xEnemyPos
    add eax, ebx
    mov edi, offset maze
    add edi, eax
    mov al, [edi] 


    mov al, yEnemyPos
    cmp al, yPos
    jne noCollision
    mov al, xEnemyPos
    cmp al, xPos
    jne noCollision


call Gotoxy
mov al, ' '
call writeChar
mov xPos,38
mov yPos,16
call updatePlayer
call DrawPlayer
dec lives
call DrawLives



noCollision:
mov al,[edi]
    cmp al, 'o'
    je writeO
    jne checkDash

   writeO:
    
    mov eax, yellow
    call SetTextColor

    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    
    mov al, 'o'
    call WriteChar
    jmp goOn

    checkDash:
        cmp al, '-'
    je WriteDash
    jne checkDot

WriteDash:
    
    mov eax, white
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    
    mov al, '-'
    call WriteChar
    jmp goOn

checkDot:    
    cmp al, '.'
    je WriteGreenDot
    jmp SkipWriteDot

WriteGreenDot:
    
    mov eax, green 
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy
    mov al, 249
    call WriteChar
jmp goOn

SkipWriteDot:
    mov al, " "
    call WriteChar

    goOn:
    mov eax, red +(magenta*16)
    call SetTextColor
    
    cmp enemyDirection, 0
    je moveEnemyUp
    cmp enemyDirection, 1
    je moveEnemyDown
    cmp enemyDirection, 2
    je moveEnemyRight
    cmp enemyDirection, 3
    je moveEnemyLeft
  

moveEnemyUp:
    cmp yEnemyPos, 2
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    sub eax, 78
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall4
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall4
    cmp al, '.'
    je notwall4
notwall4:
    dec yEnemyPos
  jmp endProc


moveEnemyRight:
    cmp xEnemyPos, 78
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    add eax, 1
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall
    cmp al, '.'
    je notwall
notwall:
    inc xEnemyPos
    jmp endProc


moveEnemyDown:
    cmp yEnemyPos, 23
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    add eax, 78
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall3
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall3
    cmp al, '.'
    je notwall3
notwall3:
    inc yEnemyPos
      jmp endProc


moveEnemyLeft:
    cmp xEnemyPos,1
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    sub eax, 1
    mov edi, offset maze
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall1
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je notwall1
notwall1:
    dec xEnemyPos
    jmp endProc

checkWallCollision:
    mov eax, 4
    call RandomRange
    mov enemyDirection, eax
    jmp getOut


endProc:

call GetMseconds
sub eax, startTime
cmp eax, 3000
jl getOut
call GetMseconds
mov startTime, eax
mov eax, 4
call RandomRange
mov enemyDirection,eax

getOut:
call drawEnemy
ret

UpdateEnemy ENDP


UpdateEnemy2 PROC


    mov eax, white 
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    movzx eax, yEnemyPos
    dec eax
    imul eax, 78 
    movzx ebx, xEnemyPos
    add eax, ebx
    mov edi, offset maze2
    add edi, eax
    mov al, [edi] 


    mov al, yEnemyPos
    cmp al, yPos
    jne noCollision
    mov al, xEnemyPos
    cmp al, xPos
    jne noCollision


call Gotoxy
mov al, ' '
call writeChar
mov xPos,37
mov yPos,19
call updatePlayer
call DrawPlayer
dec lives
call DrawLives



noCollision:
mov al,[edi]
    cmp al, 'o'
    je writeO
    jne checkDash

   writeO:
    
    mov eax, yellow
    call SetTextColor

    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    
    mov al, 'o'
    call WriteChar
    jmp goOn

    checkDash:
        cmp al, '-'
    je WriteDash
    jne checkDot

WriteDash:
    
    mov eax, white
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy

    
    mov al, '-'
    call WriteChar
    jmp goOn

checkDot:    
    cmp al, '.'
    je WriteGreenDot
    jmp SkipWriteDot

WriteGreenDot:
    
    mov eax, green 
    call SetTextColor

    
    mov dl, xEnemyPos
    mov dh, yEnemyPos
    call Gotoxy
    mov al, 249
    call WriteChar
jmp goOn

SkipWriteDot:
    mov al, " "
    call WriteChar

    goOn:
    mov eax, red +(magenta*16)
    call SetTextColor
    
    cmp enemyDirection, 0
    je moveEnemyUp
    cmp enemyDirection, 1
    je moveEnemyDown
    cmp enemyDirection, 2
    je moveEnemyRight
    cmp enemyDirection, 3
    je moveEnemyLeft
  

moveEnemyUp:
    cmp yEnemyPos, 2
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    sub eax, 78
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall4
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall4
    cmp al, '.'
    je notwall4
notwall4:
    dec yEnemyPos
  jmp endProc


moveEnemyRight:
    cmp xEnemyPos, 78
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    add eax, 1
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall
    cmp al, '.'
    je notwall
notwall:
    inc xEnemyPos
    jmp endProc


moveEnemyDown:
    cmp yEnemyPos, 23
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    add eax, 78
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall3
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall3
    cmp al, '.'
    je notwall3
notwall3:
    inc yEnemyPos
      jmp endProc


moveEnemyLeft:
    cmp xEnemyPos,1
    je checkWallCollision
    movzx eax, yEnemyPos
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos
    add eax, ebx
    sub eax, 1
    mov edi, offset maze2
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall1
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je notwall1
notwall1:
    dec xEnemyPos
    jmp endProc

checkWallCollision:
    mov eax, 4
    call RandomRange
    mov enemyDirection, eax
    jmp getOut


endProc:

call GetMseconds
sub eax, startTime
cmp eax, 3000
jl getOut
call GetMseconds
mov startTime, eax
mov eax, 4
call RandomRange
mov enemyDirection,eax

getOut:
call drawEnemy
ret

UpdateEnemy2 ENDP

DrawPlayer PROC
    
    mov eax,yellow 
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    invoke GetStdHandle,-11
    mov edx,OFFSET playerChar 
    mov ecx,1
    invoke WriteConsoleW,eax,edx,ecx,offset x,0 
    ret

DrawPlayer ENDP

updatePlayer PROC
    
    mov eax, white 
    call SetTextColor

    
    mov dl, xPos
    mov dh, yPos
    call Gotoxy

    
    movzx eax, yPos
    dec eax
    imul eax, 78 
    movzx ebx, xPos
    add eax, ebx
    mov edi, offset maze
    add edi, eax
    
    mov byte ptr [edi], ' '
    mov al, ' '
    call WriteChar

    ret
UpdatePlayer ENDP

updatePlayer2 PROC
    
    mov eax, white 
    call SetTextColor

    
    mov dl, xPos
    mov dh, yPos
    call Gotoxy

    
    movzx eax, yPos
    dec eax
    imul eax, 78 
    movzx ebx, xPos
    add eax, ebx
    mov edi, offset maze2
    add edi, eax
    
    mov byte ptr [edi], ' '
    mov al, ' '
    call WriteChar

    ret
UpdatePlayer2 ENDP
updatePlayer3 PROC
    
    mov eax, white 
    call SetTextColor

    mov dl, oldXPos
    mov dh, oldYPos
    call Gotoxy

    movzx eax, oldYPos
    dec eax
    imul eax, 78 
    movzx ebx, oldXPos
    add eax, ebx
    mov edi, offset maze3
    add edi, eax
    mov byte ptr [edi], ' '
    mov al, ' '
    call WriteChar

    mov dl, xPos
    mov dh, yPos
    call Gotoxy

    
    movzx eax, yPos
    dec eax
    imul eax, 78 
    movzx ebx, xPos
    add eax, ebx
    mov edi, offset maze3
    add edi, eax
    
    mov byte ptr [edi], ' '
    mov al, ' '
    call WriteChar


    ret
UpdatePlayer3 ENDP


DrawMaze PROC

    mov eax, yellow 
    call SetTextColor

   
    mov ecx, 1792
    mov esi, OFFSET maze 
    mov dl, 0
    mov dh, 1

    draw_loop:

        mov al, [esi]

        cmp al, 0
        jne not_newline

       
        inc dh
        mov dl, 0
        jmp continue_loop
        
        not_newline:
    cmp al, "="
  ;je equal_color
    cmp al, "*"
    je star_color
    cmp al, "."
    je dot_color
    cmp al, "-" 
    je dash_color


    mov ebx, yellow 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax
    jmp draw_char


    star_color:

    mov al, 219
    mov ebx, magenta +(magenta*16)
    push eax 
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dot_color:
    mov al,249
    mov ebx, green 
    push eax
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dash_color:
 
    mov ebx, white 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax 

    draw_char:
    call Gotoxy
    call WriteChar
    inc dl   
        continue_loop:
        inc esi
        loop draw_loop

    ret
DrawMaze ENDP

DrawMaze2 PROC

    mov eax, yellow 
    call SetTextColor

   
    mov ecx, 1792
    mov esi, OFFSET maze2
    mov dl, 0
    mov dh, 1

    draw_loop:

        mov al, [esi]

        cmp al, 0
        jne not_newline

       
        inc dh
        mov dl, 0
        jmp continue_loop
        
        not_newline:
    cmp al, "="
  ;je equal_color
    cmp al, "*"
    je star_color
    cmp al, "."
    je dot_color
    cmp al, "-" 
    je dash_color


    mov ebx, yellow 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax
    jmp draw_char


    star_color:

    mov al, 219
    mov ebx, magenta +(magenta*16)
    push eax 
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dot_color:
    mov al,249
    mov ebx, green 
    push eax
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dash_color:
 
    mov ebx, white 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax 

    draw_char:
    call Gotoxy
    call WriteChar
    inc dl   
        continue_loop:
        inc esi
        loop draw_loop

    ret
DrawMaze2 ENDP

DrawMaze3 PROC

    mov eax, yellow 
    call SetTextColor

   
    mov ecx, 1792
    mov esi, OFFSET maze3 
    mov dl, 0
    mov dh, 1

    draw_loop:

        mov al, [esi]

        cmp al, 0
        jne not_newline

       
        inc dh
        mov dl, 0
        jmp continue_loop
        
        not_newline:
    cmp al, "="
  ;je equal_color
    cmp al, "*"
    je star_color
    cmp al, "."
    je dot_color
    cmp al, "-" 
    je dash_color


    mov ebx, yellow 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax
    jmp draw_char


    star_color:

    mov al, 219
    mov ebx, magenta +(magenta*16)
    push eax 
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dot_color:
    mov al,249
    mov ebx, green 
    push eax
    mov eax, ebx
    call SetTextColor
    pop eax
    jmp draw_char

    dash_color:
 
    mov ebx, white 
    push eax
    mov eax, ebx 
    call SetTextColor
    pop eax 

    draw_char:
    call Gotoxy
    call WriteChar
    inc dl   
        continue_loop:
        inc esi
        loop draw_loop

    ret
DrawMaze3 ENDP

    DrawEnemy PROC
    
    mov eax,lightRed 
    call SetTextColor
    mov dl,xEnemyPos
    mov dh,yEnemyPos
    call Gotoxy
    invoke GetStdHandle,-11
    mov edx,OFFSET enemyChar 
    mov ecx,1
    invoke WriteConsoleW,eax,edx,ecx,offset x,0 
    ret
DrawEnemy ENDP

DrawScore PROC
    mov eax, white
    call SetTextColor
    mov dl, 0
    mov dh, 0
    call Gotoxy
    mov eax, score
    call WriteDec
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET strScore 
    mov ecx, LENGTHOF strScore 
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
    ret
DrawScore ENDP

DrawName PROC
    mov eax, white
    call SetTextColor
    mov dl, 30
    mov dh, 0
    call Gotoxy
    mov edx,offset nameStr
    call Writestring
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET aapkaNaam 
    mov ecx, LENGTHOF aapkaNaam 
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
    ret
DrawName ENDP

DrawLives PROC
cmp lives,0
je quitgame
    mov eax, white
    call SetTextColor
    mov dl, 59
    mov dh, 0
    call Gotoxy


    mov ecx, 3
ClearOldHearts:
    push ecx
    mov eax, ' '
    call WriteChar
    pop ecx
    loop ClearOldHearts

    mov dl, 59
    mov dh, 0
    call Gotoxy


    movzx ecx, lives
    mov heartChar, 2764h
DisplayHearts:
    push ecx
    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET heartChar 
    mov ecx, 1 
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
    mov edx, offset space
    call writestring
    pop ecx
    loop DisplayHearts


    invoke GetStdHandle, -11
    mov ebx, eax 
    mov edx, OFFSET strLives 
    mov ecx, LENGTHOF strLives 
    invoke WriteConsoleW, ebx, edx, ecx, OFFSET writtenChars, 0
    ret
    quitgame:
    call gameover
DrawLives ENDP


HideCursor PROC
    LOCAL cursorInfo:CONSOLE_CURSOR_INFO
    invoke GetConsoleCursorInfo, consoleOutputHandle, ADDR cursorInfo
    mov cursorInfo.dwSize, 1
    mov cursorInfo.bVisible, FALSE
    invoke SetConsoleCursorInfo, consoleOutputHandle, ADDR cursorInfo
    ret
HideCursor ENDP

ShowCursor PROC
    LOCAL cursorInfo:CONSOLE_CURSOR_INFO
    invoke GetConsoleCursorInfo, consoleOutputHandle, ADDR cursorInfo
    mov cursorInfo.dwSize, 25 ; adjust cursor size
    mov cursorInfo.bVisible, TRUE
    invoke SetConsoleCursorInfo, consoleOutputHandle, ADDR cursorInfo
    ret
ShowCursor ENDP



gameOver PROC


    call clrscr



    mov edx, offset gameOverStr
    call DrawASCIIArt


    mov edx,offset nameStr
    call writeString

    call crlf
    call crlf
    mov eax, score
    call writedec
    
    call crlf
    call crlf
    mov eax, levelNumber
    call writedec


    mov eax, score     
    mov  edi,offset scoreStr
    call IntegerToString

    mov eax, levelNumber
    mov  edi,offset levelNumberStr
    call IntegerToString

mov edx,OFFSET filename
call OpenInputFile
mov fileHandle,eax


mov edx,OFFSET buffer
mov ecx,BUFFER_SIZE
call ReadFromFile
mov bytesRead, eax

mov eax, fileHandle
call closeFile

    mov edx, OFFSET filename
    call CreateOutputFile
    mov fileHandle, eax
       

    mov eax,bytesRead

    mov stringLength, eax
    mov eax, fileHandle
    mov edx, OFFSET buffer
    mov ecx, stringLength
    call WriteToFile


                        mov stringLength, lengthof newLine
        mov eax,fileHandle
        mov edx,OFFSET newLine
        mov ecx,stringLength
        call WriteToFile


        mov stringLength, lengthof namePrompt
    
        mov eax,fileHandle
        mov edx,OFFSET namePrompt
        mov ecx,stringLength
        call WriteToFile

    mov stringLength, lengthof nameStr
    
        mov eax,fileHandle
        mov edx,OFFSET nameStr
        mov ecx,stringLength
        call WriteToFile

        mov stringLength, lengthof levelPrompt
        mov eax,fileHandle
        mov edx,OFFSET levelPrompt
        mov ecx,stringLength
        call WriteToFile

       mov stringLength, lengthof levelNumberStr
        mov eax,fileHandle
        mov edx,OFFSET levelNumberStr
        mov ecx,stringLength
        call WriteToFile

        mov stringLength, lengthof scorePrompt
        mov eax,fileHandle
        mov edx,OFFSET scorePrompt
        mov ecx,stringLength
        call WriteToFile

    mov stringLength,lengthof scoreStr
    mov eax,fileHandle
    mov edx,OFFSET scoreStr
    mov ecx,stringLength
    call WriteToFile



    mov eax, fileHandle
    call CloseFile


    invoke ExitProcess,0
gameOver ENDP

IntegerToString PROC
    mov ecx, 10           
    mov ebx, 0            
    mov esi, edi          

convert_loop:
    xor edx, edx          
    div ecx               
    add dl, '0'           
    dec edi               
    mov [edi], dl         
    inc ebx               
    test eax, eax         
    jnz convert_loop      

reverse_loop:
    mov ecx, ebx          
    mov edi, esi          
    add edi, ebx          
    dec edi               

reverse_start:
    dec ecx               
    jz reverse_done       
    mov al, [esi]         
    mov dl, [edi]         
    mov [esi], dl         
    mov [edi], al         
    inc esi               
    dec edi               
    jmp reverse_start     

reverse_done:
    mov byte ptr [esi], 0 
    ret
IntegerToString ENDP



DrawASCIIArt PROC
    pushad                  
    mov ecx, 0              
    mov esi, edx            

print_next_char:
    mov al, [esi + ecx]     
    cmp al, 0               
    je print_done           

    cmp al, 0Ah             
    jne not_newline
    call Crlf               
    jmp short char_done     

not_newline:
    cmp al, ' '             
    je print_space          
push eax    
mov eax, lightRed
    call SetTextColor       
    pop eax                 
    call WriteChar          
    jmp short char_done

print_space:
push eax
    mov eax, white          
    call SetTextColor       
    pop eax                 
    call WriteChar          

char_done:
    inc ecx                 
    jmp print_next_char     

print_done:
    popad                   
    ret
DrawASCIIArt ENDP

title1draw PROC
    pushad                  
    mov ecx, 0              
    mov esi, edx            

call gotoxy
print_next_char:
    mov al, [esi + ecx]     
    cmp al, 0               
    je print_done           

    cmp al, 0Ah             
    jne not_newline
    call Crlf               
    jmp short char_done     

not_newline:
    cmp al, ' '             
    je print_space          
cmp al,'*'
je print_star
cmp al, '@'
je print_at
cmp al,'#'
je print_hash
push eax    
mov eax, lightRed
    call SetTextColor       
    pop eax                 
    call WriteChar          
    jmp short char_done

print_star:
push eax
mov eax, cyan
call setTextcolor
mov al, 219
call writechar
pop eax
jmp short char_done

print_hash:
push eax
mov eax, white
call setTextcolor
mov al, 219
call writechar
pop eax
jmp short char_done

print_at:
push eax
mov eax, green
call setTextcolor
mov al, 219
call writechar
pop eax
jmp short char_done


print_space:
push eax
    mov eax, white          
    call SetTextColor       
    pop eax                 
    call WriteChar          

char_done:
    inc ecx                 
    jmp print_next_char     

print_done:
    popad                   
    ret
title1draw ENDP

box1Draw PROC
    pushad                  
    mov ecx, 0              
    mov esi, edx            

print_next_char:
    mov al, [esi + ecx]     
    cmp al, 0               
    je print_done           

    cmp al, 0Ah             
    jne not_newline
    call Crlf               
    jmp short char_done     

not_newline:
    cmp al, ' '             
    je print_space          
push eax    
mov eax, cyan
    call SetTextColor       
    pop eax                 
   mov al,219
call WriteChar          
    jmp short char_done

print_space:
push eax
    mov eax, white          
    call SetTextColor       
    pop eax                 
    call WriteChar          

char_done:
    inc ecx                 
    jmp print_next_char     

print_done:
    popad                   
    ret
box1Draw ENDP

box2Draw PROC
    pushad                  
    mov ecx, 0              
    mov esi, edx            

print_next_char:
    mov al, [esi + ecx]     
    cmp al, 0               
    je print_done           

    cmp al, 0Ah             
    jne not_newline
    call Crlf               
    jmp short char_done     

not_newline:
    cmp al, ' '             
    je print_space          
cmp al, '|'
je print_line
push eax    
mov eax, lightBlue
    call SetTextColor       
    pop eax                 
   mov al,219
call WriteChar          
    jmp short char_done

    print_line:
push eax
    mov eax, cyan        
    call SetTextColor       
    mov al,219         
    call WriteChar 
    pop eax
    jmp short char_done
print_space:
push eax
    mov eax, white          
    call SetTextColor       
    pop eax                 
    call WriteChar          

char_done:
    inc ecx                 
    jmp print_next_char     

print_done:
    popad                   
    ret
box2Draw ENDP

pacmanartdraw PROC
    pushad                  
    mov ecx, 0              
    mov esi, edx            

call gotoxy
print_next_char:
    mov al, [esi + ecx]     
    cmp al, 0               
    je print_done           

    cmp al, 0Ah             
    jne not_newline
    call Crlf               
    jmp char_done     

not_newline:
    cmp al, ' '             
    je print_space          
cmp al,'+'
je print_plus
cmp al,'='
je print_equal
cmp al, '@'
je print_at
cmp al, '('
je print_bracket
cmp al,'|'
je print_line
cmp al,'#'
je print_hash
cmp al,'%'
je print_percentage
cmp al, '*'
je print_star
cmp al,'O'
JE PRINT_O
push eax    
mov eax, lightRed
    call SetTextColor       
    pop eax                 
    call WriteChar          
    jmp char_done

    PRINT_O:
    push eax
mov eax, YELLOW
call setTextcolor
mov al, 'O'
call writechar
pop eax
jmp char_done
            print_line:
push eax
mov eax, cyan
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

    print_bracket:
push eax
mov eax, lightBlue
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

print_plus:
push eax
mov eax, white
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

print_equal:
push eax
mov eax, green
call setTextcolor
mov al,219
call writechar
pop eax
jmp char_done

print_at:
push eax
mov eax, black
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

print_star:
push eax
mov eax, yellow
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

print_percentage:
push eax
mov eax, yellow
call setTextcolor
mov al, 219
call writechar
pop eax
jmp char_done

print_hash:
push eax
mov eax, yellow
call setTextcolor
mov al, 219
call writechar
pop eax
jmp short char_done
print_space:
push eax
    mov eax, white          
    call SetTextColor       
    pop eax                 
    call WriteChar          

char_done:
    inc ecx                 
    jmp print_next_char     

print_done:
    popad                   
    ret
pacmanartdraw ENDP

UpdateEnemy3a PROC


    mov eax, white 
    call SetTextColor

    
    mov dl, xEnemyPos3a
    mov dh, yEnemyPos3a
    call Gotoxy

    movzx eax, yEnemyPos3a
    dec eax
    imul eax, 78 
    movzx ebx, xEnemyPos3a
    add eax, ebx
    mov edi, offset maze3
    add edi, eax
    mov al, [edi] 


    mov al, yEnemyPos3a
    cmp al, yPos
    jne noCollision
    mov al, xEnemyPos3a
    cmp al, xPos
    jne noCollision


call Gotoxy
mov al, ' '
call writeChar
mov xPos,37
mov yPos,19
call updatePlayer
call DrawPlayer
dec lives
call DrawLives



noCollision:
mov al,[edi]
    cmp al, 'o'
    je writeO
    jne checkDash

   writeO:
    
    mov eax, yellow
    call SetTextColor

    mov dl, xEnemyPos3a
    mov dh, yEnemyPos3a
    call Gotoxy

    
    mov al, 'o'
    call WriteChar
    jmp goOn

    checkDash:
        cmp al, '-'
    je WriteDash
    jne checkDot

WriteDash:
    
    mov eax, white
    call SetTextColor

    
    mov dl, xEnemyPos3a
    mov dh, yEnemyPos3a
    call Gotoxy

    
    mov al, '-'
    call WriteChar
    jmp goOn

checkDot:    
    cmp al, '.'
    je WriteGreenDot
    jmp SkipWriteDot

WriteGreenDot:
    
    mov eax, green 
    call SetTextColor

    
    mov dl, xEnemyPos3a
    mov dh, yEnemyPos3a
    call Gotoxy
    mov al, 249
    call WriteChar
jmp goOn

SkipWriteDot:
    mov al, " "
    call WriteChar

    goOn:
    mov eax, red +(magenta*16)
    call SetTextColor
    
    cmp enemyDirection, 0
    je moveEnemyUp
    cmp enemyDirection, 1
    je moveEnemyDown
    cmp enemyDirection, 2
    je moveEnemyRight
    cmp enemyDirection, 3
    je moveEnemyLeft
  

moveEnemyUp:
    cmp yEnemyPos3a, 2
    je checkWallCollision
    movzx eax, yEnemyPos3a
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3a
    add eax, ebx
    sub eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall4
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall4
    cmp al, '.'
    je notwall4
notwall4:
    dec yEnemyPos3a
  jmp endProc


moveEnemyRight:
    cmp xEnemyPos3a, 78
    je checkWallCollision
    movzx eax, yEnemyPos3a
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3a
    add eax, ebx
    add eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall
    cmp al, '.'
    je notwall
notwall:
    inc xEnemyPos3a
    jmp endProc


moveEnemyDown:
    cmp yEnemyPos3a, 23
    je checkWallCollision
    movzx eax, yEnemyPos3a
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3a
    add eax, ebx
    add eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall3
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall3
    cmp al, '.'
    je notwall3
notwall3:
    inc yEnemyPos3a
      jmp endProc


moveEnemyLeft:
    cmp xEnemyPos3a,1
    je checkWallCollision
    movzx eax, yEnemyPos3a
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3a
    add eax, ebx
    sub eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall1
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je notwall1
notwall1:
    dec xEnemyPos3a
    jmp endProc

checkWallCollision:
    mov eax, 4
    call RandomRange
    mov enemyDirection, eax
    jmp getOut


endProc:

call GetMseconds
sub eax, startTime
cmp eax, 3000
jl getOut
call GetMseconds
mov startTime, eax
mov eax, 4
call RandomRange
mov enemyDirection,eax

getOut:
call drawEnemy1
ret

UpdateEnemy3a ENDP

UpdateEnemy3b PROC


    mov eax, white 
    call SetTextColor

    
    mov dl, xEnemyPos3b
    mov dh, yEnemyPos3b
    call Gotoxy

    movzx eax, yEnemyPos3b
    dec eax
    imul eax, 78 
    movzx ebx, xEnemyPos3b
    add eax, ebx
    mov edi, offset maze3
    add edi, eax
    mov al, [edi] 


    mov al, yEnemyPos3b
    cmp al, yPos
    jne noCollision
    mov al, xEnemyPos3b
    cmp al, xPos
    jne noCollision


call Gotoxy
mov al, ' '
call writeChar
mov xPos,38
mov yPos,16
call updatePlayer
call DrawPlayer
dec lives
call DrawLives



noCollision:
mov al,[edi]
    cmp al, 'o'
    je writeO
    jne checkDash

   writeO:
    
    mov eax, yellow
    call SetTextColor

    mov dl, xEnemyPos3b
    mov dh, yEnemyPos3b
    call Gotoxy

    
    mov al, 'o'
    call WriteChar
    jmp goOn

    checkDash:
        cmp al, '-'
    je WriteDash
    jne checkDot

WriteDash:
    
    mov eax, white
    call SetTextColor

    
    mov dl, xEnemyPos3b
    mov dh, yEnemyPos3b
    call Gotoxy

    
    mov al, '-'
    call WriteChar
    jmp goOn

checkDot:    
    cmp al, '.'
    je WriteGreenDot
    jmp SkipWriteDot

WriteGreenDot:
    
    mov eax, green 
    call SetTextColor

    
    mov dl, xEnemyPos3b
    mov dh, yEnemyPos3b
    call Gotoxy
    mov al, 249
    call WriteChar
jmp goOn

SkipWriteDot:
    mov al, " "
    call WriteChar

    goOn:
    mov eax, red +(magenta*16)
    call SetTextColor
    
    cmp enemyDirection, 0
    je moveEnemyUp
    cmp enemyDirection, 1
    je moveEnemyDown
    cmp enemyDirection, 2
    je moveEnemyRight
    cmp enemyDirection, 3
    je moveEnemyLeft
  

moveEnemyUp:
    cmp yEnemyPos3b, 2
    je checkWallCollision
    movzx eax, yEnemyPos3b
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3b
    add eax, ebx
    sub eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall4
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall4
    cmp al, '.'
    je notwall4
notwall4:
    dec yEnemyPos3b
  jmp endProc


moveEnemyRight:
    cmp xEnemyPos3b, 78
    je checkWallCollision
    movzx eax, yEnemyPos3b
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3b
    add eax, ebx
    add eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall
    cmp al, '.'
    je notwall
notwall:
    inc xEnemyPos3b
    jmp endProc


moveEnemyDown:
    cmp yEnemyPos3b, 23
    je checkWallCollision
    movzx eax, yEnemyPos3b
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3b
    add eax, ebx
    add eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall3
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall3
    cmp al, '.'
    je notwall3
notwall3:
    inc yEnemyPos3b
      jmp endProc


moveEnemyLeft:
    cmp xEnemyPos3b,1
    je checkWallCollision
    movzx eax, yEnemyPos3b
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3b
    add eax, ebx
    sub eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall1
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je notwall1
notwall1:
    dec xEnemyPos3b
    jmp endProc

checkWallCollision:
    mov eax, 4
    call RandomRange
    mov enemyDirection, eax
    jmp getOut


endProc:

call GetMseconds
sub eax, startTime
cmp eax, 3000
jl getOut
call GetMseconds
mov startTime, eax
mov eax, 4
call RandomRange
mov enemyDirection,eax

getOut:
call drawEnemy2
ret

UpdateEnemy3b ENDP

UpdateEnemy3c PROC


    mov eax, white 
    call SetTextColor

    
    mov dl, xEnemyPos3c
    mov dh, yEnemyPos3c
    call Gotoxy

    movzx eax, yEnemyPos3c
    dec eax
    imul eax, 78 
    movzx ebx, xEnemyPos3c
    add eax, ebx
    mov edi, offset maze3
    add edi, eax
    mov al, [edi] 


    mov al, yEnemyPos3c
    cmp al, yPos
    jne noCollision
    mov al, xEnemyPos3c
    cmp al, xPos
    jne noCollision


call Gotoxy
mov al, ' '
call writeChar
mov xPos,38
mov yPos,16
call updatePlayer
call DrawPlayer
dec lives
call DrawLives



noCollision:
mov al,[edi]
    cmp al, 'o'
    je writeO
    jne checkDash

   writeO:
    
    mov eax, yellow
    call SetTextColor

    mov dl, xEnemyPos3c
    mov dh, yEnemyPos3c
    call Gotoxy

    
    mov al, 'o'
    call WriteChar
    jmp goOn

    checkDash:
        cmp al, '-'
    je WriteDash
    jne checkDot

WriteDash:
    
    mov eax, white
    call SetTextColor

    
    mov dl, xEnemyPos3c
    mov dh, yEnemyPos3c
    call Gotoxy

    
    mov al, '-'
    call WriteChar
    jmp goOn

checkDot:    
    cmp al, '.'
    je WriteGreenDot
    jmp SkipWriteDot

WriteGreenDot:
    
    mov eax, green 
    call SetTextColor

    
    mov dl, xEnemyPos3c
    mov dh, yEnemyPos3c
    call Gotoxy
    mov al, 249
    call WriteChar
jmp goOn

SkipWriteDot:
    mov al, " "
    call WriteChar

    goOn:
    mov eax, red +(magenta*16)
    call SetTextColor
    
    cmp enemyDirection, 0
    je moveEnemyUp
    cmp enemyDirection, 1
    je moveEnemyDown
    cmp enemyDirection, 2
    je moveEnemyRight
    cmp enemyDirection, 3
    je moveEnemyLeft
  

moveEnemyUp:
    cmp yEnemyPos3c, 2
    je checkWallCollision
    movzx eax, yEnemyPos3c
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3c
    add eax, ebx
    sub eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall4
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall4
    cmp al, '.'
    je notwall4
notwall4:
    dec yEnemyPos3c
  jmp endProc


moveEnemyRight:
    cmp xEnemyPos3c, 78
    je checkWallCollision
    movzx eax, yEnemyPos3c
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3c
    add eax, ebx
    add eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall
    cmp al, '.'
    je notwall
notwall:
    inc xEnemyPos3c
    jmp endProc


moveEnemyDown:
    cmp yEnemyPos3c, 23
    je checkWallCollision
    movzx eax, yEnemyPos3c
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3c
    add eax, ebx
    add eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall3
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall3
    cmp al, '.'
    je notwall3
notwall3:
    inc yEnemyPos3c
      jmp endProc


moveEnemyLeft:
    cmp xEnemyPos3c,1
    je checkWallCollision
    movzx eax, yEnemyPos3c
    dec eax
    imul eax, 78
    movzx ebx,xEnemyPos3c
    add eax, ebx
    sub eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je checkWallCollision
    cmp al, '+'
    je checkWallCollision
    cmp al, '-'
    je notwall1
    cmp al, '|'
    je checkWallCollision
    cmp al, '='
    je checkWallCollision
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je notwall1
notwall1:
    dec xEnemyPos3c
    jmp endProc

checkWallCollision:
    mov eax, 4
    call RandomRange
    mov enemyDirection, eax
    jmp getOut


endProc:

call GetMseconds
sub eax, startTime
cmp eax, 3000
jl getOut
call GetMseconds
mov startTime, eax
mov eax, 4
call RandomRange
mov enemyDirection,eax

getOut:
call drawEnemy3
ret

UpdateEnemy3c ENDP






    DrawEnemy1 PROC
    
    mov eax,lightcyan
    call SetTextColor
    mov dl,xEnemyPos3a
    mov dh,yEnemyPos3a
    call Gotoxy
    invoke GetStdHandle,-11
    mov edx,OFFSET enemyChar 
    mov ecx,1
    invoke WriteConsoleW,eax,edx,ecx,offset x,0 
    ret
    DrawEnemy1 ENDP

    DrawEnemy2 PROC
    
    mov eax,lightRed
    call SetTextColor
    mov dl,xEnemyPos3b
    mov dh,yEnemyPos3b
    call Gotoxy
    invoke GetStdHandle,-11
    mov edx,OFFSET enemyChar 
    mov ecx,1
    invoke WriteConsoleW,eax,edx,ecx,offset x,0 
    ret
    DrawEnemy2 ENDP

     DrawEnemy3 PROC
    mov eax,lightgray
    call SetTextColor
    mov dl,xEnemyPos3c
    mov dh,yEnemyPos3c
    call Gotoxy
    invoke GetStdHandle,-11
    mov edx,OFFSET enemyChar 
    mov ecx,1
    invoke WriteConsoleW,eax,edx,ecx,offset x,0 
    ret
    DrawEnemy3 ENDP


    Level3 PROC
mov levelNumber, 3
startin:
call GetMseconds
mov startTime, eax
    call Drawmaze3
    call DrawPlayer

       call DrawEnemy1
       call DrawEnemy2
       call DrawEnemy3

       call updateEnemy3a
       call updateEnemy3b
       call updateEnemy3c
       call Randomize
       call DrawName
            mov eax,white (black * 16)
        call SetTextColor
        ; draw score:
call DrawScore

call DrawLives


 gameLoop:

       onGround:
         
        ; get user key input:
        call ReadKey
        jz handleEnemyMovement

        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"

        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar, 27
        je paused
        
      
        

moveUp:
    cmp yPos, 2
    je teleportToDown
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall4
    cmp al, '+'
    je wall4
    cmp al, '-'
    je wall4
    cmp al, '|'
    je wall4
      cmp al, '='
    je wall4
    cmp al, ' '
    je notwall4
    cmp al, '.'
        je collectCoin1
             cmp al, 'o'    
     je collectBonus1

    collectBonus1:
    call UpdatePlayer2
    dec yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop
    collectCoin1:
    call UpdatePlayer3
    dec yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

            teleportToDown:
    mov al, xPos
    mov oldXPos,al
    mov al, yPos
    mov oldYPos,al
        mov yPos, 23
        call UpdatePlayer3
        call drawPlayer
        jmp gameLoop


notwall4:
    call UpdatePlayer3
    dec yPos
    call DrawPlayer
jmp gameLoop
wall4:
    jmp gameLoop




moveDown:
    cmp yPos, 23
    je teleportToTop
    mov playerChar, 15E3h
    movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 78
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall3
    cmp al, '+'
    je wall3
    cmp al, '-'
    je wall3
    cmp al, '|'
    je wall3
      cmp al, '='
    je wall1
    cmp al, ' '
    je notwall3
    cmp al, '.'
     je collectCoin2
     cmp al, 'o'    
     je collectBonus2

    collectBonus2:
    call UpdatePlayer2
    inc yPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin2:
    call UpdatePlayer3
    inc yPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    teleportToTop:
    mov al, xPos
    mov oldXPos,al
    mov al, yPos
    mov oldYPos,al
        mov yPos, 1
        call UpdatePlayer3
        call drawPlayer
        jmp gameLoop

notwall3:

    call UpdatePlayer3
    inc yPos
    call DrawPlayer
jmp gameLoop
wall3:
    jmp gameLoop

moveLeft:
    cmp xPos,1
    je teleportToRight
    mov playerChar,5604
      movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    sub eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall1
    cmp al, '+'
    je wall1
    cmp al, '-'
    je wall1
    cmp al, '|'
    je wall1
    cmp al, '='
    je wall1
    cmp al, ' '
    je notwall1
    cmp al, '.'
    je collectCoin3
        cmp al, 'o'
    je collectBonus3

    collectBonus3:
    call UpdatePlayer3
    dec xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin3:
    call UpdatePlayer3
    dec xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

    teleportToRight:
   
    mov al, xPos
    mov oldXPos,al
    mov al, yPos
    mov oldYPos,al
        mov xPos, 76
        call UpdatePlayer3
        call drawPlayer
        jmp gameLoop

notwall1:

    call UpdatePlayer3
    dec xPos
    call DrawPlayer
jmp gameLoop
wall1:
    jmp gameLoop

moveRight:
    cmp xPos, 76
    je teleportToLeft
   mov playerChar,15E7h
     movzx eax, yPos
    dec eax
    imul eax, 78
    movzx ebx,xPos
    add eax, ebx
    add eax, 1
    mov edi, offset maze3
    add edi, eax
    mov al, [edi]
    cmp al, '*'
    je wall
    cmp al, '+'
    je wall
    cmp al, '-'
    je wall
    cmp al, '|'
    je wall
    cmp al, '='
    je wall
    cmp al, ' '
    je notwall
    cmp al, '.'
    je collectCoin4
    cmp al, 'o'
    je collectBonus4

    collectBonus4:
    call UpdatePlayer3
    inc xPos
    call DrawPlayer
    add score,10
    call DrawScore
    jmp gameLoop

    collectCoin4:
    call UpdatePlayer3
    inc xPos
    call DrawPlayer
    inc score
    call DrawScore
    jmp gameLoop

        teleportToLeft:
    mov al, xPos
    mov oldXPos,al
    mov al, yPos
    mov oldYPos,al
        mov xPos, 1
        call UpdatePlayer3
        call drawPlayer
        jmp gameLoop

notwall:

    call UpdatePlayer3
    inc xPos
    call DrawPlayer
jmp gameLoop
wall:
    jmp gameLoop


handleEnemyMovement:
    call GetMseconds
    sub eax, lastMoveTime
    cmp eax, 150
    jl continueGameLoop

    call GetMseconds
    mov lastMoveTime, eax
           call updateEnemy3a
       call updateEnemy3b
       call updateEnemy3c

       call DrawEnemy1
       call DrawEnemy2
       call DrawEnemy3


continueGameLoop:
    jmp gameLoop


    exitGame:
        
call gameOver
;invoke ExitProcess,0
ret

paused:
call PauseScreen
call clrscr
jmp startin
Level3 ENDP

END main