# Initialize outside modules to be used
import pygame, sys
sys.path.insert(0, '..')
from entity.entity import Entity

pygame.init()

# Colors for placeholder sprites
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)

# Screen size
SCREEN_WIDTH = 1280
SCREEN_HEIGHT = 720
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Boss Rush Time Trial")

# Initializes sprite list
all_sprites = pygame.sprite.Group()

# Initialize entities and add them to sprite list
player = Entity(4, 5, 10, 100, "sprites/[PH]_player.png", 64, 64)
# player = Entity(10, 5, 10, 0, "bossRush/sprites/[PH]_player.png", 64, 64) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
player.rect.y = 0                                                         # Line 22 intended for Main Menu functionality
player.rect.x = 0
all_sprites.add(player)

boss = Entity(5100, 10, 0, 1, "sprites/[PH]_boss.png", 256, 256) 
# boss = Entity(10, 10, 0, 10, "bossRush/sprites/[PH]_boss.png", 256, 256) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
boss.rect.y = (SCREEN_HEIGHT - boss.ih) / 2                              # Line 28 intended for Main Menu functionality
boss.rect.x = (SCREEN_WIDTH - boss.iw) / 2
all_sprites.add(boss)

bossShot = Entity(0, 5, 10, boss.attack, "sprites/[PH]_shot.png", 64, 64)
# bossShot = Entity(0, 5, 10, boss.attack, "bossRush/sprites/[PH]_shot.png", 32, 32) # COMMENT THIS OUT IF RUNNING GAME THROUGH THIS FILE
bossShot.rect.x = -1 * bossShot.iw                                                 # Line 34 intended for Main Menu functionality
bossShot.rect.y = -1 * bossShot.ih
tan = (0, 0)

shootEvent = pygame.USEREVENT + 1
pygame.time.set_timer(shootEvent, 1800)
attEvent = pygame.USEREVENT + 2
pygame.time.set_timer(attEvent, 500)

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
    
shotInt = True

# For program update speed
clock = pygame.time.Clock()

def boss_rush_main():
    running = True
    
    # For timer
    counter = 45
    time = "0:" + str(counter)
    pygame.time.set_timer(pygame.USEREVENT, 1000)
    font = pygame.font.SysFont('Times New Roman', 48)
    
    # For health
    bhp = "Boss HP: " + str(boss.hp)
    color = (0, 255, 0)
    damage = 0
    
    # For lives
    lives = "Lives: " + str(player.hp)
    hits = 0
    
    tan = (0, 0) # Replicated variable for Main Meny functionality

    # Main Loop
    while running:

        # Event queue
        for event in pygame.event.get():
            if (event.type == pygame.QUIT 
                or counter <= 0 
                or damage >= boss.hp 
                or hits >= player.hp):
                score = str(damage + (100 * counter * lives))
                running = False
                display_game_over_screen(score)
            elif event.type == attEvent:
                shotInt = True
            elif event.type == shootEvent:
                bossShot.rect.x = (boss.rect.x + (boss.iw - bossShot.iw) / 2)
                bossShot.rect.y = (boss.rect.y + (boss.ih - bossShot.ih) / 2)
                tan = ((bossShot.rect.x - player.rect.x),
                    (bossShot.rect.y - player.rect.y))
                all_sprites.add(bossShot)
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    score = str(0)
                    running = False
                    display_game_over_screen(score)
            elif event.type == pygame.USEREVENT:
                counter -= 1
                time = "0:" + str(counter)
                if (counter < 10):
                    time = "0:0" + str(counter)

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
            if keys[pygame.K_UP] and shotInt:
                shotAppend(1)
                shotInt = False
            elif keys[pygame.K_DOWN] and shotInt:
                shotAppend(2)
                shotInt = False
            elif keys[pygame.K_LEFT] and shotInt:
                shotAppend(3)
                shotInt = False
            elif keys[pygame.K_RIGHT] and shotInt:
                shotAppend(4)
                shotInt = False
        
        # Check for player collision
        if pygame.sprite.collide_rect(player, boss):
            if player.rect.y < boss.rect.y + (boss.ih / 2):
                player.moveUp(10 * player.ms)
                hits += 1
                lives = "Lives: " + str(player.hp - hits)
            if player.rect.y >= boss.rect.y + (boss.ih / 2):
                player.moveDown(10 * player.ms, SCREEN_HEIGHT)
                hits += 1
                lives = "Lives: " + str(player.hp - hits)
            if player.rect.x < boss.rect.x + (boss.iw / 2):
                player.moveLeft(10 * player.ms)
                hits += 1
                lives = "Lives: " + str(player.hp - hits)
            if player.rect.x >= boss.rect.x + (boss.iw / 2):
                player.moveRight(10 * player.ms, SCREEN_WIDTH)
                hits += 1
                lives = "Lives: " + str(player.hp - hits)

        # Check for shot in playerShot
        for shot in playerShot:
            if shot.luck == 1:
                shot.moveUp(shot.ms)
            if shot.luck == 2:
                shot.moveDown(shot.ms, SCREEN_HEIGHT)
            if shot.luck == 3:
                shot.moveLeft(shot.ms)
            if shot.luck == 4:
                shot.moveRight(shot.ms, SCREEN_WIDTH)
            if pygame.sprite.collide_rect(shot, bossShot):
                shot.kill()
                shot.attack = 0
            if pygame.sprite.collide_rect(shot, boss):
                shot.kill()
                damage += (shot.attack / 27)
                if ((int(boss.hp - damage)) < 0):
                    bhp = "Boss HP: " + str(0)
                else:
                    bhp = "Boss HP: " + str(int(boss.hp - damage))
                if (damage <= 2550):
                    color = (int(damage) / 10, 255, 0)
                else:
                    color = (255, int(boss.hp - damage) / 10, 0)
        
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
                hits += 1
                lives = "Lives: " + str(player.hp - hits)

        # Updates sprites
        all_sprites.update()

        # Fills background and draws sprites
        screen.fill(BLACK)
        screen.blit(font.render(time, True, WHITE), (SCREEN_WIDTH - 96, 0))
        screen.blit(font.render(bhp, True, color), (12, 0))
        screen.blit(font.render(lives, True, WHITE), (12, SCREEN_HEIGHT - 60))
        all_sprites.draw(screen)

        # Updates display
        pygame.display.flip()

        # Update speed
        clock.tick(60)

    pygame.quit()

def display_game_over_screen(score):
    screen = pygame.display.set_mode((1280, 780))
    from gameOver import game_over
    game_over(score)

if __name__ == "__main__":
    boss_rush_main()