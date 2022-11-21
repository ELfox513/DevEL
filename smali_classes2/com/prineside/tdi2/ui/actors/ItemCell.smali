.class public Lcom/prineside/tdi2/ui/actors/ItemCell;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;
    }
.end annotation


# static fields
.field public static final COMPACT_SIZE_COEFF:F = 0.75f

.field public static final HEIGHT:F = 140.0f

.field public static final WIDTH:F = 128.0f

.field public static o0:[F

.field public static p0:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

.field public N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public X:Z

.field public Y:Z

.field public Z:Lcom/prineside/tdi2/Item;

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Ljava/lang/String;

.field public k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public l0:F

.field public m0:J

.field public n0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/ui/actors/ItemCell;->o0:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/actors/ItemCell;->p0:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Y:Z

    iput v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->j0:Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->l0:F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v1, 0x43000000    # 128.0f

    const/high16 v2, 0x430c0000    # 140.0f

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/actors/ItemCell;)Lcom/prineside/tdi2/Item;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    return-object p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/actors/ItemCell;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic r()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/actors/ItemCell;->p0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/actors/ItemCell;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    return p0
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/actors/ItemCell;)J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->m0:J

    return-wide v0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/actors/ItemCell;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Y:Z

    return p1
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/actors/ItemCell;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->n0:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public act(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Y:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->x()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setup()V

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->m0:J

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->n0:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;

    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;

    invoke-direct {v0, p0, p2}, Lcom/prineside/tdi2/ui/actors/ItemCell$GcListener;-><init>(Lcom/prineside/tdi2/ui/actors/ItemCell;Lcom/prineside/tdi2/ui/actors/ItemCell$1;)V

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->n0:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    return v0
.end method

.method public getItem()Lcom/prineside/tdi2/Item;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->g0:Z

    return v0
.end method

.method public reveal()V
    .locals 8

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setup()V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCovered(Z)V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->sine:Lcom/badlogic/gdx/math/Interpolation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3e800000    # 0.25f

    invoke-static {v3, v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v3

    const v7, 0x3f8ccccd    # 1.1f

    invoke-static {v7, v7, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v4

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ItemCell$1;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/actors/ItemCell$1;-><init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v4

    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-static {v5, v5, v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ItemCell$2;

    invoke-direct {v5, p0}, Lcom/prineside/tdi2/ui/actors/ItemCell$2;-><init>(Lcom/prineside/tdi2/ui/actors/ItemCell;)V

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public setColRow(II)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->y()V

    :cond_0
    return-void
.end method

.method public setCompact()V
    .locals 3

    const/high16 v0, 0x42c00000    # 96.0f

    const/high16 v1, 0x42d20000    # 105.0f

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->x()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setup()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    :goto_0
    return-void
.end method

.method public setCornerText(Ljava/lang/CharSequence;)V
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->j0:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "item-cell-number-bg"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x422c0000    # 43.0f

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x42c20000    # 97.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x41300000    # 11.0f

    const/high16 v3, 0x42d20000    # 105.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v1, 0x42180000    # 38.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 p1, 0x41100000    # 9.0f

    const/high16 v2, 0x42d60000    # 107.0f

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCount(I)V
    .locals 5

    iput p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v3, 0x0

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x43000000    # 128.0f

    mul-float v3, v3, v0

    const/high16 v4, 0x41900000    # 18.0f

    mul-float v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v0, 0x0

    if-lt p1, v1, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-boolean v3, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const v1, 0x989680

    if-ge p1, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    int-to-double v2, p1

    invoke-static {v2, v3, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCovered(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->y()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->l0:F

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V

    :cond_0
    return-void
.end method

.method public setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V
    .locals 6

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->l0:F

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x42a00000    # 80.0f

    mul-float v3, v3, v0

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v4, v0, v3

    const/high16 v5, 0x42380000    # 46.0f

    mul-float v0, v0, v5

    invoke-virtual {v2, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sub-float v0, p2, v1

    neg-float v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    mul-float v1, v1, p2

    iget-object v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    mul-float v2, v2, p2

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/high16 p1, 0x41900000    # 18.0f

    if-lt p3, p2, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-float/2addr p1, v0

    const/high16 v2, 0x420c0000    # 35.0f

    add-float/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-float/2addr p1, v0

    const/high16 v2, 0x41b80000    # 23.0f

    add-float/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1

    :cond_4
    if-lt p3, p2, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-float/2addr v3, v0

    add-float/2addr v0, v5

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-float/2addr v3, v0

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    xor-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_6
    invoke-virtual {p0, p3}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCount(I)V

    return-void
.end method

.method public setItem(Lcom/prineside/tdi2/Item;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-eq v0, p1, :cond_4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v3, 0x42a00000    # 80.0f

    mul-float v2, v2, v3

    invoke-virtual {p1, v2, v0}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->isCountable()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p2, 0x0

    :cond_2
    invoke-virtual {p0, v2, v1, p2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V

    :goto_1
    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->y()V

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCount(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setItem(Lcom/prineside/tdi2/ItemStack;)V
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    return-void
.end method

.method public setNoRarityBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->d0:Z

    return-void
.end method

.method public setNotificationBubbleEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->i0:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "count-bubble"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42010000    # 32.25f

    const/high16 v2, 0x42130000    # 36.75f

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, 0x42c40000    # 98.0f

    const/high16 v2, 0x42d80000    # 108.0f

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->g0:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-nez p1, :cond_0

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x430a3d71    # 138.24f

    mul-float v1, v1, p1

    const v2, 0x43173334    # 151.20001f

    mul-float v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, -0x3f5c28f6    # -5.12f

    mul-float v1, v1, p1

    const v2, -0x3f4ccccd    # -5.6f

    mul-float p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iget v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "item-cell-a-shape"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "item-cell-b-shape"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setup()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    invoke-virtual {p0, v0, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/Item;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->l0:F

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->a0:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setIconAndCount(Lcom/badlogic/gdx/scenes/scene2d/Actor;FI)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->j0:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCornerText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->i0:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setNotificationBubbleEnabled(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->g0:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setSelected(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->h0:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->showRays(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCovered(Z)V

    return-void
.end method

.method public shine(ZZ)V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setup()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const/4 v5, 0x2

    const/high16 v6, 0x430c0000    # 140.0f

    const/high16 v7, 0x43000000    # 128.0f

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    new-instance p1, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {p1}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    mul-float v8, v2, v7

    mul-float v2, v2, v6

    invoke-virtual {p1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->clearParticles()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemCellFlashParticles:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    sget-object v2, Lcom/prineside/tdi2/ui/actors/ItemCell;->o0:[F

    const/4 v8, 0x0

    iget v9, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v9, v2, v8

    const/4 v8, 0x1

    iget v9, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v9, v2, v8

    iget v8, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v8, v2, v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/ui/actors/ItemCell;->o0:[F

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMinParticleCount(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    mul-int/lit8 v9, v9, 0x8

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setMaxParticleCount(I)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v9

    const/high16 v10, 0x44960000    # 1200.0f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x43fa0000    # 500.0f

    mul-float v11, v11, v12

    add-float/2addr v11, v10

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v8

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    mul-float v10, v10, v11

    add-float/2addr v10, v9

    const/high16 v9, 0x43c80000    # 400.0f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42200000    # 40.0f

    mul-float v11, v11, v12

    add-float/2addr v11, v9

    invoke-virtual {v8, v10, v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    goto :goto_2

    :cond_5
    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v1

    const/high16 v8, 0x428c0000    # 70.0f

    mul-float v8, v8, v1

    iget-object v9, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v9, p1, v2, v8}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    :cond_6
    if-eqz p2, :cond_8

    iget p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iget p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    add-int/2addr p1, p2

    rem-int/2addr p1, v5

    if-nez p1, :cond_7

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "item-cell-a-shape"

    invoke-virtual {p2, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "item-cell-b-shape"

    invoke-virtual {p2, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_3
    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    mul-float v7, v7, v1

    mul-float v6, v6, v1

    invoke-virtual {p1, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const p2, 0x3e19999a    # 0.15f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float v2, v2, v3

    add-float/2addr v2, p2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object p2

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ItemCell$3;

    invoke-direct {v2, p0, v4, v1}, Lcom/prineside/tdi2/ui/actors/ItemCell$3;-><init>(Lcom/prineside/tdi2/ui/actors/ItemCell;Lcom/badlogic/gdx/graphics/Color;F)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v0, v0, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_4

    :cond_8
    new-instance p1, Lcom/prineside/tdi2/ui/actors/AnimatedImage;

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/Animation;

    const v0, 0x3c886595    # 0.01665f

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "item-cell-glow"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    invoke-direct {p1, p2}, Lcom/prineside/tdi2/ui/actors/AnimatedImage;-><init>(Lcom/badlogic/gdx/graphics/g2d/Animation;)V

    sget-object p2, Lcom/prineside/tdi2/ui/actors/ItemCell;->p0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p2, v0, v2}, Lcom/badlogic/gdx/graphics/Color;->lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Lcom/prineside/tdi2/ui/actors/ItemCell;->p0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    mul-float v7, v7, v1

    mul-float v1, v1, v6

    invoke-virtual {p1, v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object p2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_4
    return-void
.end method

.method public showRays(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->h0:Z

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    const/high16 v0, 0x43400000    # 192.0f

    if-nez p1, :cond_0

    new-instance p1, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p1, v0, v1}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    mul-float v0, v0, p1

    iput v0, v1, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;->size:F

    const/high16 v0, -0x3d800000    # -64.0f

    mul-float v0, v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    const/high16 v3, -0x3db00000    # -52.0f

    mul-float p1, p1, v3

    mul-float p1, p1, v2

    invoke-virtual {v1, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;->restart()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    :cond_a
    return-void
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Y:Z

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->M:Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->N:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->T:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->V:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-eqz v1, :cond_b

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->k0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_b
    return-void
.end method

.method public final y()V
    .locals 5

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->X:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->w()V

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->e0:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x43000000    # 128.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x430c0000    # 140.0f

    mul-float v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Z:Lcom/prineside/tdi2/Item;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->d0:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->f0:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->itemCellRarityCoats:[[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget v3, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iget v4, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_3
    iget v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "item-cell-a"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "item-cell-b"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->U:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz v1, :cond_6

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->itemCellShapes:[Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget v2, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->b0:I

    iget v3, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->c0:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ItemCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v1, 0x3e0f5c29    # 0.14f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Actor not set up yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
