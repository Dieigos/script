-- Carregar Rayfield para a UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Criar Janela
local Window = Rayfield:CreateWindow({
    Name = "Project Slayers - Teste Oficial",
    LoadingTitle = "Carregando...",
    LoadingSubtitle = "Script de Teste by Você",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "ProjectSlayersTest",
        FileName = "Config"
    },
    Discord = {
        Enabled = false,
    },
    KeySystem = false,
})

-- Variáveis de Controle
local autoFarmLevel = false
local autoFarmMoney = false
local autoCollectItens = false
local autoDungeon = false
local onlyBossFarm = false

-- Lista de NPCs (Inimigos/Bosses)
local NPCNames = {"Bandit", "Zuko", "Sabito", "Yahaba", "Susamaru", "Kaden", "Sanemi", "Hand Demon", "Akaza", "Slasher Demon", "Shiron"}

-- Lista de Itens
local ItemNames = {"Chest", "Ore", "WeaponDrop", "ItemDrop", "GiftBox", "GoldenChest"}

-- Lista de Dungeons
local DungeonNames = {"DungeonEntrance", "DungeonPortal", "DungeonTeleporter"}

-- Função para encontrar o inimigo mais próximo
function GetNearestEnemy()
    local nearestEnemy = nil
