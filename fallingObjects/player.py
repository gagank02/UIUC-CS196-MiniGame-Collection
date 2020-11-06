import pygame
from constants import *
from entity.entity import Entity


class Player(Entity):
    """Player class extending Entity
    Controls the properties and behaviors of the player

    Attributes:
        speed:  (int) the velocity the player moves
        hp:     (int) the number of times the player can collide with falling objects
        image:  (Str) the path of image the player uses
    """
    def __init__(self, speed=6, hp=6, image='../elephant.jpg'):
        super().__init__(ms=6, luck=6, attack=6,
                         image=image, hp=hp,
                         ih=80, iw=80,
                         isGLRL=False)

        self.image = pygame.image.load(image).convert()
        self.image.set_colorkey(WHITE)
        self.image = pygame.transform.scale(self.image, (self.iw, self.ih))

        self.rect = self.image.get_rect()
        self.speed = speed
