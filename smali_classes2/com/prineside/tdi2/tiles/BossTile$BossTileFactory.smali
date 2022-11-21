.class public Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/BossTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BossTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/BossTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public final t:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->BOSS:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    sget-object v0, Lcom/prineside/tdi2/enums/BossTileType;->values:[Lcom/prineside/tdi2/enums/BossTileType;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->t:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->t:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "boss_tile_name_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->create()Lcom/prineside/tdi2/tiles/BossTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/BossTile;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile;

    sget-object v1, Lcom/prineside/tdi2/enums/BossTileType;->NO:Lcom/prineside/tdi2/enums/BossTileType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/BossTile;-><init>(Lcom/prineside/tdi2/enums/BossTileType;Lcom/prineside/tdi2/tiles/BossTile$1;)V

    return-object v0
.end method

.method public create(Lcom/prineside/tdi2/enums/BossTileType;)Lcom/prineside/tdi2/tiles/BossTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/prineside/tdi2/tiles/BossTile;-><init>(Lcom/prineside/tdi2/enums/BossTileType;Lcom/prineside/tdi2/tiles/BossTile$1;)V

    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile;
    .locals 5

    const-string v0, "BossTile"

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/tiles/BossTile;

    const-string v2, "d"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string v2, "btt"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/enums/BossTileType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BossTileType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/tiles/BossTile;->setBossTileType(Lcom/prineside/tdi2/enums/BossTileType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "failed to load boss tile type"

    invoke-static {v0, v3, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v1}, Lcom/prineside/tdi2/tiles/BossTile;->c(Lcom/prineside/tdi2/tiles/BossTile;)Lcom/prineside/tdi2/enums/BossTileType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/BossTileType;->ONE:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v2, v3, :cond_0

    :try_start_1
    const-string v2, "obt"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/BossType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BossType;

    move-result-object p1

    iput-object p1, v1, Lcom/prineside/tdi2/tiles/BossTile;->oneBossType:Lcom/prineside/tdi2/enums/BossType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v2, "failed to load one boss type"

    invoke-static {v0, v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-static {v1}, Lcom/prineside/tdi2/tiles/BossTile;->c(Lcom/prineside/tdi2/tiles/BossTile;)Lcom/prineside/tdi2/enums/BossTileType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/BossTileType;->CUSTOM:Lcom/prineside/tdi2/enums/BossTileType;

    if-ne v2, v3, :cond_2

    :try_start_2
    const-string v2, "ce"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {v3}, Lcom/prineside/tdi2/GameValueConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/GameValueConfig;

    move-result-object v3

    iget-object v4, v1, Lcom/prineside/tdi2/tiles/BossTile;->customEffects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "failed to load custom GV"

    invoke-static {v0, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "failed to load custom GVs"

    invoke-static {v0, v3, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_5
    const-string v2, "cbwc"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    move-result-object p1

    iput-object p1, v1, Lcom/prineside/tdi2/tiles/BossTile;->customBossWaveConfig:Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    :catch_4
    move-exception p1

    const-string v2, "failed to load custom waves config"

    invoke-static {v0, v2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v1
.end method

.method public getBossTileTypeName(Lcom/prineside/tdi2/enums/BossTileType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->t:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 3

    float-to-double p1, p1

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setupAssets()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-custom"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-no"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-hard"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-rare"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-one-bg"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "tile-type-boss-one-fg"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTileFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method
