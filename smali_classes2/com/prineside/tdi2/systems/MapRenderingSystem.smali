.class public Lcom/prineside/tdi2/systems/MapRenderingSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;,
        Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;,
        Lcom/prineside/tdi2/systems/MapRenderingSystem$MapRenderingSystemListener;,
        Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;,
        Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;,
        Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;
    }
.end annotation


# static fields
.field public static final J:Lcom/badlogic/gdx/graphics/Color;

.field public static final K:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public A:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

.field public B:I

.field public C:I

.field public D:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public E:I

.field public F:Lcom/badlogic/gdx/graphics/Color;

.field public G:Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;

.field public H:Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;

.field public I:Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;

.field public a:Z

.field public b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

.field public d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field public drawMapGrid:Z

.field public k:I

.field public final listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/MapRenderingSystem$MapRenderingSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field public r:I

.field public s:I

.field public final spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/SpaceTileBonusType;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e8f5c29    # 0.28f

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->J:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->K:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawMapGrid:Z

    const/16 v1, 0x400

    new-array v1, v1, [Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->z:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    const/16 v1, 0x100

    new-array v1, v1, [Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->A:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->F:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$MapRenderingSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->G:Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->H:Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->I:Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->z:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    return v0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/MapRenderingSystem;)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->F:Lcom/badlogic/gdx/graphics/Color;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->D:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->E:I

    return p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->E:I

    return p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->E:I

    return v0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    return p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    return p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/systems/MapRenderingSystem;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    return v0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/systems/MapRenderingSystem;)[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->A:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    return-object p0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->p:I

    return p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->p:I

    return v0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->s:I

    return p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->s:I

    return v0
.end method

.method public static synthetic s(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->v:I

    return p1
.end method

.method public static synthetic t(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->v:I

    return v0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    const-string v0, "MapRenderingSystem"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Tiles bake time"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Towers bake time"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    iget-boolean v2, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    if-nez v2, :cond_a

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_9

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v12

    iget-object v2, v12, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v13, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, v12, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v5

    mul-int/lit16 v5, v5, 0x80

    invoke-virtual {v4}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v6

    mul-int/lit16 v6, v6, 0x80

    invoke-virtual {v4, v11, v1, v5, v6}, Lcom/prineside/tdi2/Tile;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, v12, Lcom/prineside/tdi2/Map;->gatesArray:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Gate;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v4

    invoke-virtual {v3}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v5

    invoke-virtual {v3, v11, v1, v4, v5}, Lcom/prineside/tdi2/Gate;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_TILE_POS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const v9, 0x3f0f5c29    # 0.56f

    const/high16 v14, 0x42800000    # 64.0f

    const-wide/16 v15, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-double v3, v1, v15

    if-eqz v3, :cond_4

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v8

    invoke-virtual {v8, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/4 v7, 0x0

    :goto_2
    iget v1, v12, Lcom/prineside/tdi2/Map;->heightTiles:I

    if-ge v7, v1, :cond_4

    const/4 v6, 0x0

    :goto_3
    iget v1, v12, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v6, v1, :cond_3

    invoke-virtual {v12, v6, v7}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    mul-int/lit16 v1, v6, 0x80

    int-to-float v4, v1

    mul-int/lit16 v1, v7, 0x80

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    add-float v5, v1, v14

    const/high16 v17, 0x43000000    # 128.0f

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v1, v8

    move-object/from16 v2, p1

    move v9, v6

    move/from16 v6, v17

    move v10, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    goto :goto_4

    :cond_2
    move v9, v6

    move v10, v7

    move-object/from16 v18, v8

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-int/lit16 v6, v9, 0x80

    int-to-float v4, v6

    mul-int/lit16 v7, v10, 0x80

    int-to-float v1, v7

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    add-float v5, v1, v14

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/lit8 v6, v9, 0x1

    move v7, v10

    move-object/from16 v8, v18

    const v9, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    move v10, v7

    move-object/from16 v18, v8

    add-int/lit8 v7, v10, 0x1

    const v9, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_PATHFINDING:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v15

    if-eqz v3, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v18

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v10

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f0f5c29    # 0.56f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v10, v3, v1, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/4 v9, 0x0

    :goto_5
    iget-object v1, v12, Lcom/prineside/tdi2/Map;->pathfindingNodes:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v9, v2, :cond_6

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/PathNode;

    aget-object v8, v1, v9

    const/4 v7, 0x0

    :goto_6
    iget-object v1, v8, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v2, :cond_5

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Path$Connection;

    aget-object v1, v1, v7

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/pfa/Connection;->getFromNode()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/PathNode;

    invoke-interface {v1}, Lcom/badlogic/gdx/ai/pfa/Connection;->getToNode()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/PathNode;

    iget v3, v2, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v3, v3, 0x80

    add-int/lit8 v3, v3, 0x40

    int-to-float v3, v3

    iget v2, v2, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v4, v2

    iget v2, v1, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x40

    int-to-float v5, v2

    iget v1, v1, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v1, v1, 0x80

    add-int/lit8 v1, v1, 0x40

    int-to-float v6, v1

    const/high16 v17, 0x40c00000    # 6.0f

    const/high16 v19, 0x3f800000    # 1.0f

    sget-object v20, Lcom/prineside/tdi2/systems/MapRenderingSystem;->J:Lcom/badlogic/gdx/graphics/Color;

    sget-object v21, Lcom/prineside/tdi2/systems/MapRenderingSystem;->K:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v22, v7

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v20

    move-object/from16 p2, v10

    move-object/from16 v10, v21

    invoke-static/range {v1 .. v10}, Lcom/prineside/tdi2/utils/DrawUtils;->texturedLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v7, v22, 0x1

    move-object/from16 v10, p2

    move-object v8, v13

    move/from16 v9, v19

    const/4 v13, 0x0

    goto :goto_6

    :cond_5
    move-object v13, v8

    move/from16 v19, v9

    move-object/from16 p2, v10

    iget v1, v13, Lcom/prineside/tdi2/PathNode;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget v1, v13, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 v1, v1, 0x80

    int-to-float v4, v1

    iget v1, v13, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    add-float v5, v1, v14

    const/high16 v6, 0x43000000    # 128.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    add-int/lit8 v9, v19, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_6
    move-object/from16 p2, v10

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_7
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_NEIGHBOR_TILES:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    cmpl-double v3, v1, v15

    if-eqz v3, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "small-circle"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tile;->getNeighbourTiles()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    const/4 v13, 0x0

    :goto_7
    iget v1, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v1, :cond_8

    iget-object v1, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Tile;

    aget-object v1, v1, v13

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x41000000    # 8.0f

    sub-float v4, v2, v3

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v5, v1, v3

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v9, 0x41800000    # 16.0f

    move-object/from16 v1, p1

    move-object v2, v7

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_8
    return-void

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deltaTime is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "System is already disposed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method public drawStains(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->B:I

    :goto_0
    iget v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->C:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->z:[Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->a(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setPackedColor(F)V

    invoke-static {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->c(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-static {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->e(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    sub-float v5, v2, v3

    invoke-static {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->g(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F

    move-result v1

    sub-float v6, v1, v3

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v8, 0x42200000    # 40.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawTiles(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->w:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->w:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->v()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->k:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "System is already disposed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawTilesExtras(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->y:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->u()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->r:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "System is already disposed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawTowers(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->x:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->w()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->u:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "System is already disposed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forceTilesRedraw(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->w:Z

    :cond_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->y:Z

    return-void
.end method

.method public forceTowersRedraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->x:Z

    return-void
.end method

.method public getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "MapRendering"

    return-object v0
.end method

.method public postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v5

    mul-int/lit16 v5, v5, 0x80

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/prineside/tdi2/Tile;->postDrawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "System is already disposed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDrawMode(Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTowersRedraw()V

    return-void
.end method

.method public setup()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->H:Lcom/prineside/tdi2/systems/MapRenderingSystem$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->G:Lcom/prineside/tdi2/systems/MapRenderingSystem$_TowerSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->I:Lcom/prineside/tdi2/systems/MapRenderingSystem$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_1
    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$1;

    const/16 v1, 0x7fff

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$1;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;IZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$2;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;IZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    new-instance v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$3;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;IZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v3, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->D:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const-string v4, "splatter-1"

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->D:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "splatter-2"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->D:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "splatter-3"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_2
    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->w:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->y:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->x:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_DETAILED_MODE_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    :goto_0
    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    return-void
.end method

.method public switchMapDrawMode()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    sget-object v1, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->setDrawMode(Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->setDrawMode(Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->UI_DETAILED_MODE_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    sget-object v3, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v2, v3, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$MapRenderingSystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/MapRenderingSystem$MapRenderingSystemListener;->drawModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public final u()V
    .locals 12

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    iget-object v1, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v4, v3

    iget-object v6, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    int-to-float v7, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    int-to-float v8, v4

    const/high16 v9, 0x43000000    # 128.0f

    const/high16 v10, 0x43000000    # 128.0f

    iget-object v11, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual/range {v5 .. v11}, Lcom/prineside/tdi2/Tile;->drawExtras(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v3, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    iget v4, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v4, v5, v3, v1}, Lcom/prineside/tdi2/Gate;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V

    :cond_1
    iget-object v4, v0, Lcom/prineside/tdi2/Map;->gates:[[[Lcom/prineside/tdi2/Gate;

    aget-object v4, v4, v1

    aget-object v4, v4, v3

    sget-object v5, Lcom/prineside/tdi2/Gate$Side;->BOTTOM:Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v4, v5, v3, v1}, Lcom/prineside/tdi2/Gate;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->q:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->r:I

    return-void
.end method

.method public final v()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    iget-boolean v2, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->drawMapGrid:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v10, 0x1

    :goto_0
    iget v3, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    const/high16 v11, 0x40000000    # 2.0f

    if-ge v10, v3, :cond_1

    rem-int/lit8 v3, v10, 0xa

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v5, 0x0

    mul-int/lit16 v4, v10, 0x80

    int-to-float v4, v4

    sub-float v6, v4, v11

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v7, v4

    const/high16 v8, 0x40800000    # 4.0f

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget v3, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    if-ge v9, v3, :cond_3

    rem-int/lit8 v3, v9, 0xa

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_2
    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    mul-int/lit16 v4, v9, 0x80

    int-to-float v4, v4

    sub-float v5, v4, v11

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v8, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const v4, 0x3e0f5c29    # 0.14f

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/high16 v5, -0x3e800000    # -16.0f

    const/high16 v6, -0x3e800000    # -16.0f

    const/high16 v7, 0x41800000    # 16.0f

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v4, v4

    const/high16 v9, 0x42000000    # 32.0f

    add-float v8, v4, v9

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v5, v4

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v4, v4

    add-float v8, v4, v9

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v5, 0x0

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v7, v4

    const/high16 v8, 0x41800000    # 16.0f

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v6, v4

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v7, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/high16 v5, -0x3f000000    # -8.0f

    const/high16 v6, -0x3f000000    # -8.0f

    const/high16 v7, 0x41000000    # 8.0f

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v4, v4

    const/high16 v10, 0x41800000    # 16.0f

    add-float v8, v4, v10

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v5, v4

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v4, v4

    add-float v8, v4, v10

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 v5, 0x0

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v7, v4

    const/high16 v8, 0x41000000    # 8.0f

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget v4, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v6, v4

    iget v4, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v7, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v11, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/prineside/tdi2/Map;->widthTiles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/prineside/tdi2/Map;->heightTiles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    iget v2, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    int-to-float v2, v2

    add-float v15, v2, v10

    iget v2, v1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v2, v2

    add-float v16, v2, v9

    const/high16 v17, 0x42c80000    # 100.0f

    const/16 v18, 0xc

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lcom/prineside/tdi2/utils/DrawUtils;->drawFontToCache(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;FFFFIZ)V

    :cond_4
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_4
    if-ge v2, v3, :cond_5

    iget-object v4, v1, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Tile;

    aget-object v5, v4, v2

    iget-object v6, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    int-to-float v7, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v4

    mul-int/lit16 v4, v4, 0x80

    int-to-float v8, v4

    const/high16 v9, 0x43000000    # 128.0f

    const/high16 v10, 0x43000000    # 128.0f

    iget-object v11, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual/range {v5 .. v11}, Lcom/prineside/tdi2/Tile;->drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->d:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->k:I

    return-void
.end method

.method public final w()V
    .locals 8

    invoke-static {}, Lcom/prineside/tdi2/Game;->getRealTickCount()J

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    iget-object v1, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Tile;

    aget-object v3, v3, v2

    iget-object v4, v3, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v5, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v4, v5, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v6

    mul-int/lit16 v6, v6, 0x80

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v3

    mul-int/lit16 v3, v3, 0x80

    iget-object v7, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->b:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/prineside/tdi2/Building;->drawBase(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;IILcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->t:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->u:I

    return-void
.end method
