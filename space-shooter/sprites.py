import pygame
import random

class Movement(pygame.sprite.Sprite):
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((50,40))
        self.image.fill((0,255,0))
        self.rect = self.image.get_rect()
        self.rect.centerx = 600 / 2
        self.rect.bottom = 700 - 10
        self.x_speed = 0

    def update(self):
        keypress = pygame.key.get_pressed()
        if keypress[pygame.K_a] or keypress[pygame.K_LEFT]:
            self.x_speed = -10
        elif keypress[pygame.K_d] or keypress[pygame.K_RIGHT]:
            self.x_speed = 10
        else:
            self.x_speed = 0
        self.rect.x += self.x_speed
        if self.rect.right > 600:
            self.rect.right = 600
        if self.rect.left < 0:
            self.rect.left = 0

class Enemies(pygame.sprite.Sprite):
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((30,40))
        self.image.fill((255,0,0))
        self.rect = self.image.get_rect()
        self.rect.x =  random.randrange(600 - self.rect.width)
        self.rect.y = random.randrange(-100, -50)
        self.y_speed = random.randrange(1,10)
        self.x_speed = random.randrange(-5,5)

    def update(self):
        self.rect.y += self.y_speed
        self.rect.x += self.x_speed
        if self.rect.top == 700 + 10 or self.rect.left == -10 or self.rect.right == 600 + 10:
            self.rect.x =  random.randrange(600 - self.rect.width)
            self.rect.y = random.randrange(-100,-50)
            self.y_speed = random.randrange(1,10)