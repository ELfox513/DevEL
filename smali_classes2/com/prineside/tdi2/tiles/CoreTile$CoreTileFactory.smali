.class public Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;
.super Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/CoreTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoreTileFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Tile$Factory$AbstractFactory<",
        "Lcom/prineside/tdi2/tiles/CoreTile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public k:[Lcom/prineside/tdi2/tiles/CoreTile;

.field public p:Lcom/badlogic/gdx/graphics/g2d/Animation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/graphics/g2d/Animation<",
            "Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;-><init>(Lcom/prineside/tdi2/enums/TileType;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v0, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->values:[Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/tiles/CoreTile;

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->k:[Lcom/prineside/tdi2/tiles/CoreTile;

    new-instance v0, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "res/core-tiles.json"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    :try_start_0
    iget-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->k:[Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v4

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load predefined core tile \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CoreTile"

    invoke-static {v3, v1, v2}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/prineside/tdi2/tiles/CoreTile;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->k:[Lcom/prineside/tdi2/tiles/CoreTile;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;)Lcom/badlogic/gdx/graphics/g2d/Animation;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic create()Lcom/prineside/tdi2/Tile;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/prineside/tdi2/tiles/CoreTile;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;-><init>(Lcom/prineside/tdi2/tiles/CoreTile$1;)V

    return-object v0
.end method

.method public bridge synthetic createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object p1

    return-object p1
.end method

.method public createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/CoreTile;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->create()Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->REGULAR:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->m(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->RARE:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->m(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->LEGENDARY:Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/tiles/CoreTile;->m(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->l(Lcom/prineside/tdi2/tiles/CoreTile;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    if-eq p1, v1, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->XI:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ZETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->THETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->DELTA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    goto :goto_1

    :cond_8
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v2, :cond_9

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->BETA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->ALPHA:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    iput-object p1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    :goto_1
    return-object v0
.end method

.method public bridge synthetic fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile;
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Tile$Factory$AbstractFactory;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile;

    const-string v1, "d"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    const-string v1, "pt"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/enums/PredefinedCoreTileType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/tiles/CoreTile;->predefinedType:Lcom/prineside/tdi2/enums/PredefinedCoreTileType;

    :cond_0
    const-string v1, "n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->n(Lcom/prineside/tdi2/tiles/CoreTile;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "icon"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->o(Lcom/prineside/tdi2/tiles/CoreTile;Ljava/lang/String;)Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v3, "eg"

    invoke-virtual {p1, v3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->p(Lcom/prineside/tdi2/tiles/CoreTile;F)F

    const/4 v1, 0x0

    const-string v3, "flx"

    invoke-virtual {p1, v3, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->q(Lcom/prineside/tdi2/tiles/CoreTile;Z)Z

    const-string v1, "t"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Tier;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->m(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    const-string v1, "u"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->r(Lcom/prineside/tdi2/tiles/CoreTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->r(Lcom/prineside/tdi2/tiles/CoreTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getExperienceGeneration(Lcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/GameValueProvider;)F
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/tdi2/tiles/CoreTile;->getExperienceGeneration()F

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->CORES_LEVEL_UP_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, v0}, Lcom/prineside/tdi2/GameValueProvider;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float p2, v0

    mul-float p1, p1, p2

    return p1
.end method

.method public getProbabilityForPrize(FLcom/prineside/tdi2/managers/ProgressManager$InventoryStatistics;)I
    .locals 1

    const/4 p2, 0x0

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return p2

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/16 p1, 0xa

    return p1

    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return p2
.end method

.method public getTierColor(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P400:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public getTierDescription(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$11;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->LEGENDARY:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->EPIC:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->VERY_RARE:Lcom/prineside/tdi2/enums/RarityType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityName(Lcom/prineside/tdi2/enums/RarityType;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setupAssets()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tile-type-core-left"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tile-type-core-right"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tile-type-core-top"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->d:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "tile-type-core-bottom"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "3d-sphere"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const v3, 0x3d072b02    # 0.033f

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->p:Lcom/badlogic/gdx/graphics/g2d/Animation;

    return-void
.end method
