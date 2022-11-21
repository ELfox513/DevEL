.class public abstract Lcom/prineside/tdi2/Modifier;
.super Lcom/prineside/tdi2/Building;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;
.implements Lcom/prineside/tdi2/ScheduledUpdater$Updatable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Modifier$ConnectionSide;,
        Lcom/prineside/tdi2/Modifier$Factory;,
        Lcom/prineside/tdi2/Modifier$ModifierSidePair;
    }
.end annotation


# static fields
.field public static final PENALTY_SELL_PRICE:F = 0.75f

.field public static final WIRES_TEXTURES_CONFIG:[[F


# instance fields
.field public b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field

.field public connectedSides:[Z

.field public d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Miner;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public k:I

.field public moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public timeSinceBuilt:F

.field public type:Lcom/prineside/tdi2/enums/ModifierType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/prineside/tdi2/Modifier;->WIRES_TEXTURES_CONFIG:[[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x3e080000    # -31.0f
        -0x3d700000    # -72.0f
        0x42780000    # 62.0f
        0x42580000    # 54.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3d700000    # -72.0f
        -0x3e080000    # -31.0f
        0x42580000    # 54.0f
        0x42780000    # 62.0f
    .end array-data

    :array_2
    .array-data 4
        -0x3e080000    # -31.0f
        0x41900000    # 18.0f
        0x42780000    # 62.0f
        0x42580000    # 54.0f
    .end array-data

    :array_3
    .array-data 4
        0x41900000    # 18.0f
        -0x3e080000    # -31.0f
        0x42580000    # 54.0f
        0x42780000    # 62.0f
    .end array-data

    :array_4
    .array-data 4
        -0x3d700000    # -72.0f
        -0x3d700000    # -72.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
    .end array-data

    :array_5
    .array-data 4
        -0x3d700000    # -72.0f
        0x41900000    # 18.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
    .end array-data

    :array_6
    .array-data 4
        0x41900000    # 18.0f
        0x41900000    # 18.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
    .end array-data

    :array_7
    .array-data 4
        0x41900000    # 18.0f
        -0x3d700000    # -72.0f
        0x42580000    # 54.0f
        0x42580000    # 54.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ModifierType;)V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Building;-><init>(Lcom/prineside/tdi2/enums/BuildingType;)V

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Tower;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Miner;

    invoke-direct {v0, v1, v3, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/Modifier;->k:I

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    return-void
.end method


# virtual methods
.method public a(Lcom/prineside/tdi2/Miner;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Modifier;->e(II)Lcom/prineside/tdi2/Modifier$ConnectionSide;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Modifier;->setSideConnected(Lcom/prineside/tdi2/Modifier$ConnectionSide;Z)V

    new-instance v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget v2, p0, Lcom/prineside/tdi2/Modifier;->id:I

    iget-object v3, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {v1, v2, v3, v0}, Lcom/prineside/tdi2/Modifier$ModifierSidePair;-><init>(ILcom/prineside/tdi2/enums/ModifierType;Lcom/prineside/tdi2/Modifier$ConnectionSide;)V

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Miner;->registerNearbyModifier(Lcom/prineside/tdi2/Modifier$ModifierSidePair;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Miner is not nearby"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/prineside/tdi2/Tower;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Modifier;->e(II)Lcom/prineside/tdi2/Modifier$ConnectionSide;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/Modifier;->setSideConnected(Lcom/prineside/tdi2/Modifier$ConnectionSide;Z)V

    new-instance v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget v2, p0, Lcom/prineside/tdi2/Modifier;->id:I

    iget-object v3, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {v1, v2, v3, v0}, Lcom/prineside/tdi2/Modifier$ModifierSidePair;-><init>(ILcom/prineside/tdi2/enums/ModifierType;Lcom/prineside/tdi2/Modifier$ConnectionSide;)V

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Tower;->registerNearbyModifier(Lcom/prineside/tdi2/Modifier$ModifierSidePair;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tower is not nearby"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tower is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/Tower;->unregisterNearbyModifier(Lcom/prineside/tdi2/Modifier;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Miner;

    invoke-virtual {v2, p0}, Lcom/prineside/tdi2/Miner;->unregisterNearbyModifier(Lcom/prineside/tdi2/Modifier;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public bridge synthetic cloneBuilding()Lcom/prineside/tdi2/Building;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->cloneBuilding()Lcom/prineside/tdi2/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public cloneBuilding()Lcom/prineside/tdi2/Modifier;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Modifier$Factory;->create()Lcom/prineside/tdi2/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public customButtonAction(II)V
    .locals 0

    return-void
.end method

.method public d(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;->values:[Lcom/prineside/tdi2/Modifier$ConnectionSide;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    sget-object v5, Lcom/prineside/tdi2/Modifier;->WIRES_TEXTURES_CONFIG:[[F

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v7, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/Modifier$Factory;->wires:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v8, v6, v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    aget v6, v5, v2

    add-float v9, v4, v6

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x1

    aget v6, v5, v6

    add-float v10, v4, v6

    const/4 v4, 0x2

    aget v11, v5, v4

    const/4 v4, 0x3

    aget v12, v5, v4

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 15

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    move-object v8, p0

    iget-object v1, v8, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v9

    iget-object v0, v9, Lcom/prineside/tdi2/Modifier$Factory;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p1}, Lcom/prineside/tdi2/Modifier;->d(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v10, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v7, v10, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    invoke-virtual {v9}, Lcom/prineside/tdi2/Modifier$Factory;->getBaseTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v11, 0x42800000    # 64.0f

    sub-float v2, v0, v11

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v3, v0, v11

    const/high16 v4, 0x43000000    # 128.0f

    const/high16 v5, 0x43000000    # 128.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    const v12, 0x3e8f5c29    # 0.28f

    const v13, 0x4228f5c3    # 42.24f

    const/4 v14, 0x0

    if-ne v7, v10, :cond_1

    const v0, 0x3f0f5c29    # 0.56f

    invoke-virtual {v6, v14, v14, v14, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, v9, Lcom/prineside/tdi2/Modifier$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    add-float v2, v0, v13

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    add-float v3, v0, v13

    const v4, 0x4228f5c3    # 42.24f

    const v5, 0x4228f5c3    # 42.24f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, v9, Lcom/prineside/tdi2/Modifier$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    const v2, 0x421eb852    # 39.68f

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    const v3, 0x42333333    # 44.8f

    add-float/2addr v3, v0

    const v4, 0x4228f5c3    # 42.24f

    const v5, 0x4228f5c3    # 42.24f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v9, Lcom/prineside/tdi2/Modifier$Factory;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    add-float v2, v0, v13

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    mul-int/lit16 v0, v0, 0x80

    int-to-float v0, v0

    add-float v3, v0, v13

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->isSellAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget-object v1, v9, Lcom/prineside/tdi2/Modifier$Factory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v11

    const/high16 v7, 0x41200000    # 10.0f

    add-float/2addr v0, v7

    const/high16 v2, 0x40000000    # 2.0f

    add-float v3, v0, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v11

    add-float/2addr v0, v7

    sub-float v4, v0, v2

    const v5, 0x41924925

    const v10, 0x41924925

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v9, Lcom/prineside/tdi2/Modifier$Factory;->b:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v11

    add-float v2, v0, v7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v11

    add-float v3, v0, v7

    const v4, 0x41924925

    const v5, 0x41924925

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    move-object v8, p0

    :cond_3
    :goto_2
    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    return-void
.end method

.method public final e(II)Lcom/prineside/tdi2/Modifier$ConnectionSide;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    if-ne p1, v0, :cond_1

    add-int/lit8 p1, p2, 0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    if-ne p2, p1, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    if-ne p2, v0, :cond_3

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    if-ne p2, v0, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result p2

    if-ne p1, p2, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v0

    if-ne p1, v0, :cond_5

    add-int/lit8 p1, p2, 0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    if-ne p2, p1, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_LEFT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_5
    add-int/lit8 p1, p2, 0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v0

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->BOTTOM_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_6
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result p1

    if-ne p2, p1, :cond_7

    sget-object p1, Lcom/prineside/tdi2/Modifier$ConnectionSide;->TOP_RIGHT:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public fillModifierMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getSellDelay()F
    .locals 1

    const/high16 v0, 0x43960000    # 300.0f

    return v0
.end method

.method public getSellPrice()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    return v0
.end method

.method public getTimeTillSellAvailable()F
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->getSellDelay()F

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/Modifier;->timeSinceBuilt:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/StrictMath;->max(FF)F

    move-result v0

    return v0
.end method

.method public hasCustomButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCustomButtonNeedMapPoint()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSellAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->getTimeTillSellAvailable()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    return-void
.end method

.method public nearbyBuildingsChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->c()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v4, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v3, v4, :cond_0

    check-cast v2, Lcom/prineside/tdi2/Tower;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/Modifier;->b(Lcom/prineside/tdi2/Tower;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Building;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Modifier;->id:I

    const-class v0, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/ModifierType;

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Modifier;->timeSinceBuilt:F

    const-class v0, [Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    const-class v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Modifier;->k:I

    return-void
.end method

.method public removedFromMap()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Modifier;->c()V

    return-void
.end method

.method public final scheduledUpdatableGetId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Modifier;->k:I

    return v0
.end method

.method public final scheduledUpdatableSetId(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Modifier;->k:I

    return-void
.end method

.method public scheduledUpdate(F)V
    .locals 0

    return-void
.end method

.method public setSideConnected(Lcom/prineside/tdi2/Modifier$ConnectionSide;Z)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-boolean p2, v0, p1

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Building;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(F)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Modifier;->timeSinceBuilt:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Modifier;->timeSinceBuilt:F

    :cond_0
    return-void
.end method

.method public updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Building;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/Modifier;->id:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    const-class v1, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Modifier;->timeSinceBuilt:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->connectedSides:[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier;->d:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/Modifier;->k:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
