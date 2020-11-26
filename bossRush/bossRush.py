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
# player = Entity(10, 5, 10, 0, "bossRush/sprites/[PH]_player.png", 64, 64) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
player.rect.y = 0                                                         # Line 22 intended for Main Menu functionality
player.rect.x = 0
all_sprites.add(player)

boss = Entity(10, 10, 0, 10, "sprites/[PH]_boss.png", 256, 256) 
# boss = Entity(10, 10, 0, 10, "bossRush/sprites/[PH]_boss.png", 256, 256) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
boss.rect.y = (SCREEN_HEIGHT - boss.ih) / 2                              # Line 28 intended for Main Menu functionality
boss.rect.x = (SCREEN_WIDTH - boss.iw) / 2
all_sprites.add(boss)

bossShot = Entity(0, 5, 10, boss.attack, "sprites/[PH]_shot.png", 32, 32)
# bossShot = Entity(0, 5, 10, boss.attack, "bossRush/sprites/[PH]_shot.png", 32, 32) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
bossShot.rect.x = -1 * bossShot.iw                                                 # Line 34 intended for Main Menu functionality
bossShot.rect.y = -1 * bossShot.ih
tan = (0, 0)

shootEvent = pygame.USEREVENT + 1
pygame.time.set_timer(shootEvent, 2400)

# Projectile lists for player
playerShot = []

# Adds projectile with specified direction to the list
def shotAppend(direction):
    playerShot.append(Entity(0, 10, direction, player.attack,
                              "sprites/[PH]_shot.png", 16, 16))
    #  playerShot.append(Entity(0, 10, direction, player.attack,           # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
                            #   "bossRush/sprites/[PH]_shot.png", 16, 16)) # Line 49-50 intended for Main Menu functionality
    playerShot[-1].rect.y = (player.rect.y +                            
                              ((player.ih - playerShot[-1].ih) / 2))
    playerShot[-1].rect.x = (player.rect.x + 
                              ((player.iw - playerShot[-1].iw) / 2))
    all_sprites.add(playerShot[-1])

# For program update speed
clock = pygame.time.Clock()

def boss_rush_main():
    running = True

    tan = (0, 0) # Replicated variable for Main Meny functionality

    # Main Loop
    while running:

        # Event queue
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
                return_to_main_menu()
            elif event.type == shootEvent:
                bossShot.rect.x = (boss.rect.x + (boss.iw - bossShot.iw) / 2)
                bossShot.rect.y = (boss.rect.y + (boss.ih - bossShot.ih) / 2)
                tan = ((bossShot.rect.x - player.rect.x),
                    (bossShot.rect.y - player.rect.y))
                all_sprites.add(bossShot)
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    running = False
                    return_to_main_menu()

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
            elif keys[pygame.K_DOWN]:
                shotAppend(2)
            elif keys[pygame.K_LEFT]:
                shotAppend(3)
            elif keys[pygame.K_RIGHT]:
                shotAppend(4)
        
        # Check for player collision
        if pygame.sprite.collide_rect(player, boss):
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
            if shot.luck == 1:
                shot.moveUp(shot.ms)
            if shot.luck == 2:
                shot.moveDown(shot.ms, SCREEN_HEIGHT)
            if shot.luck == 3:
                shot.moveLeft(shot.ms)
            if shot.luck == 4:
                shot.moveRight(shot.ms, SCREEN_WIDTH)
            if pygame.sprite.collide_rect(shot, boss):
                shot.kill()
        
        if all_sprites.has(bossShot):
            if tan[1] > 0:
                bossShot.moveUp(tan[1] / 62.4)
            if tan[1] < 0:
                bossShot.moveDown(-1 * tan[1] / 62.4, SCREEN_HEIGHT)
            if tan[0] > 0:
                bossShot.moveLeft(tan[0] / 62.4)
            if tan[0] < 0:
                bossShot.moveRight(-1 * tan[0] / 62.4, SCREEN_WIDTH)
            if pygame.sprite.collide_rect(player, bossShot):
                bossShot.kill()

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

def return_to_main_menu():
    screen = pygame.display.set_mode((480, 640))
    from main import main_menu
    main_menu()

if __name__ == "__main__":
    boss_rush_main()