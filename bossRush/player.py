import pygame
from random import randint

class Player(pygame.sprite.Sprite):
    def __init__(self, hp, ms, luck, awareness, attack, image, iheight, iwidth):
        super().__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iwidth, iheight))

        self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = randint(0, luck)
        self.awareness = awareness
        self.attack = attack

    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels):
	self.rect.y += pixels
        # checks for offscreen
        if self.rect.y > 720:
            self.rect.y = 720

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels):
	self.rect.x += pixels
        if self.rect.x > 1280:
            self.rect.x = 1280
