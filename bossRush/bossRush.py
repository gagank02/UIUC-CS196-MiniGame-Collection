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
player = Entity(10, 5, 10, 0, "sprites/[PH]_player.png", 64, 64)
player.rect.y = 0
player.rect.x = 0
all_sprites.add(player)

boss = Entity(10, 10, 10, 0, "sprites/[PH]_boss.png", 256, 256)
boss.rect.y = (SCREEN_HEIGHT - boss.ih) / 2
boss.rect.x = (SCREEN_WIDTH - boss.iw) / 2
all_sprites.add(boss)

bossShot = Entity(10, 5, 10, 0, "sprites/[PH]_shot.png", 32, 32)
bossShot.rect.x = -1 * bossShot.iw
bossShot.rect.y = -1 * bossShot.ih

shootEvent = pygame.USEREVENT + 1
pygame.time.set_timer(shootEvent, 2000)

playerShot = []
playerShotLast = len(playerShot) - 1
def shotAppend(shot):
    playerShot.append(shot)
    playerShot[playerShotLast].rect.y += player.ih 
    playerShot[playerShotLast].rect.y -= playerShot[playerShotLast].ih 
    playerShot[playerShotLast].rect.y /= 2
    playerShot[playerShotLast].rect.y += player.rect.y
    playerShot[playerShotLast].rect.x += player.iw 
    playerShot[playerShotLast].rect.x -= playerShot[playerShotLast].iw 
    playerShot[playerShotLast].rect.x /= 2
    playerShot[playerShotLast].rect.x += player.rect.x
    all_sprites.add(playerShot[playerShotLast])


running = True

# For program update speed
clock = pygame.time.Clock()

# Main Loop
while running:

    # Event queue
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        elif event.type == shootEvent:
            bossShot.rect.x = (boss.rect.x + (boss.iw - bossShot.iw) / 2)
            bossShot.rect.y = (boss.rect.y + (boss.ih - bossShot.ih) / 2)
            all_sprites.add(bossShot)
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False

    keys = pygame.key.get_pressed()
    
    # Check for player movement
    if keys[pygame.K_w]:
        player.moveUp(player.ms)
    if keys[pygame.K_s]:
        player.moveDown(player.ms, SCREEN_HEIGHT)
    if keys[pygame.K_a]:
        player.moveLeft(player.ms)
    if keys[pygame.K_d]:
        player.moveRight(player.ms, SCREEN_WIDTH)
        
    # Check for player shot
    if keys[pygame.K_UP]:
        shotAppend(Entity(0, 10, 1, player.attack,
                                 "sprites/[PH]_shot.png", 16, 16))
        
    elif keys[pygame.K_DOWN]:
        shotAppend(Entity(0, 10, 2, player.attack,
                                 "sprites/[PH]_shot.png", 16, 16))
    elif keys[pygame.K_LEFT]:
        shotAppend(Entity(0, 10, 3, player.attack,
                                 "sprites/[PH]_shot.png", 16, 16))
    elif keys[pygame.K_RIGHT]:
        shotAppend(Entity(0, 10, 4, player.attack,
                                 "sprites/[PH]_shot.png", 16, 16))
    
    # Check for player collision
    if (player.rect.y > (boss.rect.y - player.ih) 
        and player.rect.y < (boss.rect.y + boss.ih) 
        and player.rect.x > (boss.rect.x - player.iw) 
        and player.rect.x < (boss.rect.x + boss.iw)):
        if player.rect.y < boss.rect.y + (boss.ih / 2):
            player.moveUp(10 * player.ms)
        if player.rect.y >= boss.rect.y + (boss.ih / 2):
            player.moveDown(10 * player.ms, SCREEN_HEIGHT)
        if player.rect.x < boss.rect.x + (boss.iw / 2):
            player.moveLeft(10 * player.ms)
        if player.rect.x >= boss.rect.x + (boss.iw / 2):
            player.moveRight(10 * player.ms, SCREEN_WIDTH)

    # Check for shot in playerShot
    for shot in playerShot:
        if (shot.rect.y > (SCREEN_HEIGHT - shot.ih) 
            or shot.rect.x > (SCREEN_WIDTH - shot.iw) 
            or shot.rect.y < 0 
            or shot.rect.x < 0):
            shot.rect.y = -1 * shot.ih
            shot.rect.x = -1 * shot.iw
            all_sprites.remove(shot)
            playerShot.remove(shot)
        else:
            if shot.luck == 1:
                shot.moveUp(shot.ms)
            if shot.luck == 2:
                shot.moveDown(shot.ms, SCREEN_HEIGHT)
            if shot.luck == 3:
                shot.moveLeft(shot.ms)
            if shot.luck == 4:
                shot.moveRight(shot.ms, SCREEN_WIDTH)

    """
    if all_sprites.has(bossShot):
        if bossShot.rect.x >= (SCREEN_WIDTH - bossShot.iw) or bossShot.rect.y >= (SCREEN_HEIGHT - bossShot.ih) or bossShot.rect.x <= 0 or bossShot.rect.y <= 0:
            all_sprites.remove(bossShot)
        else:
            if dir == 1:
                bossShot.moveUp(bossShot.ms)
            if dir == 2:
                bossShot.moveDown(bossShot.ms, SCREEN_HEIGHT)
            if dir == 3:
                bossShot.moveLeft(bossShot.ms)
            if dir == 4:
                bossShot.moveRight(bossShot.ms, SCREEN_WIDTH)
    """

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
