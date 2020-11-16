import pygame
import random

class Enemies(pygame.sprite.Sprite):
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((30,40))
        self.rect = self.image.get_rect()
        self.radius = int(self.rect.width * .85 / 2)
        # pygame.draw.circle(self.image, (255,0,0), self.rect.center, self.radius)
        self.rect.x =  random.randrange(600 - self.rect.width)
        self.rect.y = random.randrange(-100, -40)
        self.y_speed = random.randrange(1,8)
        self.x_speed = random.randrange(-3,3)

    def update(self):
        self.rect.y += self.y_speed
        self.rect.x += self.x_speed
        if self.rect.top > 700 + 10 or self.rect.left < -25 or self.rect.right > 600 + 20:
            self.rect.x =  random.randrange(600 - self.rect.width)
            self.rect.y = random.randrange(-100,-40)
            self.y_speed = random.randrange(1,8)

class Bullet(pygame.sprite.Sprite):
    def __init__(self, x, y):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface((10,20))
        self.image.fill((255,0,0))
        self.rect = self.image.get_rect()
        self.rect.bottom = y
        self.rect.centerx = x
        self.y_speed = -10

    def update(self):
        self.rect.y += self.y_speed
        if self.rect.bottom < 0:
            self.kill()