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
tangent = 0

shootEvent = pygame.USEREVENT + 1
pygame.time.set_timer(shootEvent, 1200)

# Projectile lists for player
playerShot = []

# Adds projectile with specified direction to the list
def shotAppend(direction):
     playerShot.append(Entity(direction, 10, player.luck, player.attack,
                              "sprites/[PH]_shot.png", 16, 16))
     playerShot[-1].rect.y = (player.rect.y + 
                              ((player.ih - playerShot[-1].ih) / 2))
     playerShot[-1].rect.x = (player.rect.x + 
                              ((player.iw - playerShot[-1].iw) / 2))
     all_sprites.add(playerShot[-1])

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
            tangent = ((boss.rect.y - player.rect.y)
                       / (boss.rect.x - player.rect.x))
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
    if len(playerShot) > -1:
        if keys[pygame.K_UP]:
            shotAppend(1)
        if keys[pygame.K_DOWN]:
            shotAppend(2)
        if keys[pygame.K_LEFT]:
            shotAppend(3)
        if keys[pygame.K_RIGHT]:
            shotAppend(4)
    
    # Check for player collision
    if (pygame.sprite.collide_rect(player, boss)):
        if player.rect.y < boss.rect.y + (boss.ih / 2):
            player.moveUp(10 * player.ms)
        if player.rect.y >= boss.rect.y + (boss.ih / 2):
            player.moveDown(10 * player.ms, SCREEN_HEIGHT)
        if player.rect.x < boss.rect.x + (boss.iw / 2):
            player.moveLeft(10 * player.ms)
        if player.rect.x >= boss.rect.x + (boss.iw / 2):
            player.moveRight(10 * player.ms, SCREEN_WIDTH)

    # Check for shot in playerShot (Fix)
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
            if shot.hp == 1:
                shot.moveUp(shot.ms)
            if shot.hp == 2:
                shot.moveDown(shot.ms, SCREEN_HEIGHT)
            if shot.hp == 3:
                shot.moveLeft(shot.ms)
            if shot.hp == 4:
                shot.moveRight(shot.ms, SCREEN_WIDTH)
    
    
    if all_sprites.has(bossShot):
        if (bossShot.rect.x > (SCREEN_WIDTH - bossShot.iw) 
            or bossShot.rect.y > (SCREEN_HEIGHT - bossShot.ih) 
            or bossShot.rect.x < 0 
            or bossShot.rect.y < 0):
            all_sprites.remove(bossShot)
        else:
            if ((boss.rect.x + (boss.iw / 2)) 
                > (player.rect.x + (player.iw / 2))):
                bossShot.rect.x -= bossShot.ms
            else:
                bossShot.rect.x += bossShot.ms
            bossShot.rect.y = tangent * bossShot.rect.x

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
