.class public Lcom/prineside/tdi2/systems/TowerSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;,
        Lcom/prineside/tdi2/systems/TowerSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/TowerSystem$_MapSystemListener;,
        Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;
    }
.end annotation


# static fields
.field public static final q:[[Z


# instance fields
.field public a:Lcom/prineside/tdi2/ScheduledUpdater;

.field public b:F

.field public canTowerAttackEnemy:[[Z

.field public d:I

.field public k:[F

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/prineside/tdi2/Tower$AimStrategy;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public towerEnemyDamageMultiplier:[[F

.field public towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    sput-object v0, Lcom/prineside/tdi2/systems/TowerSystem;->q:[[Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    sget-object v4, Lcom/prineside/tdi2/systems/TowerSystem;->q:[[Z

    aget-object v4, v4, v1

    if-eq v3, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    :goto_2
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v1, v0

    sget-object v2, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v3, v2

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v3, 0x0

    aput v1, v5, v3

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iput-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->canTowerAttackEnemy:[[Z

    array-length v0, v0

    array-length v1, v2

    new-array v2, v4, [I

    aput v1, v2, v6

    aput v0, v2, v3

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Tower;

    const/16 v2, 0x8

    invoke-direct {v0, v3, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    iput v6, p0, Lcom/prineside/tdi2/systems/TowerSystem;->d:I

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    sget-object v0, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->p:Lcom/prineside/tdi2/Tower$AimStrategy;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/TowerSystem;Lcom/prineside/tdi2/Tower;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->e(Lcom/prineside/tdi2/Tower;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/TowerSystem;Lcom/prineside/tdi2/Tower;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->f(Lcom/prineside/tdi2/Tower;)V

    return-void
.end method


# virtual methods
.method public addExperienceBuffed(Lcom/prineside/tdi2/Tower;F)F
    .locals 1

    iget v0, p1, Lcom/prineside/tdi2/Tower;->experienceMultiplier:F

    mul-float p2, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    return p2
.end method

.method public addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Tower;->addExperience(F)V

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->notifyTowerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result p2

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->notifyTowerLeveledUp(Lcom/prineside/tdi2/Tower;)V

    :cond_1
    return-void
.end method

.method public addExperienceToMatchLevel(Lcom/prineside/tdi2/Tower;I)F
    .locals 2

    const/16 v0, 0x100

    if-gt p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v0

    if-ge v0, p2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    aget p2, v0, p2

    int-to-float p2, p2

    iget v0, p1, Lcom/prineside/tdi2/Tower;->experience:F

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max level is 256, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " given"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public applyDrawInterpolation(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Tower;->applyDrawInterpolation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public buildTower(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)Lcom/prineside/tdi2/Tower;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTower(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;IIZ)Lcom/prineside/tdi2/Tower;

    move-result-object p1

    return-object p1
.end method

.method public buildTower(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;IIZ)Lcom/prineside/tdi2/Tower;
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    const/4 v0, 0x0

    const-string v1, "TowerSystem"

    if-nez p5, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower$Factory;->isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "buildTower - tower type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v2

    const-string v3, ":"

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildTower - no tile at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Tower$AimStrategy;->FIRST:Lcom/prineside/tdi2/Tower$AimStrategy;

    :cond_2
    iget-object v4, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_9

    move-object v4, v2

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v4, :cond_8

    const/4 p3, 0x0

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    goto :goto_0

    :cond_3
    sget-object p4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p4, p4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {p4, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object p4

    iget-object p5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p4, p5}, Lcom/prineside/tdi2/Tower$Factory;->getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I

    move-result p4

    :goto_0
    iget-object p5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p5, p5, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p5, p4}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    move-result p5

    if-eqz p5, :cond_7

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {p5, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower$Factory;->create()Lcom/prineside/tdi2/Tower;

    move-result-object p1

    iget-object p5, p1, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p5, p4}, Lcom/prineside/tdi2/utils/CheatSafeInt;->set(I)V

    iput-object p2, p1, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    const/4 p2, 0x0

    :goto_1
    iget-object p5, p1, Lcom/prineside/tdi2/Tower;->dpsDamage:[F

    array-length v0, p5

    if-ge p2, v0, :cond_4

    const/4 v0, 0x0

    aput v0, p5, p2

    iget-object p5, p1, Lcom/prineside/tdi2/Tower;->dpsTime:[F

    int-to-float v0, p2

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v1

    aput v0, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p5

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-virtual {p2, p5, v0, p1}, Lcom/prineside/tdi2/systems/MapSystem;->setTower(IILcom/prineside/tdi2/Tower;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getStartingLevel()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceToMatchLevel(Lcom/prineside/tdi2/Tower;I)F

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    :goto_2
    if-ge p3, p2, :cond_5

    iget-object p5, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p5, p3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object p5

    check-cast p5, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {p5, p1, p4}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerBuilt(Lcom/prineside/tdi2/Tower;I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p2, :cond_6

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iget-object p3, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p4

    iget-object p4, p4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p4, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_6
    return-object p1

    :cond_7
    const-string p1, "buildTower - not enough money"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildTower - tile "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already has a tower"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buildTower - tile type is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->p:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V

    :cond_0
    return-void
.end method

.method public buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V

    :cond_0
    return-void
.end method

.method public buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower$Factory;->isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Tower$Factory;->getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/BuildTowerAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/actions/BuildTowerAction;-><init>(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :cond_2
    return-void
.end method

.method public final c(Lcom/prineside/tdi2/Tower;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Tower;)I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v0

    if-lt v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public customTowerButtonAction(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public customTowerButtonAction(Lcom/prineside/tdi2/Tower;II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tower;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, p2, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tower;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Tower;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tower;->drawGlitch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/prineside/tdi2/Tower;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public drawWeapons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tower;

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v2, v2, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    int-to-float v5, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->boundingBox:Lcom/prineside/tdi2/utils/IntRectangle;

    iget v2, v2, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    int-to-float v6, v2

    const/high16 v7, 0x43000000    # 128.0f

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/Tower;->drawWeapon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public final e(Lcom/prineside/tdi2/Tower;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->d:I

    iput v0, p1, Lcom/prineside/tdi2/Tower;->id:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Tower;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->g(Lcom/prineside/tdi2/Tower;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getScheduledUpdateInterval()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v1, p1, v0}, Lcom/prineside/tdi2/ScheduledUpdater;->add(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;F)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tower is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(Lcom/prineside/tdi2/Tower;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->g(Lcom/prineside/tdi2/Tower;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->remove(Lcom/prineside/tdi2/ScheduledUpdater$Updatable;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tower is not registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lcom/prineside/tdi2/Tower;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v1, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->canNewAbilityBeInstalled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->abilityAvailableParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x42000000    # 32.0f

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const v3, 0x4228f5c3    # 42.24f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->canNewAbilityBeInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v1, p1, Lcom/prineside/tdi2/Tower;->abilityAvailableParticleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_4
    :goto_0
    return-void
.end method

.method public getBaseUpgradePrice(Lcom/prineside/tdi2/Tower;I)I
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v0

    if-le p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradePrice(Lcom/prineside/tdi2/enums/TowerType;ILcom/prineside/tdi2/GameValueProvider;)I

    move-result p1

    return p1
.end method

.method public getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->p:Lcom/prineside/tdi2/Tower$AimStrategy;

    return-object v0
.end method

.method public getGlobalUpgradePrice(Lcom/prineside/tdi2/enums/TowerType;)I
    .locals 11

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradePriceMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-nez v3, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Tower;

    iget-object v3, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v3, p1, :cond_1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Tower;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v6, :cond_a

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/Tower;

    aget-object v5, v5, v3

    iget-object v6, v5, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    if-eq v6, p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v6

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v7

    if-lt v6, v7, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_3
    iget-object v9, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v10, :cond_8

    iget-object v9, v9, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/Tower;

    aget-object v9, v9, v7

    iget-object v10, v9, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v10, p1, :cond_7

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v10

    if-ge v7, v3, :cond_6

    invoke-virtual {v9}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v9

    if-ge v10, v9, :cond_6

    add-int/lit8 v10, v10, 0x1

    :cond_6
    if-lt v10, v6, :cond_7

    mul-float v8, v8, v0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v5, v6}, Lcom/prineside/tdi2/systems/TowerSystem;->getBaseUpgradePrice(Lcom/prineside/tdi2/Tower;I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v8

    float-to-int v6, v6

    invoke-virtual {v5}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v8, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->UPGRADE_DISCOUNT:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v7, v8, :cond_9

    invoke-virtual {v5}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v7

    iget v7, v7, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v7, :cond_9

    int-to-float v6, v6

    invoke-virtual {v5}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v8, v5}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result v5

    mul-float v6, v6, v5

    float-to-int v6, v6

    :cond_9
    add-int/2addr v4, v6

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    return v4
.end method

.method public getMaxPossibleStat(Lcom/prineside/tdi2/enums/TowerStatType;)F
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    const/4 v2, 0x0

    sget-object v3, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v7, v3, v6

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v8, v7, v1}, Lcom/prineside/tdi2/managers/TowerManager;->hasStat(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower$Factory;->create()Lcom/prineside/tdi2/Tower;

    move-result-object v7

    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Tower;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    sget-object v9, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/TileManager;->getFactory(Lcom/prineside/tdi2/enums/TileType;)Lcom/prineside/tdi2/Tile$Factory;

    move-result-object v8

    invoke-interface {v8}, Lcom/prineside/tdi2/Tile$Factory;->create()Lcom/prineside/tdi2/Tile;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/tiles/PlatformTile;

    sget-object v9, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    iput-object v12, v8, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v7, v1}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v12

    cmpl-float v13, v12, v2

    if-lez v13, :cond_0

    move v2, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    sget-object v9, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE_MILESTONES:[I

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/Tower;->upgrade(I)V

    const/4 v9, 0x5

    iput v9, v8, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    sget-object v9, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    iput-object v12, v8, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    sget-object v12, Lcom/prineside/tdi2/systems/TowerSystem;->q:[[Z

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_3

    aget-object v15, v12, v14

    move-object/from16 v16, v3

    iget-object v3, v7, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    move/from16 v17, v4

    array-length v4, v15

    invoke-static {v15, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->updateCache()V

    invoke-virtual {v7, v1}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    goto :goto_4

    :cond_5
    move-object/from16 v16, v3

    move/from16 v17, v4

    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4

    :cond_7
    iget-object v2, v0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    return v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "System is not registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tower"

    return-object v0
.end method

.method public getUpgradePrice(Lcom/prineside/tdi2/Tower;)I
    .locals 8

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1, v3, v0, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradePrice(Lcom/prineside/tdi2/enums/TowerType;ILcom/prineside/tdi2/GameValueProvider;)I

    move-result v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getUpgradePriceMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_3

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v6, :cond_2

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Lcom/prineside/tdi2/Tower;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v7, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v6, v7, :cond_1

    check-cast v5, [Lcom/prineside/tdi2/Tower;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v5

    if-lt v5, v0, :cond_1

    mul-float v4, v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    int-to-float v0, v1

    mul-float v0, v0, v4

    float-to-int v1, v0

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v2, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->UPGRADE_DISCOUNT:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v0, :cond_4

    int-to-float v0, v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v2, p1}, Lcom/prineside/tdi2/SpaceTileBonus;->getEffect(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)F

    move-result p1

    mul-float v0, v0, p1

    float-to-int v1, v0

    :cond_4
    return v1
.end method

.method public globalUpgradeTowerAction(Lcom/prineside/tdi2/enums/TowerType;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;

    invoke-direct {v1, p1}, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;-><init>(Lcom/prineside/tdi2/enums/TowerType;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public isRegistered(Lcom/prineside/tdi2/Tower;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result p1

    return p1
.end method

.method public notifyTowerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v2, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public notifyTowerLeveledUp(Lcom/prineside/tdi2/Tower;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v3, p1}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerLeveledUp(Lcom/prineside/tdi2/Tower;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    const/4 v4, 0x3

    invoke-interface {v2, p1, v4, v3}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->g(Lcom/prineside/tdi2/Tower;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->lvlUpParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1, v0, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iget-object v1, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1, v0, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_3
    return-void
.end method

.method public postSetup()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/TowerSystem;->d()V

    sget-object v0, Lcom/prineside/tdi2/enums/TowerStatType;->values:[Lcom/prineside/tdi2/enums/TowerStatType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->getMaxPossibleStat(Lcom/prineside/tdi2/enums/TowerStatType;)F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public postStateRestore()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Tower;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->g(Lcom/prineside/tdi2/Tower;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, [[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->canTowerAttackEnemy:[[Z

    const-class v0, [[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->d:I

    const-class v0, [F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public removeExperienceRaw(Lcom/prineside/tdi2/Tower;F)F
    .locals 2

    iget v0, p1, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p2, v0

    :cond_0
    iget v0, p1, Lcom/prineside/tdi2/Tower;->experience:F

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Tower;->setExperience(F)V

    neg-float v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->notifyTowerExperienceChanged(Lcom/prineside/tdi2/Tower;F)V

    return p2
.end method

.method public selectGlobalTowerAbilityAction(III)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;

    invoke-direct {v1, p3, p1, p2}, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public selectGlobalTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->selectGlobalTowerAbilityAction(III)V

    return-void
.end method

.method public selectTowerAbilityAction(III)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;

    invoke-direct {v1, p3, p1, p2}, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public selectTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/tdi2/systems/TowerSystem;->selectTowerAbilityAction(III)V

    return-void
.end method

.method public sellTower(Lcom/prineside/tdi2/Tower;)Z
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->onPreSell()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v4, p1, v0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerPreSold(Lcom/prineside/tdi2/Tower;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    int-to-float v3, v0

    invoke-virtual {v1, v3, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->addMoney(FZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/systems/MapSystem;->removeBuilding(Lcom/prineside/tdi2/Building;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v3, p1, v0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerSold(Lcom/prineside/tdi2/Tower;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    const/4 p1, 0x1

    return p1
.end method

.method public sellTowerAction(Lcom/prineside/tdi2/Tower;)V
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->isOutOfOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/SellTowerAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/prineside/tdi2/actions/SellTowerAction;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public setAbilityInstalled(Lcom/prineside/tdi2/Tower;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    aget-boolean v1, v0, p2

    if-ne v1, p3, :cond_0

    return-void

    :cond_0
    aput-boolean p3, v0, p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->updateCache()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerAbilityChanged(Lcom/prineside/tdi2/Tower;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/Tower;->onAbilitySet(IZ)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->g(Lcom/prineside/tdi2/Tower;)V

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->upgradeParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iget-object p3, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p3

    iget-object p3, p3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p2, p3, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_2
    return-void
.end method

.method public setDefaultAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 2

    iput-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->p:Lcom/prineside/tdi2/Tower$AimStrategy;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->defaultAimStrategyChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setTowerAimStrategy(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Tower;->setAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Tower;->setTarget(Lcom/prineside/tdi2/Enemy;)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v1, p1}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerAimStrategyChanged(Lcom/prineside/tdi2/Tower;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public setTowerAimStrategyAction(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-direct {v1, v2, p1, p2}, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;-><init>(IILcom/prineside/tdi2/Tower$AimStrategy;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public setup()V
    .locals 5

    const-string v0, "TowerSystem"

    const-string v1, "loading default config"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager;->canTowerAttackEnemy:[[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->canTowerAttackEnemy:[[Z

    aget-object v3, v3, v1

    array-length v4, v2

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TowerManager;->towerEnemyDamageMultiplier:[[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    aget-object v3, v3, v1

    array-length v4, v2

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/TowerSystem$_EnemySystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/TowerSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/TowerSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/TowerSystem$_MapSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/TowerSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/TowerSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/TowerSystem$_GameValueSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/TowerSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public update(F)V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v2, v3, :cond_e

    iget-object v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->BT:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_0

    check-cast v3, Lcom/prineside/tdi2/actions/BuildTowerAction;

    iget-object v4, v3, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v5, v3, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    iget v6, v3, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    iget v3, v3, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTower(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)Lcom/prineside/tdi2/Tower;

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->UT:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_2

    check-cast v3, Lcom/prineside/tdi2/actions/UpgradeTowerAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/UpgradeTowerAction;->x:I

    iget v3, v3, Lcom/prineside/tdi2/actions/UpgradeTowerAction;->y:I

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v5, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v4, v5, :cond_1

    check-cast v3, Lcom/prineside/tdi2/Tower;

    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->upgradeTower(Lcom/prineside/tdi2/Tower;)Z

    :cond_1
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->GUT:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_5

    check-cast v3, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/Tower;

    iget-object v6, v5, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v7, v3, Lcom/prineside/tdi2/actions/GlobalUpgradeTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v6, v7, :cond_3

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/systems/TowerSystem;->upgradeTower(Lcom/prineside/tdi2/Tower;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->ST:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_7

    check-cast v3, Lcom/prineside/tdi2/actions/SellTowerAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/SellTowerAction;->x:I

    iget v3, v3, Lcom/prineside/tdi2/actions/SellTowerAction;->y:I

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_d

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v3, :cond_d

    iget-object v4, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v5, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v4, v5, :cond_d

    check-cast v3, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    :cond_6
    invoke-virtual {p0, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->sellTower(Lcom/prineside/tdi2/Tower;)Z

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->CTAS:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_8

    check-cast v3, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;->x:I

    iget v6, v3, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_d

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_d

    check-cast v4, Lcom/prineside/tdi2/Tower;

    iget-object v3, v3, Lcom/prineside/tdi2/actions/ChangeTowerAimStrategyAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p0, v4, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->setTowerAimStrategy(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->STA:Lcom/prineside/tdi2/enums/ActionType;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_9

    check-cast v3, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;->x:I

    iget v7, v3, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;->y:I

    invoke-virtual {v4, v5, v7}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v7, :cond_d

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v7, :cond_d

    check-cast v4, Lcom/prineside/tdi2/Tower;

    iget v5, v3, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;->abilityIndex:I

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/Tower;->canAbilityBeInstalled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget v3, v3, Lcom/prineside/tdi2/actions/SelectTowerAbilityAction;->abilityIndex:I

    invoke-virtual {p0, v4, v3, v6}, Lcom/prineside/tdi2/systems/TowerSystem;->setAbilityInstalled(Lcom/prineside/tdi2/Tower;IZ)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->SGTA:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_b

    check-cast v3, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;->x:I

    iget v7, v3, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;->y:I

    invoke-virtual {v4, v5, v7}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v7, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v7, :cond_d

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v7, :cond_d

    check-cast v4, Lcom/prineside/tdi2/Tower;

    const/4 v5, 0x0

    :goto_2
    iget-object v7, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_d

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/Tower;

    iget-object v8, v7, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    iget-object v9, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    if-ne v8, v9, :cond_a

    iget v8, v3, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;->abilityIndex:I

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Tower;->canAbilityBeInstalled(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, v3, Lcom/prineside/tdi2/actions/SelectGlobalTowerAbilityAction;->abilityIndex:I

    invoke-virtual {p0, v7, v8, v6}, Lcom/prineside/tdi2/systems/TowerSystem;->setAbilityInstalled(Lcom/prineside/tdi2/Tower;IZ)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v7}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->CTB:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_d

    check-cast v3, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v3, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;->x:I

    iget v6, v3, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v6, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v5, v6, :cond_d

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_d

    check-cast v4, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tower;->hasCustomButton()Z

    move-result v5

    if-eqz v5, :cond_d

    iget v5, v3, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;->mapX:I

    iget v3, v3, Lcom/prineside/tdi2/actions/CustomTowerButtonAction;->mapY:I

    invoke-virtual {v4, v5, v3}, Lcom/prineside/tdi2/Tower;->customButtonAction(II)V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_c

    iget-object v6, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v6, v4}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->customButtonPressed(Lcom/prineside/tdi2/Tower;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->process(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_12

    iput v2, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_11

    iget-object v4, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tower;

    aget-object v4, v4, v3

    iget v5, v4, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->isDoubleSpeedActive()Z

    move-result v6

    if-eqz v6, :cond_f

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    :cond_f
    invoke-virtual {p0, v4, v5}, Lcom/prineside/tdi2/systems/TowerSystem;->addExperienceRaw(Lcom/prineside/tdi2/Tower;F)V

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->statistics:Lcom/prineside/tdi2/systems/StatisticsSystem;

    sget-object v6, Lcom/prineside/tdi2/enums/StatisticsType;->XPG_TG:Lcom/prineside/tdi2/enums/StatisticsType;

    float-to-double v7, v5

    invoke-virtual {v4, v6, v7, v8}, Lcom/prineside/tdi2/systems/StatisticsSystem;->addStatistic(Lcom/prineside/tdi2/enums/StatisticsType;D)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_12
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_15

    iget-object v4, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tower;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lcom/prineside/tdi2/Tower;->update(F)V

    const/4 v5, 0x0

    :goto_7
    iget-object v6, v4, Lcom/prineside/tdi2/Tower;->dpsTime:[F

    array-length v7, v6

    if-ge v5, v7, :cond_14

    aget v7, v6, v5

    add-float/2addr v7, p1

    aput v7, v6, v5

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_13

    aput v2, v6, v5

    iget-object v6, v4, Lcom/prineside/tdi2/Tower;->dpsDamage:[F

    aput v2, v6, v5

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    iget-object p1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public upgradeTower(Lcom/prineside/tdi2/Tower;)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Tower;)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->removeMoney(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/prineside/tdi2/Tower;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->add(I)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tower;->upgrade()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;

    invoke-interface {v3, p1, v0}, Lcom/prineside/tdi2/systems/TowerSystem$TowerSystemListener;->towerUpgraded(Lcom/prineside/tdi2/Tower;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->upgradeParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/TowerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iget-object v2, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public upgradeTowerAction(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v2, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->c(Lcom/prineside/tdi2/Tower;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/UpgradeTowerAction;

    invoke-direct {v1, p1, p2}, Lcom/prineside/tdi2/actions/UpgradeTowerAction;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    :cond_0
    return-void
.end method

.method public upgradeTowerAction(Lcom/prineside/tdi2/Tower;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/systems/TowerSystem;->upgradeTowerAction(II)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->canTowerAttackEnemy:[[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->towers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->a:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->d:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->k:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
