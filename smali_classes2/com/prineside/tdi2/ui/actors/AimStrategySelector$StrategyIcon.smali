.class Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/actors/AimStrategySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StrategyIcon"
.end annotation


# instance fields
.field public M:F

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final P:Lcom/badlogic/gdx/graphics/Color;

.field public final synthetic Q:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/AimStrategySelector;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->Q:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->P:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v0, "ui-aim-strategy-switch-item-background"

    invoke-virtual {p3, v0}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p3, p2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 p1, 0x42bc0000    # 94.0f

    const/high16 p2, 0x42a80000    # 84.0f

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public p(F)V
    .locals 8

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->M:F

    invoke-static {p1}, Ljava/lang/StrictMath;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v0, v1, v0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/high16 v2, 0x431b0000    # 155.0f

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    const/high16 v2, 0x42280000    # 42.0f

    sub-float v3, v1, v0

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float v3, v3, v4

    sub-float v3, v1, v3

    const/high16 v4, 0x42bc0000    # 94.0f

    mul-float v4, v4, v3

    const/high16 v5, 0x42a80000    # 84.0f

    mul-float v5, v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v4, v6

    sub-float/2addr p1, v7

    mul-float v6, v6, v5

    sub-float/2addr v2, v6

    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->P:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 p1, 0x42800000    # 64.0f

    mul-float p1, p1, v3

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v3, v3, v4

    iget-object v4, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v1, v1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/AimStrategySelector$StrategyIcon;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    return-void
.end method
