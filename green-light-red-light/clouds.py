import pygame
import random
from pygame.locals import RLEACCEL
import os

WHITE = (255,255,255)
BLACK = (0,0,0)
SCREEN_WIDTH, SCREEN_HEIGHT = 1024, 800

class Cloud(pygame.sprite.Sprite):
    def __init__(self):
        super(Cloud, self).__init__()
        self.surf = pygame.image.load('cloud.png').convert()
        self.surf = pygame.transform.scale(self.surf, (80, 50))
        self.surf.set_colorkey(BLACK, RLEACCEL)
        self.rect = self.surf.get_rect(
            center = (
                random.randint(SCREEN_WIDTH + 30, SCREEN_WIDTH + 150),
                random.randint(0, SCREEN_HEIGHT - 150),
            )
        )
    
    def update(self):
        self.rect.move_ip(-5, 0)
        if self.rect.right < 0:
            self.kill()