import pygame
from sprites import Movement, Enemies, Bullet
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

pygame.display.set_caption("space shooter") 

running = True

images = path.join(path.dirname(__file__), "images")
player_image = pygame.image.load(path.join(images, "playerShip3_blue.png")).convert()
enemy_image = pygame.image.load(path.join(images, "meteorGrey_small1.png")).convert()
bullet_image = pygame.image.load(path.join(images, "laserRed02.png")).convert()

all_sprites = pygame.sprite.Group()
enemies = pygame.sprite.Group()
bullets = pygame.sprite.Group()
movement = Movement()
movement.shield = 100
movement.image = player_image
movement.image.set_colorkey(black)
all_sprites.add(movement)
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


while running:
    clock.tick(30)

    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False
            if event.key == pygame.K_SPACE:
                bullet = Bullet(movement.rect.centerx, movement.rect.top)
                bullet.image = bullet_image
                bullet.image.set_colorkey(black)
                all_sprites.add(bullet)
                bullets.add(bullet)             

        if event.type == pygame.QUIT:
            running = False


    all_sprites.update()

    collisions = pygame.sprite.groupcollide(enemies, bullets, True, True)
    for i in collisions:
        e = Enemies()
        all_sprites.add(e)
        enemies.add(e)

    collision = pygame.sprite.spritecollide(movement, enemies, True)
    for i in collision:
        movement.shield -= 30
        if movement.shield <= 0:
            running = False

    screen.fill(black)
    
    all_sprites.draw(screen)

    health_bar(screen, 5, 5, movement.shield)

    pygame.display.flip()

pygame.quit()