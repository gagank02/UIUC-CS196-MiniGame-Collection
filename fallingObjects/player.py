import pygame
from random import randint
from constants import *

class Player(pygame.sprite.Sprite):
    def __init__(self,
                 hp=6, ms=6, luck=6, awareness=6, attack=6, speed=6,
                 image='../elephant.jpg',
                 iheight=80, iwidth=80):
        super(Player, self).__init__()

        self.image = pygame.image.load(image).convert()
        self.image.set_colorkey(WHITE)
        self.image = pygame.transform.scale(self.image, (iwidth, iheight))

        self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = randint(0, luck)
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
        if self.rect.x > 700:
            self.rect.x = 700
