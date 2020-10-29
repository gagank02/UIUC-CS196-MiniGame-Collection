import pygame
from random import randint
from constants import *


class Drop_Block(pygame.sprite.Sprite):
    def __init__(self, *groups):
        super(Drop_Block, self).__init__()
        self.speed = 2
        '''print('Block generated!')'''

        # create a rectangular surface
        super().__init__(*groups)
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

    def update(self):  # TODO the following print statement both are not called
        print(self.rect.top)
        while self.rect.top < HEIGHT:
            self.rect.move_ip(0, self.speed)
            print(self.rect)
            self.speed **= 2
        self.kill()
