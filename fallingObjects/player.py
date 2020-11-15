import pygame
from .constants import *
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
        direction (int):    where the player is facing at
                            1 for the right, -1 for the left
    """

    def __init__(self, image, speed=6, hp=6, invincibility=60 * 1.5):
        super(Player, self).__init__(luck=6, attack=6,
                                     ms=speed, image=image, hp=hp,
                                     ih=80, iw=80)

        self.image = pygame.image.load(image).convert()
        self.image.set_colorkey(WHITE)
        self.image = pygame.transform.scale(self.image, (self.iw, self.ih))

        self.rect = self.image.get_rect()
        self.inv, self.max_inv = invincibility, invincibility
        self.direction = -1

    def init(self, deviation: int):
        """set up player's initial position
        accepts future extension

        Args:
            deviation (int): the distance player is placed from the center of screen
                             positive for the right, negative for the left
        """
        self.rect.centerx = WIDTH / 2 + deviation
        self.rect.bottom = HEIGHT + 20

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
                if self.direction == 1:
                    self.image = pygame.transform.flip(self.image, True, False)
                    self.direction *= -1
                self.moveLeft(self.ms)
            if key[K_RIGHT]:
                if self.direction == -1:
                    self.image = pygame.transform.flip(self.image, True, False)
                    self.direction *= -1
                self.moveRight(self.ms, WIDTH)
        elif key_comb.__eq__((K_a, K_d)):
            if key[K_a]:
                self.moveLeft(self.ms)
            if key[K_d]:
                self.moveRight(self.ms, WIDTH)


class Players(pygame.sprite.Group):
    """Container class that accepts any number of player object
    Batch process actions involving player object.

    This class is currently unused because this section of game does not require
    multiplayer feature.
    """

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
