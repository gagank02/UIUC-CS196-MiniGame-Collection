import random
import pygame
pygame.init()

# Colors available to use in generator
WHITE = (255, 255, 255)
GREY = (20, 20, 20)
BLACK = (0, 0, 0)
PURPLE = (100, 0, 100)
RED = (255, 0, 0)

# Maze is as big as window size
size = (1402, 701)
screen = pygame.display.set_mode(size)

pygame.display.set_caption("Maze Generator")

done = False

# Used to determine speed of generator
clock = pygame.time.Clock()

# Determines size of each square in grid
# Rounds with 'int()' to keep a perfect grid
width = 25
cols = int(size[0] / width)
rows = int(size[1] / width)

stack = []

# Class for a singular grid cell
class Cell():
    def __init__(self, x, y):

        # 'x' and 'y' designate coordinate points on the grid
        global width
        self.x = x * width
        self.y = y * width
        
        # Default values for checking if the cell is current and has been drawn (visited)
        self.visited = False
        self.current = False
        
        # Default for maze walls in the given cell
        # self.walls = [top, right, bottom, left]
        self.walls = [True, True, True, True]
        
        # Lists cells (neighbors) directly surrounding a given cell
        self.neighbors = []
        
        # States grid positions of given neighbor cells
        self.top = 0
        self.right = 0
        self.bottom = 0
        self.left = 0
        
        # States grid position of next cell to move to
        self.next_cell = 0
    
    def draw(self):
        
        # If it's the current cell: turn white
        # If the cell has been visited: turn black
        if self.current:
            pygame.draw.rect(screen, WHITE, (self.x, self.y, width, width))
        elif self.visited:
            pygame.draw.rect(screen, BLACK, (self.x, self.y, width, width))
        
            # If there should be a wall: draw a red line the same width of the cell
            # If-statements as follow: if top, if right, if bottom, if left
            # What each argument means: pygame.draw.line(surface, color, start, end, width)
            if self.walls[0]:
                pygame.draw.line(screen, RED, (self.x, self.y), ((self.x + width), self.y), 1)
            if self.walls[1]:
                pygame.draw.line(screen, RED, ((self.x + width), self.y), ((self.x + width), (self.y + width)), 1)
            if self.walls[2]:
                pygame.draw.line(screen, RED, ((self.x + width), (self.y + width)), (self.x, (self.y + width)), 1)
            if self.walls[3]:
                pygame.draw.line(screen, RED, (self.x, (self.y + width)), (self.x,self.y), 1)
    
    def checkNeighbors(self):
        
        # Checks to see if there is a neighbor on the respective side of the current cell
        # If there is a neighbor: assign corresponding variable with grid position
        if int(self.y / width) - 1 >= 0:
            self.top = grid[int(self.y / width) - 1][int(self.x / width)]
        if int(self.x / width) + 1 <= cols - 1:
            self.right = grid[int(self.y / width)][int(self.x / width) + 1]
        if int(self.y / width) + 1 <= rows - 1:
            self.bottom = grid[int(self.y / width) + 1][int(self.x / width)]
        if int(self.x / width) - 1 >= 0:
            self.left = grid[int(self.y / width)][int(self.x / width) - 1]
        
        # Adds all unvisited neighbor cells to a list
        if self.top != 0:
            if self.top.visited == False:
                self.neighbors.append(self.top)
        if self.right != 0:
            if self.right.visited == False:
                self.neighbors.append(self.right)
        if self.bottom != 0:
            if self.bottom.visited == False:
                self.neighbors.append(self.bottom)
        if self.left != 0:
            if self.left.visited == False:
                self.neighbors.append(self.left)
        
        # If the list isn't empty: move to any unvisited neighbor cell otherwise return false <SPECIFY AFTER READING MORE CODE>
        if len(self.neighbors) > 0:
            self.next_cell = self.neighbors[random.randrange(0, len(self.neighbors))]
            return self.next_cell
        else:
            return False

def removeWalls(current_cell,next_cell):

    # 'x' and 'y' refer to which wall
    # Negative 'x' and 'y' mean right and bottom respectively
    # Positive 'x' and 'y' mean left and top respectively
    x = int(current_cell.x / width) - int(next_cell.x / width)
    y = int(current_cell.y / width) - int(next_cell.y / width)
    
    # Removes wall specified by 'x' and 'y' of both the current and next cell
    if x == -1:
        current_cell.walls[1] = False
        next_cell.walls[3] = False
    elif x == 1:
        current_cell.walls[3] = False
        next_cell.walls[1] = False
    elif y == -1:
        current_cell.walls[2] = False
        next_cell.walls[0] = False
    elif y == 1:
        current_cell.walls[0] = False
        next_cell.walls[2] = False

grid = []

# Makes 'grid' two dimensional
for y in range(rows):
    grid.append([])
    for x in range(cols):
        grid[y].append(Cell(x,y))

current_cell = grid[0][0]
next_cell = 0

# Main Program Loop
while not done:

    # Main event loop
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            done = True
    
    screen.fill(BLACK)
    
    current_cell.visited = True
    current_cell.current = True
    
    for y in range(rows):
        for x in range(cols):
            grid[y][x].draw()
    
    next_cell = current_cell.checkNeighbors()
    
    if next_cell != False:
        current_cell.neighbors = []
        
        stack.append(current_cell)
        
        removeWalls(current_cell,next_cell)
        
        current_cell.current = False
        
        current_cell = next_cell
    
    elif len(stack) > 0:
        current_cell.current = False
        current_cell = stack.pop()
        
    elif len(stack) == 0:
        grid = []
        
        for y in range(rows):
            grid.append([])
            for x in range(cols):
                grid[y].append(Cell(x,y))
        
        current_cell = grid[0][0]
        next_cell = 0
    
    pygame.display.flip()
    
    clock.tick(60)

pygame.quit()
