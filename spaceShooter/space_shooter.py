import pygame, sys
sys.path.insert(0, '..')
from entity.entity import Entity
from spaceShooter.sprites import Enemies, Bullet
from os import path 

pygame.init()
pygame.mixer.init()
clock = pygame.time.Clock()

black = (0, 0, 0)
white = (255, 255, 255)
red = (255, 0, 0)
green = (0, 255, 0)
blue = (0, 0, 255)

width = 600
height = 700
fps = 30
screen = pygame.display.set_mode((width,height))

pygame.display.set_caption("Space Shooter") 

running = True

images = path.join(path.dirname(__file__), "images")
# enemy_image = pygame.image.load(path.join(images, "meteorGrey_small1.png")).convert()
enemy_image = pygame.image.load("spaceShooter/images/meteorGrey_small1.png") # Comment this out if running through this file
                                                                                                          # Line 28 intended for main menu functionality
# bullet_image = pygame.image.load(path.join(images, "laserRed02.png")).convert()
bullet_image = pygame.image.load("spaceShooter/images/laserRed02.png") # Comment this out if running through this file
                                                                                                    # Line 31 intended for main menu functionality
all_sprites = pygame.sprite.Group()
enemies = pygame.sprite.Group()
bullets = pygame.sprite.Group()
# player = Entity(100, 10, 0, 0, "images/playerShip3_blue.png", 40, 50)
player = Entity(100, 10, 0, 0, "spaceShooter/images/playerShip3_blue.png", 40, 50) # Comment this out if running through this file
                                                                                   # Line 37 intended for main menu functionality
player.rect.centerx = int(width / 2)
player.rect.bottom = height - 10
player.radius = 25
pygame.draw.circle(player.image, red, player.rect.center, player.radius)
player.image.set_colorkey(black)
all_sprites.add(player)
for x in range(10):
    e = Enemies()
    e.image = enemy_image
    e.image.set_colorkey(black)
    all_sprites.add(e)
    enemies.add(e)

def health_bar(surface, x, y, health):
    if health < 0:
        health = 0
    bar_length = 100
    bar_height = 10
    current_health = int((health / 100) * bar_length)
    outer = pygame.Rect(x, y, bar_length, bar_height)
    current = pygame.Rect(x, y, current_health, bar_height)
    pygame.draw.rect(surface, green, current)
    pygame.draw.rect(surface, white, outer, 2)

def new_enemies():
    e = Enemies()
    all_sprites.add(e)
    enemies.add(e)

font_type = pygame.font.match_font('times new roman')
def score_display(surface, text, font_size, x, y):
    font = pygame.font.Font(font_type, font_size)
    text_surface = font.render(text, True, white)
    text_rect = text_surface.get_rect()
    text_rect.midtop = (int(x), int(y))
    surface.blit(text_surface, text_rect)

score = 0

def space_shooter_main():
    running = True
    score = 0

    while running:
        
        clock.tick(30)

        for event in pygame.event.get():
            if event.type == pygame.KEYDOWN:
                if event.key == pygame.K_ESCAPE:
                    running = False
                    display_game_over_screen(str(score))
                if event.key == pygame.K_SPACE:
                    bullet = Bullet(player.rect.centerx, player.rect.top)
                    bullet.image = bullet_image
                    bullet.image.set_colorkey(black)
                    all_sprites.add(bullet)
                    bullets.add(bullet) 

            if event.type == pygame.QUIT:
                running = False
                display_game_over_screen(str(score))

        keypress = pygame.key.get_pressed()
        if keypress[pygame.K_RIGHT]:
            player.moveRight(player.ms, width)
        if keypress[pygame.K_LEFT]:
            player.moveLeft(player.ms)    

        all_sprites.update()

        collisions = pygame.sprite.groupcollide(enemies, bullets, True, True)
        for i in collisions:
            new_enemies()
            score += 100

        collision = pygame.sprite.spritecollide(player, enemies, True, pygame.sprite.collide_circle)
        for i in collision:
            player.hp -= 30
            new_enemies()
            if player.hp <= 0:
                running = False
                display_game_over_screen(str(score))

        screen.fill(black)
        
        all_sprites.draw(screen)

        health_bar(screen, 5, 5, player.hp)

        score_display(screen, "SCORE: " + str(score), 40, width / 2, 10)

        pygame.display.flip()

    pygame.quit()

def display_game_over_screen(score):
    screen = pygame.display.set_mode((1280, 780))
    from gameOver import game_over
    game_over(score)

if __name__ == "__main__":
    space_shooter_main()