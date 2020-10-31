import pygame
from player.player import Player
from fallingObjects.constants import *
from fallingObjects.all_elements import Drop_Block, UI
from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT,
    MOUSEMOTION,
    MOUSEBUTTONUP,
    MOUSEBUTTONDOWN
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

    # block some of the events to make sure the important ones don't get dropped
    events_blocked = [MOUSEMOTION, MOUSEBUTTONUP, MOUSEBUTTONDOWN]
    pygame.event.set_blocked(events_blocked)

    # customize userevent (add drop blocks)
    ADD_DROP_BLOCKS = pygame.USEREVENT + 1
    pygame.time.set_timer(ADD_DROP_BLOCKS, BLOCK_SPAWN_FREQUENCY)

    # initialize player, drop blocks, and their group
    player = Player()
    player.image = pygame.transform.scale(player.image, (80, 80))
    player.rect = player.image.get_rect()
    player.rect.centerx = screen_rect.centerx  # set player's initial pos at the bottom center of screen
    player.rect.bottom = HEIGHT + 30
    invincible = 120  # give player a 2-sec invincibility at the beginning of the game

    drop_blocks = pygame.sprite.Group()
    all_sprites = pygame.sprite.Group()
    all_sprites.add(player)

    # initialize the indicator of player's HP
    player_UI_HP = UI.HP(player.hp, FONT['font'], FONT['size'])
    player_UI_HP.render()
    print(player_UI_HP.rect)

    game_over = False

    while not game_over:
        pygame.time.Clock().tick(60)  # screen refreshes every 60 milliseconds

        for event in pygame.event.get():
            if event.type == KEYDOWN and event.key == K_ESCAPE:
                print('Game exited by player')
                game_over = True
            elif event.type == QUIT:
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

        screen.blit(player_UI_HP.surf, player_UI_HP.rect)

        # player loses 1 hp when hit
        if pygame.sprite.spritecollideany(player, drop_blocks) and invincible <= 0:
            player.hp -= 1
            pygame.time.Clock().tick(5)  # the timeflow reduces slightly to respond for the collision
            invincible = 60 * 1.5  # give player a 1.5-sec invincibility when hit
            player_UI_HP.update(player.hp)

        if player.hp <= 0:
            player.kill()
            game_over = True

        '''these are essentially update() function of Player class
        Player class did not implement such function, so I just put it explicitly
        these should be deleted if Player class did realize update() in the future
        '''
        key = pygame.key.get_pressed()
        if key[K_LEFT]:
            player.moveLeft(player.speed)
        if key[K_RIGHT]:
            player.moveRight(player.speed)

        drop_blocks.update()

        pygame.display.flip()

        invincible -= 1  # each game loop invincible is subtracted by 1. If below 0 player is not invincible

    pygame.quit()
