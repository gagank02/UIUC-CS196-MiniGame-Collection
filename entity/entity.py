import pygame
from random import randint


class Entity(pygame.sprite.Sprite):
    """Class Entity

    Attributes:
        hp (int): The amount of health points your player has
        ms (int): How fast your player can move
        luck (int): How lucky your player is
        attack (int): How much damage your player can deal
        image (pygame.Surface): The image/sprite for your player
        ih (int): How tall your player is (in px)
        iw (int): How wide your player is (in px)
    """
    def __init__(self, hp, ms, luck, attack, image, ih, iw):
        super(Entity, self).__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iw, ih))
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
