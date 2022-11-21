.class public Lcom/prineside/tdi2/systems/ModifierSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;,
        Lcom/prineside/tdi2/systems/ModifierSystem$_MapSystemListener;
    }
.end annotation


# instance fields
.field public a:I

.field public b:[I

.field public d:Lcom/prineside/tdi2/ScheduledUpdater;

.field public k:[Lcom/prineside/tdi2/ModifierProcessor;

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public modifiersBuiltByType:[I

.field public modifiersBuiltByTypeAllTime:[I

.field public modifiersSoldByTypeAllTime:[I

.field public p:Lcom/prineside/tdi2/ScheduledUpdater;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Modifier;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByType:[I

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByTypeAllTime:[I

    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersSoldByTypeAllTime:[I

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->a:I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/ModifierProcessor;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/ModifierSystem;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/ModifierSystem;->e(II)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/ModifierSystem;Lcom/prineside/tdi2/Modifier;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->f(Lcom/prineside/tdi2/Modifier;)V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/ModifierSystem;Lcom/prineside/tdi2/Modifier;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->g(Lcom/prineside/tdi2/Modifier;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public buildModifier(Lcom/prineside/tdi2/enums/ModifierType;II)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->getMaxModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v2

    const-string v3, "ModifierSystem"

    if-le v0, v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No more modifiers of type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can be built"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p3, p2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne p3, v0, :cond_7

    move-object p3, p2

    check-cast p3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v0, p3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_0
    iget v5, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_2

    iget-object v5, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v5, v2

    iget-object v6, v5, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v6, v7, :cond_1

    check-cast v5, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v6, v5, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v6, v7, :cond_1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v6, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v6

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    check-cast v5, Lcom/prineside/tdi2/Modifier;

    iget-object v5, v5, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/Modifier$Factory;->canBePlacedNear(Lcom/prineside/tdi2/enums/ModifierType;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_5

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/prineside/tdi2/Modifier$Factory;->create()Lcom/prineside/tdi2/Modifier;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v2

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p3, Lcom/prineside/tdi2/Modifier;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v4

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p2

    invoke-virtual {v3, v4, p2, p3}, Lcom/prineside/tdi2/systems/MapSystem;->setModifier(IILcom/prineside/tdi2/Modifier;)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v4, p2, v3

    add-int/2addr v4, v1

    aput v4, p2, v3

    iget-object p2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByTypeAllTime:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v3, p2, p1

    add-int/2addr v3, v1

    aput v3, p2, p1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object p2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;

    invoke-interface {p2, p3, v2}, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;->modifierBuilt(Lcom/prineside/tdi2/Modifier;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto :goto_2

    :cond_4
    const-string p1, "not enough money to build a modifier"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "can\'t place near other modifier"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "trying to build modifier on tile which already has a building"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildModifier - tile type is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p1, "buildModifier - tile is null"

    invoke-static {v3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public buildModifierAction(Lcom/prineside/tdi2/enums/ModifierType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/tdi2/systems/ModifierSystem;->buildModifierAction(Lcom/prineside/tdi2/enums/ModifierType;II)V

    :cond_0
    return-void
.end method

.method public buildModifierAction(Lcom/prineside/tdi2/enums/ModifierType;II)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_0

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v5, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v5

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    check-cast v4, Lcom/prineside/tdi2/Modifier;

    iget-object v4, v4, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/Modifier$Factory;->canBePlacedNear(Lcom/prineside/tdi2/enums/ModifierType;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/BuildModifierAction;

    invoke-direct {v1, p1, p2, p3}, Lcom/prineside/tdi2/actions/BuildModifierAction;-><init>(Lcom/prineside/tdi2/enums/ModifierType;II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p3, "modifier_cant_be_placed_near_other"

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, p3}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :cond_3
    :goto_1
    return-void
.end method

.method public customModifierButtonAction(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public customModifierButtonAction(Lcom/prineside/tdi2/Modifier;II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public final d(Lcom/prineside/tdi2/enums/ModifierType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Modifier;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0}, Lcom/prineside/tdi2/Modifier;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Modifier;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v0}, Lcom/prineside/tdi2/Modifier;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public final e(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Modifier;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    add-int/lit8 v3, p1, -0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-gt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Modifier;->nearbyBuildingsChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Lcom/prineside/tdi2/Modifier;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    iget-object v1, p1, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->a:I

    iput v0, p1, Lcom/prineside/tdi2/Modifier;->id:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modifier is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lcom/prineside/tdi2/Modifier;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    iget-object v1, p1, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->remove(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modifier is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBuildPrice(Lcom/prineside/tdi2/enums/ModifierType;)I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->d(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/tdi2/Modifier$Factory;->getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;I)I

    move-result p1

    return p1
.end method

.method public getBuildableModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/ModifierSystem;->getMaxModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public getMaxModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/ModifierManager;->getCountGameValue(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public getProcessor(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/ModifierProcessor;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Modifier"

    return-object v0
.end method

.method public isRegistered(Lcom/prineside/tdi2/Modifier;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, Lcom/prineside/tdi2/ScheduledUpdater;

    const-class v1, [I

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByType:[I

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByTypeAllTime:[I

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersSoldByTypeAllTime:[I

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->a:I

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    const-class v1, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, [Lcom/prineside/tdi2/ModifierProcessor;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/prineside/tdi2/ModifierProcessor;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    return-void
.end method

.method public sellModifier(Lcom/prineside/tdi2/Modifier;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->getSellPrice()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->isSellAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :cond_0
    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-float v3, v0

    invoke-virtual {v2, v3, v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeBuilding(Lcom/prineside/tdi2/Building;)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersSoldByTypeAllTime:[I

    iget-object v3, p1, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByType:[I

    iget-object v3, p1, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;

    invoke-interface {v3, p1, v0}, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;->modifierSold(Lcom/prineside/tdi2/Modifier;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public sellModifierAction(Lcom/prineside/tdi2/Modifier;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/SellModifierAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/prineside/tdi2/actions/SellModifierAction;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public setup()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/ModifierSystem$_MapSystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/ModifierSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/ModifierSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Modifier$Factory;->createProcessor()Lcom/prineside/tdi2/ModifierProcessor;

    move-result-object v4

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/ModifierProcessor;->getUpdateInterval()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ModifierProcessor;->getUpdateInterval()F

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    :cond_2
    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public update(F)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v2, v3, :cond_4

    iget-object v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->BMO:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_0

    check-cast v3, Lcom/prineside/tdi2/actions/BuildModifierAction;

    iget-object v4, v3, Lcom/prineside/tdi2/actions/BuildModifierAction;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    iget v5, v3, Lcom/prineside/tdi2/actions/BuildModifierAction;->x:I

    iget v3, v3, Lcom/prineside/tdi2/actions/BuildModifierAction;->y:I

    invoke-virtual {p0, v4, v5, v3}, Lcom/prineside/tdi2/systems/ModifierSystem;->buildModifier(Lcom/prineside/tdi2/enums/ModifierType;II)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->SMO:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/actions/SellModifierAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/SellModifierAction;->x:I

    iget v3, v3, Lcom/prineside/tdi2/actions/SellModifierAction;->y:I

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_3

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v5, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v4, v5, :cond_3

    check-cast v3, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/ModifierSystem;->sellModifier(Lcom/prineside/tdi2/Modifier;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->CMB:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_3

    check-cast v3, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    iget v6, v3, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_3

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_3

    check-cast v4, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Modifier;->hasCustomButton()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v3, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    iget v3, v3, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/Modifier;->customButtonAction(II)V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;

    invoke-interface {v6, v4}, Lcom/prineside/tdi2/systems/ModifierSystem$ModifierSystemListener;->customButtonPressed(Lcom/prineside/tdi2/Modifier;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Modifier;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Modifier;->update(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->process(F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByType:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersBuiltByTypeAllTime:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->modifiersSoldByTypeAllTime:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->a:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->b:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->d:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->k:[Lcom/prineside/tdi2/ModifierProcessor;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ModifierSystem;->p:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
