#! /usr/bin/python3
# -*- coding: utf-8 -*-

"""
In PyCharm, this action is not needed since it automatically adds the path of the whole project to sys.path

 - However, when directly executing this script via python interpreter, that will not be added, which triggers an
   ImportError.
 - Ultimately the project should be running in *main.py* located on the root of our project repo. This issue should
   not come into effect then.

"""
import sys
sys.path.append('../')

import pygame
from player import Player, Players
from constants import *
from all_elements import Drop_Block, Start, HP, GameOver

from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_a,
    K_d,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)


def foo():
    """An empty function

    This function does not do anything. It is for convenience of checking
    the presence of ImportError
    """
    pass


def main():
    pygame.init()

    # create the screen to display game
    screen = pygame.display.set_mode((WIDTH, HEIGHT))
    screen_rect = screen.get_rect()

    # set window name to "Falling Objects"
    pygame.display.set_caption('Falling Objects')

    # initialize player, drop blocks, and their group
    player_a = Player(speed=10, hp=3, invincibility=60 * 1.5)
    player_a.rect = player_a.image.get_rect()
    player_a.rect.centerx = screen_rect.centerx - 80  # set player's initial pos at the bottom center of screen
    player_a.rect.bottom = HEIGHT + 5
    player_b = Player(speed=10, hp=3, invincibility=60 * 1.5)
    player_b.rect = player_b.image.get_rect()
    player_b.rect.centerx = screen_rect.centerx + 80
    player_b.rect.bottom = HEIGHT + 5

    drop_blocks = pygame.sprite.Group()
    all_sprites = pygame.sprite.Group()
    all_players = Players()
    all_sprites.add(player_a, player_b)
    all_players.add(player_a, player_b)

    '''initialize UIs'''
    # initialize the commence indicator
    game_UI_start = Start()
    # initialize the indicator of player's HP
    player_a_UI_HP = HP(player_a.hp)
    player_a_UI_HP.render(f'Player A HP: {player_a.hp}')
    player_b_UI_HP = HP(player_b.hp)
    player_b_UI_HP.render(f'Player B HP: {player_b.hp}')
    # initialize Game Over indicator
    game_UI_gameover = GameOver(FONT['game_over']['size'], FONT['game_over']['color'])
    game_UI_presskey = GameOver(FONT['game_over']['size'] - 20, (220, 100, 100))  # <- press-key text is smaller

    '''import myFont'''
    myFont = pygame.font.SysFont("monospace", 35)

    '''initialize score'''
    score = 0

    '''Intro of the game
    The screen displays "Wait..." and "GO" in turn
    This intro lasts for 3 secs.
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

        for player in all_players:
            screen.blit(player.surf, player.rect)
        pygame.display.flip()

    # customize userevent (add drop blocks)
    ADD_DROP_BLOCKS = pygame.USEREVENT + 1
    pygame.time.set_timer(ADD_DROP_BLOCKS, BLOCK_SPAWN_FREQUENCY)

    """ main loop commences """
    game_over = False

    while not game_over:
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        '''player loses 1 hp when hit.'''
        for player in all_players:
            if pygame.sprite.spritecollideany(player, drop_blocks) and player.inv <= 0:
                player.lose_hp()
                pygame.time.Clock().tick(5)  # timeflow slows down slightly to respond for the collision
                player.reset_inv()  # give player a 1.5-sec invincibility when hit
        if pygame.sprite.spritecollideany(player_a, drop_blocks) and player_a.inv <= 0:
            player_a_UI_HP.hp -= 1
        if pygame.sprite.spritecollideany(player_b, drop_blocks) and player_b.inv <= 0:
            player_b_UI_HP.hp -= 1

        '''if player runs out of HP, declare that the game is over.'''
        if all_players.is_anyone_dead():
            game_UI_gameover.render('Game Over')
            game_UI_gameover.set_rect((WIDTH / 2, HEIGHT / 2))
            game_UI_presskey.render('Press Enter to exit')
            game_UI_presskey.set_rect((WIDTH / 2, HEIGHT / 2 + 40))

            screen.blit(game_UI_gameover.surf, game_UI_gameover.rect)
            screen.blit(game_UI_presskey.surf, game_UI_presskey.rect)
            for event in pygame.event.get():
                if (event.type == KEYDOWN and event.key == K_RETURN) or event.type == QUIT:
                    print('Game Over')
                    game_over = True
            pygame.display.flip()
            continue

        for event in pygame.event.get():
            if (event.type == KEYDOWN and event.key == K_ESCAPE) or event.type == QUIT:
                print('Game exited by player')
                game_over = True
            elif event.type == ADD_DROP_BLOCKS:
                new_drop_block = Drop_Block()
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
        screen.blit(player_b_UI_HP.surf, (0, 30))

        '''update the state of elements'''
        drop_blocks.update()
        key = pygame.key.get_pressed()

        '''set score board'''
        player_a.update(key=key, key_comb=(K_LEFT, K_RIGHT))
        player_b.update(key=key, key_comb=(K_a, K_d))
        text = "Score:" + str(score)
        label = myFont.render(text, 1, (255, 255, 0))
        screen.blit(label, (550, 450))

        if player_a.inv <= 0 and player_a.hp > 1:
            player_a_UI_HP.update(WHITE)     # When player is invincible, HP indicator turns to red
        else:
            player_a_UI_HP.update(RED)       # The indicator remains red if player's HP is low (i.e. HP == 1)
        if player_b.inv <= 0 and player_b.hp > 1:
            player_b_UI_HP.update(WHITE)
        else:
            player_b_UI_HP.update(RED)

        pygame.display.flip()

        all_players.lose_inv()  # <- each game loop player loses invincibility. If below 0 player is not invincible

    pygame.quit()


if __name__ == '__main__':
    main()
