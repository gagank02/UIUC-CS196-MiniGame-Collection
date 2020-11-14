import pygame
from random import randint


class Entity(pygame.sprite.Sprite):
    """Class Entity

    Args:
        hp (int):
        ms (int):
        luck (int):
        attack (int):
        image (str):
        ih (int):
        iw (int):
        isGLRL (bool):
    """
    def __init__(self, hp, ms, luck, attack, image, ih, iw, isGLRL):
        super(Entity, self).__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iw, ih))
        if isGLRL:
            self.rect = self.image.get_rect(topleft=(0, 800 - 100))  # Screen height - 100px
        else:
            self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = randint(0, luck)
        self.attack = attack
        self.ih = ih
        self.iw = iw

    # If-statements refer to off-screen checks
    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            self.rect.y = 0

    def moveDown(self, pixels, height):
        self.rect.y += pixels
        if self.rect.y > (height - self.ih):
            self.rect.y = (height - self.ih)

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            self.rect.x = 0

    def moveRight(self, pixels, width):
        self.rect.x += pixels
        if self.rect.x > (width - self.iw):
            self.rect.x = (width - self.iw)
