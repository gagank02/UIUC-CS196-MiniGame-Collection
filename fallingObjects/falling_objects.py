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
from player import Player
from constants import *
from all_elements import Drop_Block, Start, HP, GameOver

from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    K_RETURN,
    KEYDOWN,
    QUIT,
)

'''ImportError often occurs,
therefore an empty function is added to test if there's an ImportError when importing this module
'''


def emptyfunc():
    pass


if __name__ == '__main__':
    pygame.init()

    # create the screen to display game
    screen = pygame.display.set_mode((700, 500))
    screen_rect = screen.get_rect()

    # set window name to "Falling Objects"
    pygame.display.set_caption('Falling Objects')

    # customize userevent (add drop blocks)
    ADD_DROP_BLOCKS = pygame.USEREVENT + 1
    pygame.time.set_timer(ADD_DROP_BLOCKS, BLOCK_SPAWN_FREQUENCY)

    # initialize player, drop blocks, and their group
    player = Player(speed=10, hp=2)
    player.rect = player.image.get_rect()
    player.rect.centerx = screen_rect.centerx  # set player's initial pos at the bottom center of screen
    player.rect.bottom = HEIGHT + 10

    drop_blocks = pygame.sprite.Group()
    all_sprites = pygame.sprite.Group()
    all_sprites.add(player)

    '''initialize UIs'''
    # initialize the commence indicator
    game_UI_start = Start()
    # initialize the indicator of player's HP
    player_UI_HP = HP(player.hp)
    player_UI_HP.render(f'HP: {player.hp}')
    # initialize Game Over indicator
    game_UI_gameover = GameOver(FONT['game_over']['size'])
    game_UI_presskey = GameOver(FONT['game_over']['size'] - 20)  # <- press-key text is smaller than that of game over

    # TODO the for loop below is not running
    for count in range(60*30+30, 0):
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        # initialize screen's background and project sprites to the screen
        screen.fill(BACKGROUND_COLOR)
        if count > 60*2-30:
            game_UI_start.render('Wait...')
            game_UI_start.set_rect((WIDTH / 2, HEIGHT / 2))
            screen.blit(game_UI_start.surf, game_UI_start.rect)
        elif 10 < count < 60:
            game_UI_start.render('GO')
            game_UI_start.set_rect((WIDTH / 2, HEIGHT / 2))
            screen.blit(game_UI_start.surf, game_UI_start.rect)

        screen.blit(player.surf, player.rect)
        pygame.display.flip()

    game_over = False
    invincible = 120  # give player a 2-sec invincibility at the beginning of the game

    while not game_over:
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        # player loses 1 hp when hit
        if pygame.sprite.spritecollideany(player, drop_blocks) and invincible <= 0:
            player.hp -= 1
            player_UI_HP.hp -= 1
            pygame.time.Clock().tick(5)  # timeflow slows down slightly to respond for the collision
            invincible = 60 * 1.5  # give player a 1.5-sec invincibility when hit

        # if player runs out of HP, declare that the game is over.
        if player.hp <= 0:
            game_UI_gameover.render('Game Over')
            game_UI_gameover.set_rect((WIDTH / 2, HEIGHT / 2))
            game_UI_presskey.render('Press Enter to exit')
            game_UI_presskey.set_rect((WIDTH / 2, HEIGHT / 2 + 40))

            screen.blit(game_UI_gameover.surf, game_UI_gameover.rect)
            screen.blit(game_UI_presskey.surf, game_UI_presskey.rect)
            for event in pygame.event.get():
                if (event.type == KEYDOWN and event.key == K_RETURN) or event.type == QUIT:
                    print('Game exited by player')
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

        # initialize screen's background and project sprites to the screen
        screen.fill(BACKGROUND_COLOR)
        for item in all_sprites:
            try:
                screen.blit(item.surf, item.rect)
            except AttributeError:
                screen.blit(item.image, item.rect)

        screen.blit(player_UI_HP.surf, (0, 0))

        '''these are essentially update() function of Player class
        Player class did not implement such function, so I just put it explicitly
        these should be deleted if Player class did realize update() in the future
        '''
        key = pygame.key.get_pressed()
        if key[K_LEFT]:
            player.moveLeft(player.speed)
        if key[K_RIGHT]:
            player.moveRight(player.speed, WIDTH)

        # update the state of elements
        drop_blocks.update()
        if invincible <= 0 and player.hp > 1:
            player_UI_HP.update(WHITE)
        else:
            player_UI_HP.update(RED)

        pygame.display.flip()

        invincible -= 1  # each game loop invincible is subtracted by 1. If below 0 player is not invincible

    pygame.quit()
