.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;"
    }
.end annotation


# instance fields
.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

.field public final J:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field public K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation
.end field

.field public L:Lcom/badlogic/gdx/math/Rectangle;

.field public M:F

.field public N:F

.field public O:F

.field public P:I

.field public Q:I

.field public R:I

.field public S:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field public T:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    const/16 v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->P:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setRequired(Z)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->S:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 25

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    move-object/from16 v13, p1

    invoke-interface {v13, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    iget-object v3, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    add-float/2addr v0, v4

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v5

    sub-float/2addr v2, v5

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v4, v3

    sub-float/2addr v1, v4

    :cond_0
    move v15, v0

    move/from16 v16, v1

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v17

    sub-float v0, v16, v17

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v1

    sub-float v18, v0, v1

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v1

    sub-float v19, v0, v1

    iget v0, v12, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v4, v4, p2

    invoke-virtual {v9, v0, v1, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    const/4 v0, 0x0

    move/from16 v20, v2

    const/4 v7, 0x0

    :goto_0
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v1, :cond_8

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->L:Lcom/badlogic/gdx/math/Rectangle;

    if-eqz v1, :cond_3

    iget v2, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    sub-float v2, v20, v2

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v3

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    cmpl-float v1, v20, v3

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v0, v20, v3

    if-gez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    move/from16 v22, v7

    goto/16 :goto_4

    :cond_3
    :goto_1
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v21

    const/4 v0, 0x0

    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    if-ne v1, v7, :cond_4

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    :goto_2
    move-object v2, v1

    goto :goto_3

    :cond_4
    if-eqz v21, :cond_5

    iget v0, v11, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v11, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v11, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v11, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    move-object v2, v10

    goto :goto_3

    :cond_5
    iget v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    if-ne v1, v7, :cond_6

    iget-object v1, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_3
    add-float v22, v14, v20

    iget v5, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    sub-float v4, v22, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v15

    move/from16 v23, v5

    move/from16 v5, v16

    move-object/from16 v24, v6

    move/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->i(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V

    add-float v5, v15, v17

    sub-float v6, v22, v19

    move-object v2, v9

    move v3, v7

    move-object/from16 v4, v24

    move/from16 v22, v7

    move/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;ILjava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    if-eqz v21, :cond_7

    iget v0, v12, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v12, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v12, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v3, v3, p2

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    :cond_7
    :goto_4
    iget v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    sub-float v20, v20, v0

    add-int/lit8 v7, v22, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_5
    return-void
.end method

.method public g(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_0
    return-void
.end method

.method public getAlignment()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->P:I

    return v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->L:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public getItemAt(F)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemIndexAt(F)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    return v0
.end method

.method public getItemIndexAt(F)I
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    sub-float/2addr p1, v1

    :cond_0
    sub-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getItems()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->S:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-object v0
.end method

.method public getOverItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->N:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    return v0
.end method

.method public getPressedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelected()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->first()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    return-object v0
.end method

.method public h(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/BitmapFont;ILjava/lang/Object;FFF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont;",
            "ITT;FFF)",
            "Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->P:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v11, "..."

    move-object v1, p2

    move-object v2, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v1

    return-object v1
.end method

.method public i(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)V
    .locals 6
    .param p2    # Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_0
    return-void
.end method

.method public layout()V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getCapHeight()F

    move-result v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getDescent()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    const-class v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_0

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget v5, v3, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v0

    add-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->O:F

    mul-float v0, v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->N:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->M:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->N:F

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->N:F

    :cond_1
    return-void
.end method

.method public setAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->P:I

    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/math/Rectangle;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->L:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result p1

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newItems cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setItems([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->R:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->Q:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefWidth()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getPrefHeight()F

    move-result p1

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newItems cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelected(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    :goto_0
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 3

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index must be >= -1 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->J:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTypeToSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->T:Z

    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
