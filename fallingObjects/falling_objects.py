import pygame
from player.player import Player
from fallingObjects.constants import *
from fallingObjects.all_sprites import Drop_Block
from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_ESCAPE,
    KEYDOWN,
    QUIT
)


def emptyfunc():
    pass


if __name__ == '__main__':
    pygame.init()
    screen = pygame.display.set_mode((700, 500))
    screen_rect = screen.get_rect()

    # set window name to "Falling Objects"
    pygame.display.set_caption('Falling Objects')

    # customize userevent (add drop blocks)
    ADD_DROP_BLOCKS = pygame.USEREVENT + 1
    pygame.time.set_timer(ADD_DROP_BLOCKS, 500)

    # initialize player, drop blocks, and their group
    player = Player()
    player.image = pygame.transform.scale(player.image, (80, 80))
    player.re = player.image.get_rect()
    player.rect.centerx = screen_rect.centerx  # set player's initial pos at the bottom center of screen
    player.rect.bottom = HEIGHT

    drop_blocks = pygame.sprite.Group()
    all_sprites = pygame.sprite.Group()
    all_sprites.add(player)

    game_over = False

    while not game_over:
        pygame.time.Clock().tick(60)  # screen refreshes every 60 millisecond

        for event in pygame.event.get():
            if event.type == KEYDOWN and event.key == K_ESCAPE:
                game_over = True
            elif event.type == QUIT:
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
        if pygame.sprite.spritecollideany(player, drop_blocks):
            player.kill()
            game_over = True

        key = pygame.key.get_pressed()
        if key[K_LEFT]:
            player.moveLeft(player.speed)
        if key[K_RIGHT]:
            player.moveRight(player.speed)

        drop_blocks.update() 

        pygame.display.flip()

    pygame.quit()
