# Initialize outside modules to be used
import pygame, sys
sys.path.insert(0, '..')
from entity.entity import Entity

pygame.init()

# Colors for placeholder sprites
BLACK = (0, 0, 0)

# Screen size
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Boss Rush Time Trial")

# Initializes sprite list
all_sprites = pygame.sprite.Group()

# Initialize entities and add them to sprite list
player = Entity(10, 10, 10, 0, "sprites/[PH]_player.png", 128, 128)
player.rect.x = 0
player.rect.y = 0
all_sprites.add(player)

boss = Entity(10, 10, 10, 0, "sprites/[PH]_boss.png", 256, 256)
boss.rect.x = (SCREEN_WIDTH - boss.iw) / 2
boss.rect.y = (SCREEN_HEIGHT - boss.ih) / 2
all_sprites.add(boss)

shot = Entity(10, 25, 10, 0, "sprites/[PH]_shot.png", 32, 32)
shot.rect.x = -1 * shot.iw
shot.rect.y = -1 * shot.ih
directions = {
    "Up": False,
    "Down": False,
    "Left": False,
    "Right": False
}

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
            # Try to shorten this conditional somehow
            if event.key == pygame.K_UP or event.key == pygame.K_DOWN or event.key == pygame.K_LEFT or event.key == pygame.K_RIGHT:
                shot.rect.x = (player.rect.x + (player.iw - shot.iw) / 2)
                shot.rect.y = (player.rect.y + (player.ih - shot.ih) / 2)
                all_sprites.add(shot)

    # Check for user input (moving)
    keys = pygame.key.get_pressed()
    if keys[pygame.K_w]:
        player.moveUp(player.ms)
    if keys[pygame.K_s]:
        player.moveDown(player.ms, SCREEN_HEIGHT)
    if keys[pygame.K_a]:
        player.moveLeft(player.ms)
    if keys[pygame.K_d]:
        player.moveRight(player.ms, SCREEN_WIDTH)

    # Check for user input (shot shot)
    if keys[pygame.K_UP]:
        directions["Up"] = True
        directions["Down"] = False
    if keys[pygame.K_DOWN]:
        directions["Up"] = False
        directions["Down"] = True
    if keys[pygame.K_LEFT]:
        directions["Left"] = True
        directions["Right"] = False
    if keys[pygame.K_RIGHT]:
        directions["Left"] = False
        directions["Right"] = True

    # Check for shot shot
    if all_sprites.has(shot):
        # Try to shorten this conditional somehow
        if shot.rect.x >= (SCREEN_WIDTH - shot.iw) or shot.rect.y >= (SCREEN_HEIGHT - shot.ih) or shot.rect.x <= 0 or shot.rect.y <= 0:
            all_sprites.remove(shot)
            for direction in directions:
                directions[direction] = False
        else:
            if directions["Up"]:
                shot.moveUp(shot.ms)
            if directions["Down"]:
                shot.moveDown(shot.ms, SCREEN_HEIGHT)
            if directions["Left"]:
                shot.moveLeft(shot.ms)
            if directions["Right"]:
                shot.moveRight(shot.ms, SCREEN_WIDTH)

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
