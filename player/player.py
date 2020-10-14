import pygame
from random import randint


class Player(pygame.sprite.Sprite):
    def __init__(self, hp, ms, luck, awareness, attack):
        super().__init__()

        self.image = pygame.image.load('107623182-pixel-elephant-isolated-on-white-background-8-bit-vector-illustration.jpg')
        self.image = pygame.transform.scale(self.image, (100, 40))

        self.rect = self.image.get_rect()

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
        if self.rect.y > 400:
            self.rect.y = 400

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels):
        self.rect.x += pixels
        if self.rect.x > 700:
            self.rect.x = 700
