import pygame
from random import randint

SCREEN_WIDTH = 1024
SCREEN_HEIGHT = 800



class Player(pygame.sprite.Sprite):
    def __init__(self, hp, ms, luck, awareness, attack, image, iwidth, iheight):
        super().__init__()

        self.surf = pygame.image.load(image)
        self.surf = pygame.transform.scale(self.surf, (iwidth, iheight))
        self.rect = self.surf.get_rect(topleft=(0, SCREEN_HEIGHT - 100))

        self.hp = hp
        self.ms = ms
        self.luck = luck
        self.awareness = awareness
        self.attack = attack

    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels):
        self.rect.y += pixels
        # checks for offscreen
        if self.rect.y > SCREEN_HEIGHT:
            self.rect.y = SCREEN_HEIGHT

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels):
        self.rect.x += pixels
        if self.rect.x > SCREEN_WIDTH:
            self.rect.x = SCREEN_WIDTH
