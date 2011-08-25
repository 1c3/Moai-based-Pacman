--
--------------------------------------------------------------------------------
--         FILE:  GameConfig.lua
--        USAGE:  ./GameConfig.lua 
--  DESCRIPTION:  
--      OPTIONS:  ---
-- REQUIREMENTS:  ---
--         BUGS:  ---
--        NOTES:  ---
--       AUTHOR:   (), <>
--      COMPANY:  
--      VERSION:  1.0
--      CREATED:  08/24/2011 21:50:05 CST
--     REVISION:  ---
--------------------------------------------------------------------------------
--

require "media/tiledmap2"
require "Velocity"
require "Vector2"

TILE_SIZE = SCREEN_WIDTH / map.width

GAME_ENTITY_SIZE = TILE_SIZE

PACMAN_ID = "pacman"
GHOST_ID_BLUE = 1
GHOST_ID_RED = 2
GHOST_ID_GREEN = 3
GHOST_ID_YELLOW = 4

-- a VERY VERY IMPORTANT THING, the moving distance per frame must be EXACTLY divded by TILE_SIZE
PACMAN_SPEED_PER_FRAME = TILE_SIZE / 5
PACMAN_SPEED = PACMAN_SPEED_PER_FRAME * FRAMES_PER_SECOND 

-- ANOTHER IMPORTANT THING, evade speed must be EXACTLY divided by purse speed
GHOST_PURSUE_SPEED_PER_FRAME = TILE_SIZE / 24
GHOST_EVADE_SPEED_PER_FRAME = TILE_SIZE / 48
GHOST_PURSUE_SPEED = GHOST_PURSUE_SPEED_PER_FRAME * FRAMES_PER_SECOND
GHOST_EVADE_SPEED = GHOST_EVADE_SPEED_PER_FRAME * FRAMES_PER_SECOND

GHOST_BLUE_STANDBY_TIME = 0
GHOST_RED_STANDBY_TIME = 0
GHOST_GREEN_STANDBY_TIME = 5
GHOST_YELLOW_STANDBY_TIME = 10

PACMAN_SPAWN_POINT = Vector2( 14, 24 )
GHOST_BLUE_SPAWN_POINT = Vector2( 13, 16 )
GHOST_RED_SPAWN_POINT = Vector2( 16, 16 )
GHOST_GREEN_SPAWN_POINT = Vector2( 14, 16 )
GHOST_YELLOW_SPAWN_POINT = Vector2( 15, 16 )

PACMAN_SPAWN_DIRECTION = DIRECTION_LEFT
GHOST_BLUE_SPAWN_DIRECTION = DIRECTION_LEFT
GHOST_RED_SPAWN_DIRECTION = DIRECTION_RIGHT
GHOST_GREEEN_SPAWN_DIRECTION = DIRECTION_LEFT
GHOST_YELLOW_SPAWN_DIRECTION = DIRECTION_RIGHT

GHOST_STANDBY_TIME_AFTER_RESPAWN = 2
