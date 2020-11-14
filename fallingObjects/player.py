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
        hp (int):           the number of times the player can collide with falling objects
        image (pygame.Surface): 
        rect (pygame.Rect): Rect object representing the spatial properties of player
        max_inv (int):      maximum duration of player's invincibility
                            Remains unchanged once set
        inv (int):          duration of invincibility after player is hit or spawns (in ticks)
                            Dynamically changes

    """
    def __init__(self, speed=6, hp=6, image='../elephant.jpg', invincibility=60 * 1.5):
        super().__init__(luck=6, attack=6,
                         ms=speed, image=image, hp=hp,
                         ih=80, iw=80,
                         isGLRL=False)

        self.image = pygame.image.load(image).convert()
        self.image.set_colorkey(WHITE)
        self.image = pygame.transform.scale(self.image, (self.iw, self.ih))

        self.rect = self.image.get_rect()
        self.inv, self.max_inv = invincibility, invincibility

    def lose_hp(self, value=1):
        self.hp -= value

    def reset_inv(self):
        self.inv = self.max_inv

    def lose_inv(self, value=1):
        self.inv -= value

    def is_dead(self):
        """Returns True is player runs out of HP"""
        return self.hp <= 0

    def update(self, key, key_comb):
        """controls player's movement

        Args:
            key (tuple): a tuple of int containing player's key strokes
            key_comb (tuple): the key combination the player uses,
                              either direction keys or \"A\" & \"D\"
        """
        if key_comb.__eq__((K_LEFT, K_RIGHT)):
            if key[K_LEFT]:
                self.moveLeft(self.ms)
            if key[K_RIGHT]:
                self.moveRight(self.ms, WIDTH)
        elif key_comb.__eq__((K_a, K_d)):
            if key[K_a]:
                self.moveLeft(self.ms)
            if key[K_d]:
                self.moveRight(self.ms, WIDTH)


class Players(pygame.sprite.Group):
    def __init__(self, *players):
        super(Players, self).__init__(self)
        self.add(*players)

    def lose_hp(self, value=1):
        for s in self.sprites():
            s.lose_hp()

    def lose_inv(self, value=1):
        for s in self.sprites():
            s.lose_inv()

    def reset_inv(self):
        for s in self.sprites():
            s.reset_inv()

    def is_anyone_dead(self):
        for s in self.sprites():
            if s.is_dead():
                return True
        return False
