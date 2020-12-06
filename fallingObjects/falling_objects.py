#! /usr/bin/python3
# -*- coding: utf-8 -*-

"""
In PyCharm, this action is not needed since it automatically adds the path of the whole project to sys.path

 - However, when directly executing this script via python interpreter, that will not be added, which triggers an
   ImportError.
 - Ultimately the project should be running in *main.py* located on the root of our project repo. This issue should
   not come into effect then.

"""
import pygame
import random
import os
from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)
try:
    from entity.entity import Entity
    from fallingObjects.constants import *
    from fallingObjects.all_elements import Drop_Block, UI, Start, HP, GameOver
except (ImportError, ModuleNotFoundError):
    print('Proper search path not found\nAdding correct path to system path...')
    import sys
    current_path = os.path.abspath(os.path.dirname(__file__))
    root_path = os.path.split(current_path)[0]
    sys.path.append(root_path)
    from entity.entity import Entity
    from fallingObjects.constants import *
    from fallingObjects.all_elements import Drop_Block, UI, Start, HP, GameOver


def foo():
    """An empty function

    This function does not do anything. It is for convenience of checking
    the presence of `ImportError`
    """
    pass


def falling_objects_main():
    pygame.init()

    # initialize the screen
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    pygame.display.set_caption('Falling Objects')

    image_path = 'fallingObjects/resources/elephant.png' # Comment this out if running through this file
                                                         # Line 49 intended for main menu functionality

    # initialize player, drop blocks, and their group
    player_a = Entity(attack=6, ms=10, hp=3, image=image_path, iw=100, ih=70, luck=6)
    player_a.image.set_colorkey(WHITE)
    player_a.locate(0)

    drop_blocks = pygame.sprite.Group()
    all_sprites = pygame.sprite.Group()
    all_sprites.add(player_a)

    '''initialize UIs'''
    # initialize the commence indicator
    game_UI_start = Start()
    # initialize the indicator of player's HP
    player_a_UI_HP = HP(player_a.hp, 'Player A')
    player_a_UI_HP.render()
    # initialize the scoreboard
    score = 0
    """score (int): the score player earns during the gameplay"""
    scoreboard = UI('monospace', 35, YELLOW)
    scoreboard.font.set_bold(True)   # <- make scoreboard bold
    scoreboard.render(f'SCORE: {score}')
    # initialize Game Over indicator
    game_UI_gameover = GameOver(FONT['game_over']['size'], FONT['game_over']['color'])
    game_UI_presskey = GameOver(FONT['game_over']['size'] - 20, (220, 100, 100))  # <- press-key text is smaller

    '''Intro of the game
    The screen displays "Wait..." and "GO" in turn
    This lasts for 3 secs.
     '''
    for count in range(60 * 3 + 30, 0, -1):
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        # initialize screen's background and project sprites to the screen
        screen.fill(BACKGROUND_COLOR)
        if count > 60*2:
            game_UI_start.render('Wait...')
            game_UI_start.set_rect((WIDTH / 2, HEIGHT / 2))
            screen.blit(game_UI_start.surf, game_UI_start.rect)
        elif 10 < count < 60-20:
            game_UI_start.render('GO')
            game_UI_start.set_rect((WIDTH / 2, HEIGHT / 2))
            screen.blit(game_UI_start.surf, game_UI_start.rect)

        screen.blit(player_a.image, player_a.rect)
        pygame.display.flip()

    # customize userevent (add drop blocks)
    ADD_DROP_BLOCKS = pygame.USEREVENT + 1
    pygame.time.set_timer(ADD_DROP_BLOCKS, BLOCK_SPAWN_FREQUENCY)

    """ main loop commences """
    game_over = False
    count = 0

    while not game_over:
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        '''player loses 1 hp when hit.'''
        if pygame.sprite.spritecollideany(player_a, drop_blocks) and player_a.inv <= 0:
            player_a_UI_HP.lose_hp()
            # TODO actions when single player (a) is hit  (lines involving multiplayer feature are removed)
            player_a.lose_hp()
            pygame.time.Clock().tick(5)
            player_a.reset_inv()

        '''if player runs out of HP, declare that the game is over.'''
        if player_a.is_dead():
            game_UI_gameover.render('Game Over')
            game_UI_gameover.set_rect((WIDTH / 2, HEIGHT / 2))
            if count % 40 <= 20:
                game_UI_presskey.render('Press Enter to exit')
                game_UI_presskey.set_rect((WIDTH / 2, HEIGHT / 2 + 40))
                screen.blit(game_UI_presskey.surf, game_UI_presskey.rect)
            else:
                coverage = pygame.Surface((290, 41))
                coverage.fill(BACKGROUND_COLOR)
                coverage_rect = coverage.get_rect(topleft=(355, 270), size=(290, 41))
                screen.blit(coverage, coverage_rect)
            screen.blit(game_UI_gameover.surf, game_UI_gameover.rect)
            screen.blit(player_a_UI_HP.surf, (0, 0))
            for event in pygame.event.get():
                if (event.type == KEYDOWN and event.key == K_RETURN) or event.type == QUIT:
                    print('Game Over')
                    game_over = True
                    display_game_over_screen(str(score // 10))
            pygame.display.flip()
            count += 1
            continue

        '''handle game events'''
        for event in pygame.event.get():
            if (event.type == KEYDOWN and event.key == K_ESCAPE) or event.type == QUIT:
                print('Game exited by player')
                game_over = True
            elif event.type == ADD_DROP_BLOCKS:
                size = random.randint(20 * 0.5 * player_a.luck, 60 * 0.4 * player_a.luck)
                new_drop_block = Drop_Block(size)
                drop_blocks.add(new_drop_block)
                all_sprites.add(new_drop_block)

        '''draw screen's background and project sprites to screen'''
        screen.fill(BACKGROUND_COLOR)
        for item in all_sprites:
            try:
                screen.blit(item.surf, item.rect)
            except AttributeError:
                screen.blit(item.image, item.rect)

        screen.blit(player_a_UI_HP.surf, (0, 0))
        screen.blit(scoreboard.surf, (550, 0))

        '''update the state of elements'''
        drop_blocks.update()
        key = pygame.key.get_pressed()

        player_a.updateFallingObjects(key=key, key_comb=(K_LEFT, K_RIGHT))

        if player_a.inv <= 0 and player_a.hp > 1:
            player_a_UI_HP.update(WHITE)     # When player is invincible, HP indicator turns to red
        else:
            player_a_UI_HP.update(RED)       # The indicator remains red if player's HP is low (i.e. HP == 1)
        score += 1
        scoreboard.render(f'SCORE: {score // 10}')

        pygame.display.flip()

        player_a.lose_inv()

    pygame.quit()


def display_game_over_screen(score):
    pygame.display.set_mode((1280, 780))
    from gameOver import game_over
    game_over(score)


class RunAsScriptError(Exception):
    def __init__(self, dir_name):
        self.dir = dir_name

    def __str__(self):
        return f'{self.dir} is not supposed to be run as script'


if __name__ == '__main__':
    raise RunAsScriptError(os.path.split(__file__)[1])
