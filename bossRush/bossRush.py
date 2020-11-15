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
player = Entity(10, 5, 10, 0, "sprites/[PH]_player.png", 32, 32)
player.rect.x = 0
player.rect.y = 0
all_sprites.add(player)

boss = Entity(10, 10, 10, 0, "sprites/[PH]_boss.png", 128, 128)
boss.rect.x = (SCREEN_WIDTH - boss.iw) / 2
boss.rect.y = (SCREEN_HEIGHT - boss.ih) / 2
all_sprites.add(boss)

bossShot = Entity(10, 5, 10, 0, "sprites/[PH]_shot.png", 32, 32)
bossShot.rect.x = -1 * bossShot.iw
bossShot.rect.y = -1 * bossShot.ih

directions = {
    "Up": False,
    "Down": False,
    "Left": False,
    "Right": False
}
collisions = {
    "Bump": False,
    "Hit": False
}

shootEvent = pygame.USEREVENT + 1
pygame.time.set_timer(shootEvent, 2000)

shotList = []

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
            # Try to shorten this conditional somehow
            if (event.key == pygame.K_UP 
                or event.key == pygame.K_DOWN 
                or event.key == pygame.K_LEFT 
                or event.key == pygame.K_RIGHT):
                new_shot = Entity(10, 25, 10, 0, "sprites/[PH]_shot.png", 32, 32)
                new_shot.rect.x = -1 * new_shot.iw
                new_shot.rect.y = -1 * new_shot.ih
                new_shot.rect.x = (player.rect.x + (player.iw - new_shot.iw) / 2)
                new_shot.rect.y = (player.rect.y + (player.ih - new_shot.ih) / 2)
                shotList.append(new_shot)
                all_sprites.add(new_shot)

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
        
    if collisions["Bump"]:
        if player.rect.y < boss.rect.y + (boss.ih / 2):
            player.moveUp(10 * player.ms)
        if player.rect.y >= boss.rect.y + (boss.ih / 2):
            player.moveDown(10 * player.ms, SCREEN_HEIGHT)
        if player.rect.x < boss.rect.x + (boss.iw / 2):
            player.moveLeft(10 * player.ms)
        if player.rect.x >= boss.rect.x + (boss.iw / 2):
            player.moveRight(10 * player.ms, SCREEN_WIDTH)
    
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
    for shot in shotList:
        # Try to shorten this conditional somehow
        if shot.rect.x >= (SCREEN_WIDTH - shot.iw) or shot.rect.y >= (SCREEN_HEIGHT - shot.ih) or shot.rect.x <= 0 or shot.rect.y <= 0:
            all_sprites.remove(shot)
            shotList.remove(shot)
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
                
    # Check for collision
    collisions["Bump"] = (player.rect.y > (boss.rect.y - player.ih) 
        and player.rect.y < (boss.rect.y + boss.ih) 
        and player.rect.x > (boss.rect.x - player.iw) 
        and player.rect.x < (boss.rect.x + boss.iw))

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
