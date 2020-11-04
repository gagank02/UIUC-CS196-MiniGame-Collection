import pygame
from random import randint

class Player(pygame.sprite.Sprite):
    def __init__(self, hp, ms, luck, awareness, attack, image, i_height, i_width):
        super().__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (i_width, i_height))

        self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = randint(0, luck)
        self.awareness = awareness
        self.attack = attack
        self.i_height = i_height
        self.i_width = i_width

    # If-statements refer to off-screen checks
    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels, height):
        self.rect.y += pixels
        if self.rect.y > (height - self.i_height):
            self.rect.y = (height - self.i_height)

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels, width):
        self.rect.x += pixels
        if self.rect.x > (width - self.i_width):
            self.rect.x = (width - self.i_width)
