.class public Lcom/prineside/tdi2/gates/BarrierHealthGate;
.super Lcom/prineside/tdi2/GateBarrier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;
    }
.end annotation


# instance fields
.field public moreThanHalf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GateType;->BARRIER_HEALTH:Lcom/prineside/tdi2/enums/GateType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/GateBarrier;-><init>(Lcom/prineside/tdi2/enums/GateType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/gates/BarrierHealthGate$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/gates/BarrierHealthGate;-><init>()V

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

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public canEnemyPass(Lcom/prineside/tdi2/Enemy;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public cloneGate()Lcom/prineside/tdi2/Gate;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->create()Lcom/prineside/tdi2/gates/BarrierHealthGate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result v2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/Gate;->setPosition(IILcom/prineside/tdi2/Gate$Side;)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    iput-boolean v1, v0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    return-object v0
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 0

    return-void
.end method

.method public drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object p2

    sget-object p3, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    const/high16 v0, 0x41800000    # 16.0f

    if-ne p2, p3, :cond_1

    iget-boolean p2, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    iget-object v2, p2, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->d:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v3, p2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float v4, p2

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    iget-object v2, p2, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v3, p2, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float v4, p2

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x43000000    # 128.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    iget-object v2, p2, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->k:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v4, p2, v0

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x42000000    # 32.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->gateManager:Lcom/prineside/tdi2/managers/GateManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager;->F:Lcom/prineside/tdi2/managers/GateManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/GateManager$Factories;->BARRIER_HEALTH:Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;

    iget-object v2, p2, Lcom/prineside/tdi2/gates/BarrierHealthGate$BarrierHealthGateFactory;->q:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getX()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getY()I

    move-result p2

    mul-int/lit16 p2, p2, 0x80

    int-to-float p2, p2

    sub-float v4, p2, v0

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x42000000    # 32.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    :goto_0
    return-void
.end method

.method public generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    iget-boolean p2, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-gate-health-high"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-gate-health-low"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    invoke-virtual {p2, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-object p2
.end method

.method public getPrestigeScore()D
    .locals 2

    const-wide v0, 0x3fa999999999999aL    # 0.05

    return-wide v0
.end method

.method public getRarity()Lcom/prineside/tdi2/enums/RarityType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->COMMON:Lcom/prineside/tdi2/enums/RarityType;

    return-object v0
.end method

.method public getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sameAs(Lcom/prineside/tdi2/Gate;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->sameAs(Lcom/prineside/tdi2/Gate;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/prineside/tdi2/gates/BarrierHealthGate;

    iget-boolean p1, p1, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Gate;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "moreThanHalf"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/tdi2/gates/BarrierHealthGate;->moreThanHalf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
