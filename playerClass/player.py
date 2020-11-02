import pygame
from random import randint  # <- 20/10/14  this import statement is currently unused
from pygame.locals import (
    K_UP,
    K_DOWN,
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT
)


class Player(pygame.sprite.Sprite):
    def __init__(self, hp=6, ms=6, luck=6, awareness=6, attack=6, speed=10):
        super().__init__()

        self.image = pygame.image.load('../elephant.jpg').convert()
        self.image = pygame.transform.scale(self.image, (100, 100))
        # set transparent colorkey to #FFFFFF
        self.image.set_colorkey((255, 255, 255))

        self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = luck
        self.awareness = awareness
        self.attack = attack
        self.speed = speed

    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels):
        self.rect.y += pixels
        # checks for offscreen
        if self.rect.y > 400:
            self.rect.y = 400

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels):
        self.rect.x += pixels
        if self.rect.x > 700 - 100:
            self.rect.x = 700 - 100


'''the following lines of codes are just for testing
   and will not execute when imported
'''
if __name__ == '__main__':
    pygame.init()
    size = (700, 500)
    screen = pygame.display.set_mode(size)

    player = Player(6, 6, 6, 6, 6)
    move_speed = 5

    running = True
    while running:
        pygame.time.Clock().tick(60)     # game runs at 60fps
        screen.fill((0, 0, 0))

        for event in pygame.event.get():
            if event.type == QUIT:                                  # if user clicks close button, quit
                running = False
            elif event.type == KEYDOWN and event.key == K_ESCAPE:   # if user hits escape button, quit
                running = False

        keys = pygame.key.get_pressed()
        if keys[K_UP]:
            player.moveUp(move_speed)
        if keys[K_DOWN]:
            player.moveDown(move_speed)
        if keys[K_LEFT]:
            player.moveLeft(move_speed)
        if keys[K_RIGHT]:
            player.moveRight(move_speed)

        screen.blit(player.image, player.rect)
        pygame.display.flip()
