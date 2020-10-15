import pygame
import sys
import random
from random import randint

RED = (255, 0, 0)
BLUE = (0, 0, 255)
BACKGROUND_COLOR = (255, 255, 255)
WIDTH = 1000
HEIGHT = 800

player_size = 50
player_pos = [WIDTH / 2, HEIGHT - 2 * player_size]

block_size = 30
block_pos = [randint(0, WIDTH - block_size), 0]
block_list = [block_pos]

SPEED = 5


def drop_blocks(block_list):
    delay = random.random()
    if len(block_list) < 10 and delay < 0.1:
        x_pos = random.randint(0, WIDTH - block_size)
        y_pos = 0
        block_list.append([x_pos, y_pos])


def draw_blocks(block_list):
    for block_pos in block_list:
        pygame.draw.rect(screen, BLUE, (block_pos[0], block_pos[1], block_size, block_size))


def update_block_positions(block_list):
    for idx, block_pos in block_list:
        if 0 <= block_pos[1] < HEIGHT:
            block_pos[1] += SPEED
        else:
            block_list.pop(idx)


if __name__ == '__main__':
    pygame.init()
    screen = pygame.display.set_mode((WIDTH, HEIGHT))

    game_over = False

    while not game_over:

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                sys.exit()

