# Initialize outside modules to be used
import pygame
from player import Player

pygame.init()

# Colors for placeholder sprites
BLACK = (0, 0, 0)

# Screen size
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Boss Rush Time Trial")

# Initialize player and adds it to sprite list
player = Player(10, 10, 10, 0, 0, "sprites/placeholder.png", 128, 128)
player.rect.x = 0
player.rect.y = 0

# Initializes sprite list and adds sprites
all_sprites = pygame.sprite.Group()
all_sprites.add(player)

running = True

# For program update speed
clock = pygame.time.Clock()

# Main Loop
while running:

    # Event queue
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
	elif event.type == pygame.KEYDOWN:
	    if event.key == pygame.K_ESCAPE:
		running = False

    # Check for user input
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w] or keys[pygame.K_UP]:
        player.moveUp(player.ms)
    if keys[pygame.K_s] or keys[pygame.K_DOWN]:
        player.moveDown(player.ms)
    if keys[pygame.K_a] or keys[pygame.K_LEFT]:
        player.moveLeft(player.ms)
    if keys[pygame.K_d] or keys[pygame.K_RIGHT]:
        player.moveRight(player.ms)

    # Updates sprites
    all_sprites.update()

    # Fills background and draws sprites
    screen.fill(BLACK)
    all_sprites.draw(screen)

    # Updates display
    pygame.display.flip()

    # Update speed
    clock.tick(60)

pygame.quit()
