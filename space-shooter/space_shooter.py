import pygame
from sprites import Movement, Enemies

pygame.init()
pygame.mixer.init()
clock = pygame.time.Clock()
all_sprites = pygame.sprite.Group()
movement = Movement()
all_sprites.add(movement)
for x in range(10):
    e = Enemies()
    all_sprites.add(e)

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

while running:
    clock.tick(30)
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                running = False             

        if event.type == pygame.QUIT:
            running = False

    all_sprites.update()

    screen.fill(black)
    
    all_sprites.draw(screen)
    pygame.display.flip()

pygame.quit()