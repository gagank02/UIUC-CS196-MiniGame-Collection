import pygame
from player import Player

SCREEN_WIDTH, SCREEN_HEIGHT = 1280, 780

class Runner(pygame.sprite.Sprite):
    def __init__(self, color, width, height):
        super().__init__()

        self.surf = pygame.Surface([width, height])
        self.surf.fill(color)
        pygame.draw.rect(self.surf, color, [0, 0, width, height])
        self.rect = self.surf.get_rect(topleft=(0, SCREEN_HEIGHT - 100))

    def moveRight(self, pixels):
        self.rect.x += pixels
        if self.rect.x > SCREEN_WIDTH:
            self.rect.x = SCREEN_WIDTH
    
    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0
