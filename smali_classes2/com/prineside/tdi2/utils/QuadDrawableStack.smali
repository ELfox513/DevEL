.class public Lcom/prineside/tdi2/utils/QuadDrawableStack;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/TransformDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;
    }
.end annotation


# instance fields
.field public h:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;",
            ">;"
        }
    .end annotation
.end field

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/QuadDrawableStack;->setQuadActors(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/utils/QuadDrawableStack;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/utils/QuadDrawableStack;->setQuadActors(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 5

    iget v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->i:F

    div-float/2addr p4, v0

    iget v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->j:F

    div-float/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget v3, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->x:F

    mul-float v3, v3, p4

    add-float/2addr v3, p2

    iget v4, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->y:F

    mul-float v4, v4, p5

    add-float/2addr v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

    iget v3, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->width:F

    mul-float v3, v3, p4

    iget v4, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->height:F

    mul-float v4, v4, p5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v1, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->actor:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2}, Lcom/prineside/tdi2/ui/actors/QuadActor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/utils/QuadDrawableStack;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public setQuadActors(Lcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->h:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->width:F

    iget v4, v2, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->x:F

    add-float/2addr v3, v4

    iget v4, v2, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->height:F

    iget v2, v2, Lcom/prineside/tdi2/utils/QuadDrawableStack$QuadActorConfig;->y:F

    add-float/2addr v4, v2

    cmpl-float v2, v3, p1

    if-lez v2, :cond_0

    move p1, v3

    :cond_0
    cmpl-float v2, v4, v0

    if-lez v2, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinWidth(F)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/BaseDrawable;->setMinHeight(F)V

    iput p1, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->i:F

    iput v0, p0, Lcom/prineside/tdi2/utils/QuadDrawableStack;->j:F

    return-void
.end method
