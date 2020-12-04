# initialize/import pygame
import pygame, sys
sys.path.insert(0, '..')
from entity.entity import Entity
from pong.ball import Ball

def reset_all_values():
    global scoreA
    global scoreB
    global endA
    global endB

    scoreA = 0
    scoreB = 0
    A = 0
    B = 0

pygame.init()

# setting colors for game
black = (0, 0, 0)
white = (255, 255, 255)

# dimensions for screen size
SCREEN_WIDTH = 700
SCREEN_HEIGHT = 500
size = (SCREEN_WIDTH, SCREEN_HEIGHT)
screen = pygame.display.set_mode(size)
pygame.display.set_caption("Pong")

# initializing two paddles and ball
# player1 = Entity(5, 5, 5, 0, 'left_paddle.jpg', 100, 20)
player1 = Entity(5, 5, 5, 0, "pong/left_paddle.jpg", 100, 20) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
player1.rect.x = 0                                            # Line 34 intended for Main Menu functionality
player1.rect.y = 200

# player2 = Entity(5, 5, 5, 0, 'right_paddle.jpg', 100, 20)
player2 = Entity(5, 5, 5, 0, "pong/right_paddle.jpg", 100, 20) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
player2.rect.x = 680                                           # Line 39 intended for Main Menu functionality
player2.rect.y = 200

ball = Ball(white, 10, 10)
ball.rect.x = 345
ball.rect.y = 195

# list of all sprites in our Game
all_sprites = pygame.sprite.Group()

all_sprites.add(player1)
all_sprites.add(player2)

# controls how fast game updates
clock = pygame.time.Clock()

font = pygame.font.Font(None, 50)

def pong_main():

    playing = True
    state = 'INTRO'

    scoreA = 0
    scoreB = 0
    A = 0
    B = 0

    winner = ""

    # Main Program Loop
    while playing:
        # Main Event Loop
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                playing = False
                display_game_over_screen(winner)
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_q:  # pressing q key quits the game
                    playing = False
                    display_game_over_screen(winner)
                elif event.key == pygame.K_ESCAPE:  # pressing esc key quits the game
                    playing = False
                    display_game_over_screen(winner)

                if state == 'INTRO':
                    if event.key == pygame.K_SPACE:
                        state = 'GAME'
                        all_sprites.add(ball)
                        reset_all_values()
                elif state == 'GAME':
                    if event.key == pygame.K_ESCAPE:
                        state = 'GAMEOVER'
                elif state == 'GAMEOVER':
                    if event.key == pygame.K_ESCAPE:
                        state = 'QUIT'


        # inputs from keystrokes
        p1speed = player1.ms * 1.5
        p2speed = player2.ms * 1.5
        keys = pygame.key.get_pressed()
        if keys[pygame.K_w]:
            player1.moveUp(p1speed)
        if keys[pygame.K_s]:
            player1.moveDown(p1speed, SCREEN_HEIGHT)
        if keys[pygame.K_UP]:
            player2.moveUp(p2speed)
        if keys[pygame.K_DOWN]:
            player2.moveDown(p2speed, SCREEN_WIDTH)

        # Game Logic comes here
        all_sprites.update()

        # collision detection
        if pygame.sprite.collide_mask(ball, player1) or pygame.sprite.collide_mask(ball, player2):
            ball.bounce()

        if state == 'INTRO':
            pass
        elif state == 'GAME':
            # what side ball starts going towards first

            # checks for ball bouncing against walls
            if ball.rect.x >= 690:
                scoreA += 1
                ball.velocity[0] = -ball.velocity[0]
            if ball.rect.x <= 0:
                scoreB += 1
                ball.velocity[0] = -ball.velocity[0]
            if ball.rect.y > 490:
                ball.velocity[1] = -ball.velocity[1]
            if ball.rect.y < 0:
                ball.velocity[1] = -ball.velocity[1]

            if scoreA == player2.hp:
                A = 1
                state = 'GAMEOVER'
            if scoreB == player1.hp:
                B = 1
                state = 'GAMEOVER'
        elif state == 'GAMEOVER':
            pass
        elif state == 'QUIT':
            playing = False
            display_game_over_screen(winner)

        # fills the screen
        screen.fill(black)

        # drawing of the net
        pygame.draw.line(screen, white, [349, 0], [349, 500], 5)

        # draws all sprites on the screen
        all_sprites.draw(screen)

        # displays scores:
        font = pygame.font.Font(None, 74)
        text = font.render(str(scoreA), 1, white)
        screen.blit(text, (250, 10))
        text = font.render(str(scoreB), 1, white)
        screen.blit(text, (420, 10))

        if state == 'INTRO':
            text = font.render('Press SPACE to Play!', True, (255,255,255))
            rect = text.get_rect(center=screen.get_rect().center)
            screen.blit(text, rect)
        elif state == 'GAMEOVER':
            ball.velocity[0] = 0
            ball.velocity[1] = 0
            if A == 1:
                winner = "Player 1 Wins!"
                text = font.render('Player 1 Wins!', True, (255,255,255))
                rect = text.get_rect(center=screen.get_rect().center)
                screen.blit(text, rect)
            elif B == 1:
                winner = "Player 2 Wins!"
                text = font.render('Player 2 Wins!', True, (255,255,255))
                rect = text.get_rect(center=screen.get_rect().center)
                screen.blit(text, rect)

        # updates screen
        pygame.display.flip()

        # game update speed
        clock.tick(60)

    pygame.quit()

def display_game_over_screen(score):
    screen = pygame.display.set_mode((1280, 780))
    from gameOver import game_over
    game_over(score)

if __name__ == '__main__':
    pong_main()
