.class public Lcom/prineside/tdi2/tiles/SpawnTile;
.super Lcom/prineside/tdi2/Tile;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;,
        Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;
    }
.end annotation


# static fields
.field public static final w:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public difficulty:I

.field public enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field public enemySpawnQueuesFirstWave:I

.field public r:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field

.field public t:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/tiles/SpawnTile;->w:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueuesFirstWave:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/SpawnTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/tiles/SpawnTile;->f(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/prineside/tdi2/tiles/SpawnTile;->g(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic f(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateItemIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bad value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpawnTile"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic g(Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lcom/prineside/tdi2/tiles/SpawnTile;->addAllowedEnemy(Lcom/prineside/tdi2/enums/EnemyType;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/SpawnTile;->removeAllowedEnemy(Lcom/prineside/tdi2/enums/EnemyType;)V

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p3, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p3}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->updateForm()V

    return-void
.end method


# virtual methods
.method public addAllowedEnemy(Lcom/prineside/tdi2/enums/EnemyType;II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v3, p1, :cond_0

    iput p2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iput p3, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>()V

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iput p2, v0, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iput p3, v0, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/high16 v1, 0x42c80000    # 100.0f

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v0, v1

    :goto_0
    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v2, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v1, v1, v3

    float-to-double v3, v1

    const-wide v5, 0x3ff4ccccc0000000L    # 1.2999999523162842

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    invoke-direct {v0, v2, v1}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canBeUpgraded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v14, p4

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v15, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    iget v3, v3, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;

    invoke-virtual {v4}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-nez v2, :cond_6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v3, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object v3, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v2, v3, v15}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    goto :goto_2

    :cond_5
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_6
    :goto_2
    iget v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->t:F

    add-float v2, v2, p2

    iput v2, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->t:F

    const/high16 v3, 0x41000000    # 8.0f

    rem-float/2addr v2, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v2, v2, v4

    div-float v16, v2, v3

    sget-object v10, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    if-eqz v1, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v9, v13

    int-to-float v8, v14

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x43000000    # 128.0f

    const/high16 v17, 0x43000000    # 128.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v3, v9

    move v4, v8

    move/from16 v20, v8

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v18

    move-object v15, v10

    move/from16 v10, v19

    const/16 v19, 0x1

    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->t:F

    invoke-static {v1}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v1, v1, v3

    add-float/2addr v1, v3

    invoke-virtual {v12, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v20

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_3

    :cond_7
    move-object v15, v10

    const/16 v19, 0x1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v3, v13

    int-to-float v4, v14

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :cond_8
    :goto_3
    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v1, v2, :cond_9

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v1, v2, :cond_b

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->e()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/high16 v7, 0x41c00000    # 24.0f

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_a

    const/4 v3, 0x4

    goto :goto_4

    :cond_a
    move v3, v1

    :goto_4
    div-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x1

    int-to-float v1, v3

    mul-float v1, v1, v7

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v9, v1, v3

    int-to-float v1, v8

    mul-float v1, v1, v7

    sub-float/2addr v2, v1

    mul-float v10, v2, v3

    const/4 v15, 0x0

    :goto_5
    iget-object v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v15, v2, :cond_b

    rem-int/lit8 v2, v15, 0x4

    int-to-float v2, v2

    mul-float v2, v2, v7

    add-float/2addr v2, v9

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    div-int/lit8 v4, v15, 0x4

    add-int/lit8 v4, v4, 0x1

    sub-int v4, v8, v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    add-float/2addr v4, v10

    sub-float/2addr v4, v3

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v1, v1, v15

    iget-object v1, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    int-to-float v1, v13

    add-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    add-float v5, v1, v2

    int-to-float v1, v14

    add-float/2addr v1, v4

    add-float v4, v1, v2

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v11, 0x41a00000    # 20.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v5

    move v5, v6

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_b
    return-void
.end method

.method public final e()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    sget-object v0, Lcom/prineside/tdi2/tiles/SpawnTile;->w:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v2

    mul-int/lit16 v2, v2, 0x80

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x41a80000    # 21.0f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->translate(FF)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->v:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-object v0
.end method

.method public fillInventoryWithInfo(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;F)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-wave"

    invoke-virtual {p2, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, p2, p2, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v5, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget v4, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/StrictMath;->max(II)I

    move-result v4

    iget v6, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    const-string v7, " - "

    if-ge v6, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "<@icon-infinity>"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public fillItemCreationForm(Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V
    .locals 13

    const-string v0, "Difficulty"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/tiles/a0;

    invoke-direct {v1, p0, p1}, Lcom/prineside/tdi2/tiles/a0;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textField(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    const-string v0, "Allowed enemies"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->label(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->form:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v1, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy$Factory;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemiesSet()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    new-instance v8, Lcom/prineside/tdi2/tiles/b0;

    invoke-direct {v8, p0, v5, p1}, Lcom/prineside/tdi2/tiles/b0;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;)V

    invoke-virtual {p1, v3, v6, v7, v8}, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->toggle(ZLjava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v8, 0x42400000    # 48.0f

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/tiles/SpawnTile;->getEnemyConfig(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    move-result-object v7

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    if-nez v7, :cond_0

    const-string v11, "1"

    goto :goto_1

    :cond_0
    iget v11, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    iget-object v12, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v11, v12}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v11, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v11, Lcom/prineside/tdi2/tiles/SpawnTile$1;

    invoke-direct {v11, p0, v10, v5, v6}, Lcom/prineside/tdi2/tiles/SpawnTile$1;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v10, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;

    if-nez v7, :cond_1

    const-string v7, "0"

    goto :goto_2

    :cond_1
    iget v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iget-object v11, p1, Lcom/prineside/tdi2/ui/shared/ItemCreationOverlay;->textFieldStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    invoke-direct {v10, v7, v11}, Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;)V

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/prineside/tdi2/tiles/SpawnTile$2;

    invoke-direct {v7, p0, v10, v5, v6}, Lcom/prineside/tdi2/tiles/SpawnTile$2;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile;Lcom/prineside/tdi2/ui/actors/TextFieldXPlatform;Lcom/prineside/tdi2/enums/EnemyType;Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public fillMapEditorMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/prineside/tdi2/ui/components/MapEditorItemInfoMenu;)V
    .locals 7

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "difficulty"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v0, 0x42200000    # 40.0f

    const v1, 0x44408000    # 770.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "enemies_that_can_be_spawned"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e8f5c29    # 0.28f

    invoke-virtual {p2, v1, v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v1, 0x44368000    # 730.0f

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v1, 0x44020000    # 520.0f

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v1, 0x0

    const/high16 v3, 0x442a0000    # 680.0f

    invoke-virtual {p2, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v3, p1

    const/high16 v4, 0x42800000    # 64.0f

    mul-float v3, v3, v4

    const/high16 v5, 0x43dc0000    # 440.0f

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_0

    sub-float/2addr v5, v3

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, v5, p1

    goto :goto_0

    :cond_0
    const/high16 v3, 0x43bc0000    # 376.0f

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float v4, v3, p1

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v6, v3}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v5, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-float/2addr v0, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public from(Lcom/prineside/tdi2/Tile;)V
    .locals 6

    check-cast p1, Lcom/prineside/tdi2/tiles/SpawnTile;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v2, v2, v1

    new-instance v3, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v4, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget v5, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-direct {v3, v4, v5, v2}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/tiles/SpawnTile;->setAllowedEnemies(Lcom/badlogic/gdx/utils/Array;)V

    iget p1, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    iput p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    return-void
.end method

.method public generateSeedSalt()I
    .locals 4

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1d

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 8

    const/high16 v0, 0x43000000    # 128.0f

    div-float v0, p1, v0

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/prineside/tdi2/managers/TileManager;->getRoadTexture(Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/TileManager$Factories;->SPAWN:Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f0f5c29    # 0.56f

    invoke-virtual {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v3, Lcom/prineside/tdi2/tiles/SpawnTile;->w:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v4, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float v6, v6, v0

    invoke-static {v6}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sub-float v4, p1, v6

    invoke-virtual {v3, p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v5, p1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v4, v4, v0

    invoke-virtual {p1, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v0

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    rem-int/lit8 v4, v2, 0x4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getAllowedEnemiesSet()Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    return-object v0
.end method

.method public getEnemyConfig(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v2, p1, :cond_0

    check-cast v1, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object p1, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInventorySubcategory()Lcom/prineside/tdi2/enums/ItemSubcategoryType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSubcategoryType;->ME_SPAWNS:Lcom/prineside/tdi2/enums/ItemSubcategoryType;

    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    int-to-double v1, v0

    const-wide v3, 0x407f400000000000L    # 500.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    const-wide v3, 0x3fa999999999999aL    # 0.05

    const/16 v5, 0x190

    if-le v0, v5, :cond_0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    :goto_0
    add-double/2addr v1, v5

    goto :goto_1

    :cond_0
    const/16 v5, 0x12c

    if-le v0, v5, :cond_1

    const-wide/high16 v5, 0x3fc0000000000000L    # 0.125

    goto :goto_0

    :cond_1
    const/16 v5, 0xc8

    if-le v0, v5, :cond_2

    add-double/2addr v1, v3

    goto :goto_1

    :cond_2
    const/16 v5, 0x64

    if-le v0, v5, :cond_3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v5, 0x2

    if-gt v0, v5, :cond_4

    const-wide v5, 0x3fc3333333333333L    # 0.15

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    if-ne v0, v5, :cond_6

    const-wide v5, 0x3fd999999999999aL    # 0.4

    goto :goto_2

    :cond_6
    const/4 v5, 0x5

    if-ne v0, v5, :cond_7

    const-wide v5, 0x3fe3333333333333L    # 0.6

    goto :goto_2

    :cond_7
    const-wide v5, 0x3feb333333333333L    # 0.85

    :goto_2
    const/4 v0, 0x0

    :goto_3
    iget-object v7, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v8, :cond_c

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->ARMORED:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v7, v8, :cond_a

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v7, v8, :cond_8

    goto :goto_4

    :cond_8
    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->LIGHT:Lcom/prineside/tdi2/enums/EnemyType;

    if-eq v7, v8, :cond_9

    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->ICY:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v7, v8, :cond_b

    :cond_9
    add-double/2addr v5, v3

    goto :goto_5

    :cond_a
    :goto_4
    const-wide v7, 0x3fb3333333333333L    # 0.075

    add-double/2addr v5, v7

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    mul-double v1, v1, v5

    add-double/2addr v1, v3

    return-wide v1
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const/16 v1, 0x1c2

    if-ge v0, v1, :cond_7

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const/16 v1, 0x15e

    if-ge v0, v1, :cond_6

    const/16 v1, 0x46

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0xfa

    if-ge v0, v1, :cond_5

    const/16 v1, 0x50

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x96

    if-ge v0, v1, :cond_4

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_4
    :goto_0
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_5
    :goto_1
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_6
    :goto_2
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0

    :cond_7
    :goto_3
    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    add-int/lit16 p1, p1, 0x1388

    return p1

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getValue()F
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v1

    return v0
.end method

.method public getWalkCost()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public isEnemyAllowedOnWave(Lcom/prineside/tdi2/enums/EnemyType;I)Z
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v2, v2, v0

    iget-object v3, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v3, p1, :cond_2

    iget p1, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    iget p1, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-le p2, p1, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isRoadType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueuesFirstWave:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public removeAllowedEnemy(Lcom/prineside/tdi2/enums/EnemyType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v2, p1, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Tile;)Z
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v0, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    iget v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_7

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v1, v1, v0

    iget-object v3, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v4, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p1, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_6

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v4, v4, v3

    iget-object v5, v4, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v6, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v5, v6, :cond_5

    iget v3, v4, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    iget v5, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    if-ne v3, v5, :cond_4

    iget v3, v4, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    iget v1, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    if-eq v3, v1, :cond_6

    :cond_4
    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public setAllowedEnemies(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iget-object v2, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->u:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/Tile;->setUnregistered()V

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart(Ljava/lang/String;)V

    iget v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ae"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "t"

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {p1, v3, v2}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v1, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->lastWave:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {p1, v2, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Tile;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->r:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->s:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueuesFirstWave:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
