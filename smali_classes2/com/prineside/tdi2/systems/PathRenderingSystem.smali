.class public Lcom/prineside/tdi2/systems/PathRenderingSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;,
        Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;,
        Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;,
        Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;,
        Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;
    }
.end annotation


# static fields
.field public static final u:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:F

.field public b:Z

.field public d:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;",
            ">;"
        }
    .end annotation
.end field

.field public dontDrawOverPlatforms:Z

.field public k:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public r:Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;

.field public s:Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;

.field public t:Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->u:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->dontDrawOverPlatforms:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/tdi2/systems/PathRenderingSystem$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/systems/PathRenderingSystem$1;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;)V

    iput-object v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->k:Lcom/badlogic/gdx/utils/Pool;

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->p:Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->r:Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;

    new-instance v0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->s:Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/systems/PathRenderingSystem;Lcom/prineside/tdi2/systems/PathRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->t:Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->k:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->p:Z

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->updatePathTracesRendering()V

    :cond_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DISABLE_PATH_RENDERING:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->b:Z

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    sub-float v1, v1, p2

    iput v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    iput-boolean v8, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->b:Z

    iput v2, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    :goto_0
    iget-object v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v2, :cond_2

    iget-object v2, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->k:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;

    aget-object v1, v1, v8

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void

    :cond_3
    iget v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    add-float v1, v1, p2

    iput v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iput v2, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v10, p2, v9

    iget v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    invoke-virtual {v7, v9, v9, v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_1
    iget-object v2, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v3, :cond_e

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;

    aget-object v12, v2, v11

    iget-object v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v2}, Lcom/prineside/tdi2/Path;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    iget v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->k:I

    iget-object v4, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2, v4}, Lcom/prineside/tdi2/Path;->getPositionSimpleSegmentsForGraphics(ILcom/badlogic/gdx/utils/Array;)F

    move-result v1

    iput v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->q:F

    iget-object v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Path;->passesThroughTileType(Lcom/prineside/tdi2/enums/TileType;)Z

    move-result v1

    iput-boolean v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->s:Z

    const/4 v1, 0x0

    iput-object v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    const/4 v13, 0x1

    goto :goto_2

    :cond_6
    move v13, v1

    :goto_2
    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->dontDrawOverPlatforms:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->s:Z

    if-eqz v1, :cond_7

    goto/16 :goto_7

    :cond_7
    iget v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    add-float/2addr v1, v10

    iput v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    cmpl-float v2, v1, v9

    if-ltz v2, :cond_8

    sub-float/2addr v1, v9

    iput v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    iget v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->b:I

    add-int/2addr v1, v3

    iput v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->b:I

    :cond_8
    iget v1, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    const/high16 v14, 0x42000000    # 32.0f

    mul-float v1, v1, v14

    iget v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->b:I

    move v15, v1

    move/from16 v16, v2

    const/4 v1, 0x0

    :goto_3
    iget v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->q:F

    cmpg-float v2, v15, v2

    if-gez v2, :cond_c

    iget-object v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->r:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Path$PathSegment;

    aget-object v2, v2, v8

    move/from16 v17, v1

    :goto_4
    iget-object v3, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->r:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v4, :cond_a

    iget-object v2, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Path$PathSegment;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/prineside/tdi2/Path$PathSegment;->distanceFromStart:F

    sub-float v3, v15, v3

    iget v4, v2, Lcom/prineside/tdi2/Path$PathSegment;->length:F

    cmpg-float v5, v3, v4

    if-gez v5, :cond_9

    div-float/2addr v3, v4

    sget-object v1, Lcom/prineside/tdi2/systems/PathRenderingSystem;->u:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v2, Lcom/prineside/tdi2/Path$PathSegment;->x1:F

    iget v5, v2, Lcom/prineside/tdi2/Path$PathSegment;->x2:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, v2, Lcom/prineside/tdi2/Path$PathSegment;->y1:F

    iget v5, v2, Lcom/prineside/tdi2/Path$PathSegment;->y2:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iput v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v1, 0x1

    move/from16 v17, v1

    move v1, v3

    goto :goto_4

    :cond_a
    :goto_5
    rem-int/lit8 v1, v16, 0x4

    if-nez v1, :cond_b

    iget-object v2, v12, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/systems/PathRenderingSystem;->u:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const v4, 0x41333333    # 11.2f

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v1, v4

    const v5, 0x41b33333    # 22.4f

    const v6, 0x41b33333    # 22.4f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v2, v2, Lcom/prineside/tdi2/Path$PathSegment;->direction:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v1, v2

    sget-object v1, Lcom/prineside/tdi2/systems/PathRenderingSystem;->u:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v4, 0x40c00000    # 6.0f

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v4, v1, v4

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41400000    # 12.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_6
    add-float/2addr v15, v14

    add-int/lit8 v16, v16, -0x1

    move/from16 v1, v17

    goto/16 :goto_3

    :cond_c
    :goto_7
    move v1, v13

    :cond_d
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_e
    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void

    :cond_f
    :goto_9
    iput v2, v0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->a:F

    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "PathRendering"

    return-object v0
.end method

.method public postSetup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->r:Lcom/prineside/tdi2/systems/PathRenderingSystem$_MapListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->s:Lcom/prineside/tdi2/systems/PathRenderingSystem$_WaveSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->t:Lcom/prineside/tdi2/systems/PathRenderingSystem$_GameStateSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_1
    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removePaths()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->b:Z

    :cond_0
    return-void
.end method

.method public setPaths(Lcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;",
            ">;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->removePaths()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->b:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->k:Lcom/badlogic/gdx/utils/Pool;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/StrictMath;->min(II)I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Path;->SIDE_SHIFT_BY_COUNT:[[I

    aget-object v2, v2, v1

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->k:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;

    int-to-float v5, v0

    iget v6, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->b:I

    iput v5, v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->a:F

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v6, v3, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    iput-object v5, v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->path:Lcom/prineside/tdi2/Path;

    iput-object v3, v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->p:Lcom/prineside/tdi2/Path;

    aget v3, v2, v0

    iput v3, v4, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathConfig;->k:I

    iget-object v3, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->d:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Path$PathSegment$Direction;->TOP:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "path-arrow-up"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Path$PathSegment$Direction;->LEFT:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "path-arrow-left"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Path$PathSegment$Direction;->RIGHT:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "path-arrow-right"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->q:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Path$PathSegment$Direction;->BOTTOM:Lcom/prineside/tdi2/Path$PathSegment$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "path-arrow-bottom"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public updatePathTracesRendering()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->removePaths()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->SPAWNED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-ne v0, v1, :cond_6

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v1, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v6, v5, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_1
    iget v8, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_4

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/EnemyGroup;

    iget-object v9, v8, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v9, v5}, Lcom/prineside/tdi2/Map;->getDefaultPath(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/tiles/SpawnTile;)Lcom/prineside/tdi2/Path;

    move-result-object v9

    if-eqz v9, :cond_3

    new-instance v10, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;

    invoke-direct {v10}, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;-><init>()V

    iput-object v9, v10, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->path:Lcom/prineside/tdi2/Path;

    iget-object v8, v8, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    iput-object v8, v10, Lcom/prineside/tdi2/systems/PathRenderingSystem$PathEnemyPair;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/PathRenderingSystem;->setPaths(Lcom/badlogic/gdx/utils/Array;)V

    :cond_6
    iput-boolean v2, p0, Lcom/prineside/tdi2/systems/PathRenderingSystem;->p:Z

    return-void
.end method
