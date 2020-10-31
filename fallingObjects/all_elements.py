import pygame
from random import randint
from fallingObjects.constants import *


class Drop_Block(pygame.sprite.Sprite):
    def __init__(self):
        super(Drop_Block, self).__init__()

        # create a rectangular surface
        self.surf = pygame.Surface((15, 30))
        # fill the surface with #FFFFFF
        self.surf.fill(WHITE)
        # determine the spawnpoint of the blocks
        self.rect = self.surf.get_rect(
            center=(
                randint(0, WIDTH),
                randint(-150, -20)
            )
        )
        self.speed = 2

    def update(self):
        # print(self.rect.top)
        self.rect.move_ip(0, self.speed)
        self.speed = self.speed * ACCELERATION_COEFFICIENT
        if self.rect.top > HEIGHT:
            self.kill()

    '''The falling codes were an alternative when the current codes in update() were broken,
    which let falling objects move under a constant velocity'''
    # def update(self):
    #     self.rect.move_ip(0, self.speed)
    #     if self.rect.top > HEIGHT:
    #         self.kill()

    def change_color(self, color):
        self.surf.fill(color)


class UI:
    class HP:
        """HP class

        Attributes:
            hp: (int) the value to be displayed
            font : (pygame.font.Font) font object that initiates the font properties
            surf: (pygame.Surface) surface object where the text is rendered
            rect: (pygame.Rect) rectangle object representing the properties of surface
        """
        def __init__(self, init_hp, font, size):
            self.hp = init_hp
            self.font = pygame.font.SysFont(font, size)
            self.surf = None
            self.rect = None

        """initiate self.surf and self.rect"""
        def render(self):
            self.surf = self.font.render(f'HP: {self.hp}', True, WHITE)
            self.rect = self.surf.get_rect(height=40, width=40)

        def update(self, new_hp):
            self.surf = self.font.render(f'HP: {new_hp}', True, WHITE)
            self.rect = self.surf.get_rect(height=40, width=40)
