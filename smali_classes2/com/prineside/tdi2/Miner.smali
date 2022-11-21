.class public abstract Lcom/prineside/tdi2/Miner;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Miner$Factory;
    }
.end annotation


# static fields
.field public static final MAX_UPGRADE_LEVEL:I = 0xa

.field public static final r:Lcom/badlogic/gdx/graphics/Color;

.field public static final s:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public a:Lcom/prineside/tdi2/tiles/SourceTile;

.field public b:I

.field public d:F

.field public doubleSpeedParticle:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public doubleSpeedTimeLeft:F

.field public id:I

.field public k:F

.field public minedItems:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;"
        }
    .end annotation
.end field

.field public minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public miningTime:F

.field public moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

.field public nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Modifier$ModifierSidePair;",
            ">;"
        }
    .end annotation
.end field

.field public nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

.field public p:Lcom/prineside/tdi2/shapes/PieChart;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public final q:Lcom/badlogic/gdx/utils/Array;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/prineside/tdi2/enums/MinerType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/Miner;->r:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/Miner;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->d:F

    iput v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    iput v0, p0, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/MinerType;)V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/utils/CheatSafeInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v2, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->d:F

    iput v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    iput v0, p0, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    new-instance v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-direct {v2, v1, v1}, Lcom/prineside/tdi2/utils/CheatSafeInt;-><init>(II)V

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 14

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v8, p5

    const/high16 v9, 0x43000000    # 128.0f

    div-float v10, p4, v9

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v8, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v8, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/Miner;->r:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v3, v1, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Miner$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    const/high16 v6, 0x43000000    # 128.0f

    const/high16 v7, 0x43000000    # 128.0f

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v1, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    aget-object v3, v3, v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v3

    if-gtz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    aget v4, v4, v2

    if-ge v4, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v3, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->smallCircle:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    const/high16 v2, 0x42800000    # 64.0f

    add-float v4, p2, v2

    const/high16 v5, 0x41400000    # 12.0f

    sub-float/2addr v4, v5

    mul-float v4, v4, v10

    add-float v2, p3, v2

    sub-float/2addr v2, v5

    mul-float v5, v2, v10

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float v7, v10, v2

    move-object v2, p1

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-eq v8, v2, :cond_7

    sget-object v2, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->MAP_EDITOR:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne v8, v2, :cond_8

    :cond_7
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v13, Lcom/prineside/tdi2/Miner;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v13, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v2, v1, Lcom/prineside/tdi2/Miner;->b:I

    invoke-virtual {v13, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const v2, 0x3f0f5c29    # 0.56f

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, v10

    add-float v5, p2, v2

    const/high16 v2, 0x428e0000    # 71.0f

    mul-float v2, v2, v10

    add-float v6, p3, v2

    mul-float v11, v10, v9

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v12

    move-object v3, p1

    move-object v4, v13

    move v7, v11

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x42940000    # 74.0f

    mul-float v10, v10, v2

    add-float v6, p3, v10

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v12

    move-object v3, p1

    move-object v4, v13

    move/from16 v5, p2

    move v7, v11

    invoke-virtual/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_8
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to draw font, content: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/tdi2/Miner;->s:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public b(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DEFAULT:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p5, v0, :cond_2

    iget-object p5, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/prineside/tdi2/shapes/PieChart;->getX()F

    move-result p5

    cmpl-float p5, p5, p2

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {p5}, Lcom/prineside/tdi2/shapes/PieChart;->getY()F

    move-result p5

    cmpl-float p5, p5, p3

    if-eqz p5, :cond_1

    :cond_0
    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->PIE_CHART:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p5, v0}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object p5

    invoke-virtual {p5}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p5

    check-cast p5, Lcom/prineside/tdi2/shapes/PieChart;

    iput-object p5, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {p0, p2, p3, p4}, Lcom/prineside/tdi2/Miner;->updatePieChart(FFF)V

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/PieChart;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_0

    :cond_2
    sget-object p5, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p5, p5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p5}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    const/high16 p5, 0x41b00000    # 22.0f

    mul-float p5, p5, p4

    sub-float v2, p2, p5

    sub-float v3, p3, p5

    const/high16 p2, 0x42300000    # 44.0f

    mul-float v5, p4, p2

    move-object v0, p1

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public cloneMiner()Lcom/prineside/tdi2/Miner;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner$Factory;->create()Lcom/prineside/tdi2/Miner;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/Miner;->b:I

    iput v1, v0, Lcom/prineside/tdi2/Miner;->b:I

    return-object v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFFLcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;)V
    .locals 0

    return-void
.end method

.method public abstract getBaseUpgradePrice(I)I
.end method

.method public getCurrentMiningSpeedFromSystem()F
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getInstallDuration()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_INSTALL_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/MinerManager;->getInstallDurationGameValueType(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getInstallTimeLeft()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    return v0
.end method

.method public getPreparationProgress()F
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/Miner;->d:F

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    return v1
.end method

.method public getSellPrice()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {v0}, Lcom/prineside/tdi2/utils/CheatSafeInt;->get()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTile()Lcom/prineside/tdi2/tiles/SourceTile;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    return-object v0
.end method

.method public getUpgradeLevel()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Miner;->b:I

    return v0
.end method

.method public getVisualMiningProgress()F
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->isPrepared()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getCurrentMiningSpeedFromSystem()F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v0, v2, v0

    iget v3, p0, Lcom/prineside/tdi2/Miner;->miningTime:F

    div-float/2addr v3, v0

    invoke-static {v3, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public isPrepared()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    :try_start_0
    const-string v0, "ul"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Miner;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Miner"

    const-string v1, "failed to load miner from json"

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public placedOnMap()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/Miner;->updatePieChart(FFF)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/Miner;->id:I

    const-class v2, Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/MinerType;

    iput-object v2, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object v2, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    const-class v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v2, p0, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    const-class v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/tdi2/utils/CheatSafeInt;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->b:I

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    const-class v0, Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/ResourceType;

    iput-object p1, p0, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Miner;->miningTime:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    return-void
.end method

.method public reduceInstallTime(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/prineside/tdi2/Miner;->k:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/Miner;->k:F

    cmpg-float p1, v1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerNearbyModifier(Lcom/prineside/tdi2/Modifier$ModifierSidePair;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    iget v2, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifier is already registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public removedFromMap()V
    .locals 0

    return-void
.end method

.method public setInstallTime(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/Miner;->d:F

    iput p1, p0, Lcom/prineside/tdi2/Miner;->k:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    return-void
.end method

.method public setUpgradeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/Miner;->b:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Miner;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ul"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterNearbyModifier(Lcom/prineside/tdi2/Modifier;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    iget v3, p1, Lcom/prineside/tdi2/Modifier;->id:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/Modifier$ModifierSidePair;

    iget-object v2, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifier is not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public updatePieChart(FFF)V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v7, v6

    if-ge v2, v7, :cond_3

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    if-lez v7, :cond_2

    add-int/2addr v5, v7

    iget-object v8, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v10, v4, 0x1

    if-ge v9, v10, :cond_1

    new-instance v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v4, v8, v3, v3}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iget-object v8, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    :goto_1
    int-to-float v7, v7

    iput v7, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iput-object v6, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    move v4, v10

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    iget v6, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v7, v4, 0x1

    if-ge v6, v7, :cond_4

    new-instance v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v2, v4, v3, v3}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    :goto_2
    int-to-float v4, v5

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v6

    div-float/2addr v4, v6

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourceDensity()F

    move-result v0

    sub-float v0, v1, v0

    mul-float v4, v4, v0

    iput v4, v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v2, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    move v2, v5

    move v4, v7

    goto :goto_3

    :cond_5
    move v2, v5

    :cond_6
    :goto_3
    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v5, v4, 0x1

    if-ge v2, v5, :cond_7

    new-instance v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v0, v2, v3, v3}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    :goto_4
    iput v1, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    move v4, v5

    :cond_8
    iget-object v10, p0, Lcom/prineside/tdi2/Miner;->q:Lcom/badlogic/gdx/utils/Array;

    iput v4, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v5, p0, Lcom/prineside/tdi2/Miner;->p:Lcom/prineside/tdi2/shapes/PieChart;

    const/high16 v0, 0x41b00000    # 22.0f

    mul-float v8, p3, v0

    const/16 v9, 0x14

    move v6, p1

    move v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/shapes/PieChart;->setup(FFFILcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 4

    const-class v0, Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v1, p0, Lcom/prineside/tdi2/Miner;->id:I

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    const-class v3, Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2, v1, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->moneySpentOn:Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Miner;->a:Lcom/prineside/tdi2/tiles/SourceTile;

    invoke-virtual {p1, p2, v1, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->minedResources:[Lcom/prineside/tdi2/utils/CheatSafeInt;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Miner;->b:I

    invoke-virtual {p2, v0, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->nearbyModifiers:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Miner;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Miner;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    const-class v1, Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/tdi2/Miner;->miningTime:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
