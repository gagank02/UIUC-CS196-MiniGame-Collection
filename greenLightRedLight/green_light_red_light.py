import pygame, sys, time, random
sys.path.insert(0, '..')
from entity.entity import Entity
from itertools import cycle
from greenLightRedLight import lights
from greenLightRedLight import clouds

from pygame.locals import (
    K_LEFT,
    K_RIGHT,
    K_a,
    K_d,
    K_ESCAPE,
    KEYDOWN,
    QUIT,
)

WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
GREEN = (34, 139, 34)
BLUE = (135, 235, 250)

SCREEN_WIDTH = 1024
SCREEN_HEIGHT = 800

pygame.init()
font = pygame.font.Font('freesansbold.ttf', 100)

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Green Light Red Light")
screen_rect = screen.get_rect()

# Events
LIGHT_EVENT = pygame.USEREVENT + 0
pygame.time.set_timer(LIGHT_EVENT, random.randint(1000,3000))

ADD_CLOUD = pygame.USEREVENT + 1
pygame.time.set_timer(ADD_CLOUD, 2000)


# Create a runner
# runner = Entity(5, 5, 5, 5, 'minotaur.png', 100, 100)
runner = Entity(5, 5, 5, 5, 'greenLightRedLight/minotaur.png', 100, 100)
runner.rect.x = 0
runner.rect.y = SCREEN_HEIGHT - 100


# # Sprite groups
all_sprites = pygame.sprite.Group()
all_clouds = pygame.sprite.Group()
all_sprites.add(runner)


clock = pygame.time.Clock()

# Main function
def GLRL_main():
    # Create screen
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
    screen_rect = screen.get_rect()

    running = True

    # Runner attributes
    hp = float(runner.hp)
    ms = float(runner.ms)
    luck = runner.luck

    passed_time = 0
    start_time = pygame.time.get_ticks()

    # Creates lights
    green = lights.Green()
    red = lights.Red()

    count = 0 # 1 = red, everything else = green

    # Main loop
    while running:
        # Look for each event in the queue
        for event in pygame.event.get():
            # Check if user hit a key
            if event.type == KEYDOWN:
                # If esc, QUIT
                if event.key == K_ESCAPE:
                    running = False
                    display_game_over_screen()
                # If window close button, QUIT
                elif event.key == QUIT:
                    running = False
                    display_game_over_screen()
                elif hp <= 0:
                    running = False
                    display_game_over_screen()
            if event.type == ADD_CLOUD:
                new_cloud = clouds.Cloud()
                all_clouds.add(new_cloud)
                all_sprites.add(new_cloud)
            if event.type == LIGHT_EVENT:
                count += random.randint(0,10 + int((.2 * luck))) # Increases range by luck
                if count % 2 == 0:
                    count = 1

        passed_time = pygame.time.get_ticks() - start_time
        # reaction_time = passed_time + 250

        # Get set of pressed keys
        pressed_keys = pygame.key.get_pressed()
        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
            runner.moveRight(10 + (.2 * ms), SCREEN_WIDTH) # Base speed * 20% of ms
            if count == 1:
                # print("current hp: " + str(hp))
                hp -= .025
        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
            runner.moveLeft(10 + (.2 * ms)) # Base speed * 20% of ms
            if count == 1:
                # print("current hp: " + str(hp))
                hp -= .025

        all_clouds.update()

        screen.fill(BLUE)

        # Adds stationary floor
        floor_surf = pygame.Surface((SCREEN_WIDTH, 50))
        floor_surf.fill(GREEN)
        screen.blit(floor_surf, (0, SCREEN_HEIGHT - 50))

        runner.rect.clamp_ip(screen_rect)

        # Draw sprites
        for entity in all_sprites:
            screen.blit(entity.image, entity.rect)

        # Displays total time
        text = font.render("Score: " + str(int(passed_time/1000)) + "s", True, BLACK)
        screen.blit(text, (50, 50))

        # Displays HP
        hp_text = font.render("HP: " + str(round(hp, 2)), True, BLACK)
        screen.blit(hp_text, (SCREEN_WIDTH - 400, 50))

        # Alternates between GO and STOP
        if count == 1:
            screen.blit(red.red_surface, red.red_rect)
        else:
            screen.blit(green.green_surface, green.green_rect)

        # Check death
        if hp <= 0:
            running = False
            display_game_over_screen()

        # Flip everything to display
        pygame.display.flip()
        clock.tick(60)

    pygame.quit()

def display_game_over_screen():
    screen = pygame.display.set_mode((1280, 780))
    from gameOver import game_over
    game_over()

if __name__ == '__main__':
    GLRL_main()
