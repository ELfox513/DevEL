.class public Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/SpawnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpawnTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/SpawnTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->create()Lcom/prineside/tdi2/tiles/SpawnTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/SpawnTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/SpawnTile;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/SpawnTile;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/SpawnTile;
    .locals 12

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->create()Lcom/prineside/tdi2/tiles/SpawnTile;

    move-result-object v0

    invoke-static {p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v4, 0x64

    const/16 v5, 0x96

    const/16 v6, 0x1f4

    const/16 v7, 0x1c1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    sget-object v2, Lcom/prineside/tdi2/tiles/SpawnTile$3;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v11, :cond_4

    if-eq v1, v9, :cond_3

    if-eq v1, v8, :cond_2

    if-eq v1, v10, :cond_1

    const/16 v1, 0x5a

    const/16 v1, 0x64

    const/16 v4, 0x5a

    goto :goto_0

    :cond_1
    const/16 v4, 0x50

    const/16 v1, 0x59

    goto :goto_0

    :cond_2
    const/16 v4, 0x46

    const/16 v1, 0x4f

    goto :goto_0

    :cond_3
    const/16 v4, 0x3c

    const/16 v1, 0x45

    goto :goto_0

    :cond_4
    const/16 v4, 0x32

    const/16 v1, 0x3b

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/prineside/tdi2/tiles/SpawnTile$3;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v11, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v10, :cond_6

    const/16 v1, 0x95

    goto :goto_0

    :cond_6
    const/16 v4, 0xf9

    const/16 v1, 0xf9

    const/16 v4, 0x96

    goto :goto_0

    :cond_7
    const/16 v4, 0xfa

    const/16 v1, 0x15d

    goto :goto_0

    :cond_8
    const/16 v4, 0x15e

    const/16 v1, 0x1c1

    goto :goto_0

    :cond_9
    const/16 v1, 0x1f4

    const/16 v4, 0x1c1

    :goto_0
    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v2

    mul-float v1, v1, v2

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v1

    add-int/2addr v4, v1

    iput v4, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    if-ge v4, v5, :cond_a

    rem-int/lit8 v1, v4, 0x5

    sub-int/2addr v4, v1

    iput v4, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    goto :goto_1

    :cond_a
    const/16 v1, 0x1ef

    if-le v4, v1, :cond_b

    iput v6, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    goto :goto_1

    :cond_b
    rem-int/lit8 v1, v4, 0xa

    sub-int/2addr v4, v1

    iput v4, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v11, v4}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    new-instance v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v2, v3, v11, v4}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v2

    mul-float v2, v2, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/StrictMath;->round(F)I

    move-result p1

    add-int/2addr p1, v10

    :cond_c
    :goto_2
    if-lez p1, :cond_f

    sget-object v2, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v3, v2

    invoke-virtual {p2, v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    :goto_3
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_e

    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v5, v2, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_c

    add-int/lit8 p1, p1, -0x1

    new-instance v3, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-direct {v3, v2, v11, v4}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_f
    new-instance p1, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory$1;-><init>(Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;)V

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/tiles/SpawnTile;->setAllowedEnemies(Lcom/badlogic/gdx/utils/Array;)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/SpawnTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/SpawnTile;
    .locals 12

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v2, "et"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    new-instance v5, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v5}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v7, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v6

    invoke-direct {v7, v6, v4, v3}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/tiles/SpawnTile;->setAllowedEnemies(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_2

    :cond_1
    const v2, 0x7fffffff

    const-string v5, "ae"

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    const-string v9, "t"

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/prineside/tdi2/enums/EnemyType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/EnemyType;

    move-result-object v9

    const-string v10, "f"

    invoke-virtual {v7, v10, v4}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "l"

    invoke-virtual {v7, v11, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v8, v9, v10, v7}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    iget v7, v8, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    if-ge v7, v2, :cond_2

    move v2, v7

    :cond_2
    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget v5, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v5, :cond_4

    new-instance v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    sget-object v7, Lcom/prineside/tdi2/enums/EnemyType;->REGULAR:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {v5, v7, v4, v3}, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;-><init>(Lcom/prineside/tdi2/enums/EnemyType;II)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    if-le v2, v4, :cond_5

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    iput v4, v2, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->firstWave:I

    :cond_5
    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/tiles/SpawnTile;->setAllowedEnemies(Lcom/badlogic/gdx/utils/Array;)V

    :goto_2
    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    if-ge p1, v4, :cond_6

    iput v4, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    :cond_6
    iget p1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    const v1, 0xffff

    if-le p1, v1, :cond_7

    iput v1, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    :cond_7
    return-object v0
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    iget-object p1, p2, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    sget-object p2, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    return p1

    :cond_0
    const/16 p2, 0x1f4

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 p1, 0x32

    return p1
.end method

.method public setupAssets()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-spawn-overlay"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-spawn-portal"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-spawn-glow"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-spawn-inactive"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/portal.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "particle-twist"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v2, 0x1

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/SpawnTile$SpawnTileFactory;->r:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
