import pygame
import fallingObjects.constants
import card.card as card


class Entity(pygame.sprite.Sprite):
    """Class Entity

    Attributes:
        hp (int): The amount of health points your player has
            - if hp is 0, the entity will be killed off
        ms (Any): How fast your player can move
        luck (int): How lucky your player is
        attack (int): How much damage your player can deal
        image (pygame.Surface): The image/sprite for your player
        ih (int): How tall your player is (in px)
        iw (int): How wide your player is (in px)

        rect (pygame.Rect): representing entity's spatial properties
        inv (int): duration of invincibility after player is hit or player spawns (in tick)
        direction (int): where entity is facing at
                        -1 for the left, 1 for the right

    """
    def __init__(self, hp=0, ms=0, luck=0, attack=0, image=None, ih=0, iw=0, crd=None):
        """The last optional parameter `crd` is a tuple containing 4 stats of entity in turn.
        if it exists, it will apply to or override the corresponding class members.

        """
        super(Entity, self).__init__()

        self.image = pygame.image.load(image)
        self.image = pygame.transform.scale(self.image, (iw, ih))
        self.rect = self.image.get_rect()

        self.hp = hp
        self.ms = ms
        self.luck = luck
        self.attack = attack
        self.ih = ih
        self.iw = iw
        self.inv = 1.5 * 60
        self.direction = -1

        if crd is not None:
            try:
                for i in range(len(crd)):
                    [self.hp, self.ms, self.luck, self.attack][i] = crd[i]
            except ValueError as e:
                print('Packaged entity stats broken ({0})'.format(e))

    def locate(self, deviation: int):
        """sets up entity's initial position

        Args:
            deviation (int): the distance entity is placed from the center of screen
        """
        self.rect.centerx = fallingObjects.constants.WIDTH / 2 + deviation
        self.rect.bottom = fallingObjects.constants.HEIGHT

    # If-statements refer to off-screen checks
    def moveUp(self, pixels):
        self.rect.y -= pixels
        if self.rect.y < 0:
            if self.hp == 0:
                self.kill()
            else:
                self.rect.y = 0

    def moveDown(self, pixels, height):
        self.rect.y += pixels
        if self.rect.y > (height - self.ih):
            if self.hp == 0:
                self.kill()
            else:
                self.rect.y = (height - self.ih)

    def moveLeft(self, pixels):
        self.rect.x -= pixels
        if self.rect.x < 0:
            if self.hp == 0:
                self.kill()
            else:
                self.rect.x = 0

    def moveRight(self, pixels, width):
        self.rect.x += pixels
        if self.rect.x > (width - self.iw):
            if self.hp == 0:
                self.kill()
            else:
                self.rect.x = (width - self.iw)

    def lose_hp(self, value=1):
        self.hp -= value

    def reset_inv(self):
        self.inv = 1.5 * 60

    def lose_inv(self):
        self.inv -= 1

    def is_dead(self) -> bool:
        return self.hp <= 0

    def updateFallingObjects(self, key, key_comb):
        """controls player's movement

        Args:
            key (tuple): a tuple of int containing player's key strokes
            key_comb (tuple): the key combination the player uses,
                              either direction keys or \"A\" & \"D\"
        """
        if key_comb.__eq__((pygame.K_LEFT, pygame.K_RIGHT)):
            if key[pygame.K_LEFT]:
                if self.direction == 1:
                    self.image = pygame.transform.flip(self.image, True, False)
                    self.direction *= -1
                self.moveLeft(self.ms)
            if key[pygame.K_RIGHT]:
                if self.direction == -1:
                    self.image = pygame.transform.flip(self.image, True, False)
                    self.direction *= -1
                self.moveRight(self.ms, fallingObjects.constants.WIDTH)
        elif key_comb.__eq__((pygame.K_a, pygame.K_d)):
            if key[pygame.K_a]:
                self.moveLeft(self.ms)
            if key[pygame.K_d]:
                self.moveRight(self.ms, fallingObjects.constants.WIDTH)
