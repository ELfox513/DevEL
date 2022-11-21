.class public Lcom/prineside/tdi2/ui/actors/HorizontalSlider;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# static fields
.field public static final HANDLE_WIDTH:F = 56.0f

.field public static final HEIGHT:F = 48.0f


# instance fields
.field public M:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public P:D

.field public Q:D

.field public R:D

.field public S:Z


# direct methods
.method public constructor <init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FDDD",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v2, p1

    move-wide/from16 v8, p2

    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v11, 0x42400000    # 48.0f

    invoke-virtual {v7, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    move-object/from16 v0, p8

    iput-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->M:Lcom/prineside/tdi2/utils/ObjectRetriever;

    iput-wide v8, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->P:D

    move-wide/from16 v12, p4

    iput-wide v12, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->Q:D

    move-wide/from16 v14, p6

    iput-wide v14, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->R:D

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "blank"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x41800000    # 16.0f

    sub-float v1, v2, v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3e0f5c29    # 0.14f

    invoke-virtual {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v0, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v1, 0x42600000    # 56.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v10, v3

    move-wide/from16 v3, p6

    move-object v11, v6

    const/high16 v12, 0x41000000    # 8.0f

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$1;-><init>(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;FDD)V

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-horizontal-slider-handle"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42000000    # 32.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, v7, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider$2;-><init>(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;DD)V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setValue(DZ)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->P:D

    return-wide v0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/actors/HorizontalSlider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->S:Z

    return p0
.end method


# virtual methods
.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->P:D

    return-wide v0
.end method

.method public setNotifyOnDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->S:Z

    return-void
.end method

.method public setValue(DZ)V
    .locals 6

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->Q:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-wide v2, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->R:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    move-wide p1, v2

    :cond_1
    iput-wide p1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->P:D

    sub-double v4, p1, v0

    sub-double/2addr v2, v0

    div-double/2addr v4, v2

    double-to-float v0, v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    const/high16 v2, 0x42600000    # 56.0f

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, -0x3f000000    # -8.0f

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->M:Lcom/prineside/tdi2/utils/ObjectRetriever;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
