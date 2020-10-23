# initialize/import pygame
import pygame
from player import Player
from ball import Ball


if __name__ == '__main__':
    pygame.init()

    # setting colors for game
    black = (0, 0, 0)
    white = (255, 255, 255)

    # dimensions for screen size
    size = (700, 500)
    screen = pygame.display.set_mode(size)
    pygame.display.set_caption("Pong")

    # initializing two paddles and ball
    player1 = Player(5, 5, 5, 0, 0, "69-694797_table-tennis-racket-transparent-png-butterfly-table-tennis.png", 50, 10)
    player1.rect.x = 20
    player1.rect.y = 200

    player2 = Player(5, 5, 5, 0, 0, "69-694797_table-tennis-racket-transparent-png-butterfly-table-tennis_copy.png", 50, 10)
    player2.rect.x = 670
    player2.rect.y = 200

    ball = Ball(white, 10, 10)
    ball.rect.x = 345
    ball.rect.y = 195

    # list of all sprites in our Game
    all_sprites = pygame.sprite.Group()

    all_sprites.add(player1)
    all_sprites.add(player2)
    all_sprites.add(ball)

    playing = True

    # controls how fast game updates
    clock = pygame.time.Clock()

    # initializing scores
    scoreA = 0
    scoreB = 0
    endA = 0
    endB = 0

    # Main Program Loop
    while playing:
        # Main Event Loop
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                playing = False
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_q:  # pressing q key quits the game
                    playing = False

        # inputs from keystrokes
        keys = pygame.key.get_pressed()
        if keys[pygame.K_w]:
            player1.moveUp(5)
        if keys[pygame.K_s]:
            player1.moveDown(5)
        if keys[pygame.K_UP]:
            player2.moveUp(5)
        if keys[pygame.K_DOWN]:
            player2.moveDown(5)

        # Game Logic comes here
        all_sprites.update()

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

        # collision detection
        if pygame.sprite.collide_mask(ball, player1) or pygame.sprite.collide_mask(ball, player2):
            ball.bounce()

        if scoreA > player2.hp:
            endA = endA + 1
            playing = False

        if scoreB > player1.hp:
            endB = endB + 1
            playing = False

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

        # updates screen
        pygame.display.flip()

        # game update speed
        clock.tick(60)

    if endA == 1:
        #this code is for endgame screen if A wins
        print('poop')

    if endB == 1:
        #this code is for endgame screen if B wins
        print('poop')

    pygame.quit()
