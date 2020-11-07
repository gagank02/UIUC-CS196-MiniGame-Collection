import pygame
from constants import *
from entity.entity import Entity
from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_a,
    K_d
)


class Player(Entity):
    """Player class extending Entity
    Controls the properties and behaviors of the player

    Attributes:
        speed (int):        the velocity the player moves
        hp (int):           the number of times the player can collide with falling objects
        image (pygame.Surface): 
        rect (pygame.Rect): Rect object representing the spatial properties of player
        max_inv (int):      maximum duration of player's invincibility
                            Remains unchanged once set
        inv (int):          duration of invincibility after player is hit or spawns (in ticks)
                            Dynamically changes

    """
    def __init__(self, speed=6, hp=6, image='../elephant.jpg', invincibility=60 * 1.5):
        super().__init__(ms=6, luck=6, attack=6,
                         image=image, hp=hp,
                         ih=80, iw=80,
                         isGLRL=False)

        self.image = pygame.image.load(image).convert()
        self.image.set_colorkey(WHITE)
        self.image = pygame.transform.scale(self.image, (self.iw, self.ih))

        self.rect = self.image.get_rect()
        self.speed = speed
        self.inv, self.max_inv = invincibility, invincibility

    def reset_inv(self):
        self.inv = self.max_inv

    def lose_inv(self, value=1):
        self.inv -= value

    def update(self, key, key_comb):
        """controls player's movement

        Args:
            key (tuple): a tuple of int containing player's key strokes
            key_comb (tuple): the key combination the player uses,
                              either direction keys or \"A\" & \"D\"
        """
        if key_comb == (K_LEFT, K_RIGHT) or (K_RIGHT, K_LEFT):
            if key[K_LEFT]:
                self.moveLeft(self.speed)
            if key[K_RIGHT]:
                self.moveRight(self.speed, WIDTH)
        elif key_comb == (K_a, K_d) or (K_d, K_a):
            if key[K_a]:
                self.moveLeft(self.speed)
            if key[K_d]:
                self.moveRight(self.speed, WIDTH)
