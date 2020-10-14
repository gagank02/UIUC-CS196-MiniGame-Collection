# intialize/import pygame
import pygame
from paddle import Paddle 
pygame.init()

# setting colors for game
black = (0,0,0)
white = (255,255,255)

# dimensions for screen size
size = (700, 500)
screen = pygame.display.set_mode(size)
pygame.display.set_caption("Pong")

playing = True

# controls how fast game updates
clock = pygame.time.Clock()

# Main Program Loop
while playing:
    # Main Event Loop
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            playing = False

    # Game Logic comes here


    screen.fill(black)

    #drawing of the net
    pygame.draw.line(screen, WHITE, [349, 0], [349, 500], 5)

    # updates screen
    pygame.display.flip()

    # game update speed
    clock.tick(60)

pygame.quit()
