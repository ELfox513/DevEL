.class public Lcom/prineside/tdi2/gates/BarrierTypeGate;
.super Lcom/prineside/tdi2/GateBarrier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;
    }
.end annotation


# static fields
.field public static final p:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/EnemyType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->p:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_TYPE:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/GateBarrier;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/gates/BarrierTypeGate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/gates/BarrierTypeGate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/prineside/tdi2/ItemStack;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    iget-object v2, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canEnemyPass(Lcom/prineside/tdi2/Enemy;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public cloneGate()Lcom/prineside/tdi2/Gate;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_TYPE:Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierTypeGate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    iget-object v1, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v2, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object v0
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    mul-int/lit16 v1, v1, 0x80

    int-to-float v8, v1

    move/from16 v1, p3

    mul-int/lit16 v1, v1, 0x80

    int-to-float v9, v1

    iget-object v1, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x42bc0000    # 94.0f

    div-float v10, v2, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/high16 v12, 0x40800000    # 4.0f

    const v13, 0x3ecccccd    # 0.4f

    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v3, 0x41880000    # 17.0f

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v15

    const/high16 v16, 0x41880000    # 17.0f

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;->p:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v13, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sub-float v3, v8, v12

    add-float v4, v9, v16

    const/high16 v5, 0x41000000    # 8.0f

    move-object/from16 v1, p1

    move-object v2, v11

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-float v16, v16, v10

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_TYPE:Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v3, v8, v14

    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object/from16 v1, p1

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v15

    const/high16 v16, 0x41880000    # 17.0f

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v2, Lcom/prineside/tdi2/gates/BarrierTypeGate;->p:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Enemy$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput v13, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-float v3, v8, v16

    sub-float v4, v9, v12

    const/high16 v6, 0x41000000    # 8.0f

    move-object/from16 v1, p1

    move-object v2, v11

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-float v16, v16, v10

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_TYPE:Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;

    iget-object v2, v1, Lcom/prineside/tdi2/gates/BarrierTypeGate$BarrierTypeGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sub-float v4, v9, v14

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x41e00000    # 28.0f

    move-object/from16 v1, p1

    move v3, v8

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_2
    return-void
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 7

    const/high16 p2, 0x43000000    # 128.0f

    div-float p2, p1, p2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "item-gate-barrier-type-icon"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v5

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v5, 0x41d00000    # 26.0f

    mul-float v5, v5, p2

    invoke-virtual {v6, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v5, 0x42000000    # 32.0f

    mul-float v5, v5, p2

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v6, v1, 0x3

    if-nez v6, :cond_0

    add-float/2addr v4, v5

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPrestigeScore()D
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    int-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->RARE:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemSortingType;->KIND:Lcom/prineside/tdi2/enums/ItemSortingType;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x7d0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/gates/BarrierTypeGate;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr p1, v0

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Gate;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectSet;

    iput-object p1, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Gate;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->sameAs(Lcom/prineside/tdi2/Gate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/gates/BarrierTypeGate;

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget-object v3, p1, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/enums/EnemyType;

    iget-object v3, p1, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "blockedEnemies"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Gate;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/gates/BarrierTypeGate;->blockedEnemies:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
