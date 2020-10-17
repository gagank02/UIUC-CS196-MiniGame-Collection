import pygame
from random import randint
from fallingObjects.constants import *


class Drop_Block(pygame.sprite.Sprite):
    def __init__(self, *groups):
        super(Drop_Block, self).__init__()

        # create a rectangular surface
        self.surf = pygame.Surface((15, 30))
        # fill the surface with #FFFFFF
        self.surf.fill((255, 255, 255))
        # determine the spawnpoint of the blocks
        self.rect = self.surf.get_rect(
            center=(
                randint(0, WIDTH),
                randint(-50, -20)
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
