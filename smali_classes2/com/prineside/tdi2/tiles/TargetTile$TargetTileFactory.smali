.class public Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/TargetTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/TargetTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->create()Lcom/prineside/tdi2/tiles/TargetTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/TargetTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/TargetTile;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/TargetTile;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/TargetTile;
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    if-nez p2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->create()Lcom/prineside/tdi2/tiles/TargetTile;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v10}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    mul-float v0, v0, v7

    const v1, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {v9, v11}, Lcom/prineside/tdi2/tiles/TargetTile;->d(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z

    :cond_1
    invoke-virtual {v8}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    mul-float v0, v0, v7

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {v9, v11}, Lcom/prineside/tdi2/tiles/TargetTile;->e(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->minerCount:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    if-ge v2, v1, :cond_4

    aget-object v5, v0, v2

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v14, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    aget-object v14, v14, v3

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/ProgressManager;->isResourceOpened(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v14, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;

    invoke-direct {v14, v6, v7, v9, v5}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/enums/GameValueType;)V

    invoke-direct {v13, v4, v14}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lcom/prineside/tdi2/tiles/TargetTile;->c(Lcom/prineside/tdi2/tiles/TargetTile;)Z

    move-result v0

    if-eqz v0, :cond_5

    float-to-double v0, v7

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v5, v0, v2

    if-lez v5, :cond_5

    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$2;

    invoke-direct {v1, v6, v8, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$2;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/badlogic/gdx/math/RandomXS128;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v0, v4, v1}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    const v0, 0x3f266666    # 0.65f

    const/4 v13, 0x5

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_6

    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$3;

    invoke-direct {v1, v6, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$3;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v0, v13, v1}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v1, v7, v0

    if-ltz v1, :cond_7

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$4;

    invoke-direct {v2, v6, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$4;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v1, v4, v2}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_7
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, v7, v1

    if-ltz v2, :cond_8

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v3, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;

    invoke-direct {v3, v6, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v2, v4, v3}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_8
    cmpl-float v2, v7, v0

    if-ltz v2, :cond_9

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v3, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;

    invoke-direct {v3, v6, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v2, v13, v3}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_9
    cmpl-float v1, v7, v1

    if-ltz v1, :cond_a

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$7;

    invoke-direct {v2, v6, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$7;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v1, v13, v2}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_a
    const v1, 0x3f333333    # 0.7f

    const/4 v14, 0x3

    cmpl-float v1, v7, v1

    if-ltz v1, :cond_b

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$8;

    invoke-direct {v2, v6, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$8;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v1, v14, v2}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_b
    cmpl-float v0, v7, v0

    if-ltz v0, :cond_c

    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;

    invoke-direct {v1, v6, v8, v9, v7}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/tiles/TargetTile;F)V

    invoke-direct {v0, v4, v1}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$10;

    invoke-direct {v1, v6, v7, v9}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$10;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V

    invoke-direct {v0, v4, v1}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v15, Lcom/prineside/tdi2/enums/GameValueType;->sharedTowerStats:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v5, v15

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_d

    aget-object v16, v15, v4

    new-instance v3, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    new-instance v2, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$11;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v12, v2

    move-object v2, v8

    move-object v13, v3

    move/from16 v3, p1

    move/from16 v17, v4

    move-object v4, v9

    move/from16 v18, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$11;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/badlogic/gdx/math/RandomXS128;FLcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/enums/GameValueType;)V

    invoke-direct {v13, v14, v12}, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;-><init>(ILjava/lang/Runnable;)V

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v18

    const/4 v13, 0x5

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    iget v2, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_e

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iget v2, v2, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityFromQuality(F)Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/tiles/TargetTile$3;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v11, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eq v0, v14, :cond_10

    const/4 v3, 0x4

    if-eq v0, v3, :cond_f

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    goto :goto_5

    :cond_f
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    goto :goto_5

    :cond_10
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    const/4 v2, 0x5

    add-int/2addr v0, v2

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v14

    goto :goto_5

    :cond_12
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v0

    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    invoke-virtual {v8, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_7
    iget v7, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_14

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iget v7, v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->a:I

    add-int/2addr v7, v5

    if-lt v7, v3, :cond_13

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iget-boolean v7, v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->c:Z

    if-nez v7, :cond_13

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->b:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iput-boolean v11, v3, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->c:Z

    goto :goto_8

    :cond_13
    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;

    iget v7, v7, Lcom/prineside/tdi2/tiles/TargetTile$RandomTileValue;->a:I

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    invoke-static {v9}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$12;

    invoke-direct {v1, v6}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$12;-><init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-object v9
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/TargetTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/TargetTile;
    .locals 5

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/TargetTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v1, "gv"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    invoke-static {v2}, Lcom/prineside/tdi2/GameValueConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/GameValueConfig;

    move-result-object v2

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TargetTile"

    const-string v4, "failed to load GV"

    invoke-static {v3, v4, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/tiles/TargetTile;->g()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    const-string v1, "da"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/TargetTile;->e(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z

    const-string v1, "usgv"

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/tiles/TargetTile;->d(Lcom/prineside/tdi2/tiles/TargetTile;Z)Z

    :cond_1
    return-object v0
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 0

    iget-object p1, p2, Lcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;->byTileType:[I

    sget-object p2, Lcom/prineside/tdi2/enums/TileType;->TARGET:Lcom/prineside/tdi2/enums/TileType;

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
    const/16 p1, 0x1e

    return p1
.end method

.method public setupAssets()V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-target-hollow"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-target-base"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "particles/base-explosion.prt"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "particle-shockwave"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-direct {v2, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v2, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "particles/base-hit.prt"

    invoke-interface {v2, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    return-void
.end method
