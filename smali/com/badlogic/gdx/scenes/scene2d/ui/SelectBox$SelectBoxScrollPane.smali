.class public Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectBoxScrollPane"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;"
    }
.end annotation


# instance fields
.field public final L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;"
        }
    .end annotation
.end field

.field public M0:I

.field public final N0:Lcom/badlogic/gdx/math/Vector2;

.field public final O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public P0:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

.field public Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->scrollStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setOverscroll(ZZ)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollingDisabled(ZZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->C()Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->setTypeToSelect(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$1;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$2;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->P0:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    return-void
.end method


# virtual methods
.method public C()Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$4;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxStyle;->listStyle:Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane$4;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V

    return-object v0
.end method

.method public act(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->act(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toFront()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->S:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Vector2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->hide()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->P0:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->f(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    return-void
.end method

.method public getList()Lcom/badlogic/gdx/scenes/scene2d/ui/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    return-object v0
.end method

.method public getSelectBox()Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasParent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->P0:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->k(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public show(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->P0:Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getKeyListener()Lcom/badlogic/gdx/scenes/scene2d/InputListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getItemHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->M0:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->J:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->J:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    sub-float/2addr v3, v2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    cmpl-float v5, v1, v2

    if-lez v5, :cond_5

    cmpl-float v5, v3, v2

    if-lez v5, :cond_4

    const/4 v4, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    :goto_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->N0:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getPrefWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelectedIndex()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v7, v1, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollTo(FFFFZZ)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->updateVisualScroll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v1

    if-nez v1, :cond_7

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->Q0:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_7
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->K:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->getSelected()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->O0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox$SelectBoxScrollPane;->L0:Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;

    invoke-virtual {p1, p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/SelectBox;->l(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    return-void
.end method
