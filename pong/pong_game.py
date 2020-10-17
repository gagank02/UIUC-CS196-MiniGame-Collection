# initialize/import pygame
import pygame
from paddle import Paddle
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
    paddleA = Paddle(white, 10, 100)
    paddleA.rect.x = 20
    paddleA.rect.y = 200

    paddleB = Paddle(white, 10, 100)
    paddleB.rect.x = 670
    paddleB.rect.y = 200

    ball = Ball(white, 10, 10)
    ball.rect.x = 345
    ball.rect.y = 195

    # list of all sprites in our Game
    all_sprites = pygame.sprite.Group()

    all_sprites.add(paddleA)
    all_sprites.add(paddleB)
    all_sprites.add(ball)

    playing = True

    # controls how fast game updates
    clock = pygame.time.Clock()

    # initializing scores
    scoreA = 0
    scoreB = 0

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
            paddleA.moveUp(5)
        if keys[pygame.K_s]:
            paddleA.moveDown(5)
        if keys[pygame.K_UP]:
            paddleB.moveUp(5)
        if keys[pygame.K_DOWN]:
            paddleB.moveDown(5)

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
        if pygame.sprite.collide_mask(ball, paddleA) or pygame.sprite.collide_mask(ball, paddleB):
            ball.bounce()

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

    pygame.quit()

