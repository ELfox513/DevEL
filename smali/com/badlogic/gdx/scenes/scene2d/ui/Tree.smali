.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# static fields
.field public static final f0:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field public final Q:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation
.end field

.field public S:F

.field public T:F

.field public U:F

.field public V:F

.field public W:F

.field public X:F

.field public Y:F

.field public Z:F

.field public a0:Z

.field public b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public d0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field public e0:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->f0:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->T:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->U:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setMultiple(Z)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->E()V

    return-void
.end method

.method public static A(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->A(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static B(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 5
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->h:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->B(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->q(Lcom/badlogic/gdx/utils/Array;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static z(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandAll()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public C(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;F)",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->getMultiple()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->f0:Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v1

    add-float/2addr v0, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_2

    iget-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    :cond_2
    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    return-object p1
.end method

.method public final D(Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)F"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v4

    sub-float/2addr v4, v3

    sub-float/2addr p3, v4

    sub-float v4, p3, v3

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    sub-float/2addr v4, v5

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    cmpg-float v4, p2, p3

    if-gez v4, :cond_0

    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return v6

    :cond_0
    add-float/2addr v3, v5

    sub-float/2addr p3, v3

    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->D(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    cmpl-float v2, p3, v6

    if-nez v2, :cond_1

    return v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final E()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->e0:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public final F(Lcom/badlogic/gdx/utils/Array;FFF)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FFF)F"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->T:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->U:F

    add-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    add-float v6, p2, p4

    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    add-float/2addr v7, v2

    add-float/2addr v6, v7

    goto :goto_1

    :cond_0
    add-float/2addr v6, v1

    :goto_1
    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v8, v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->pack()V

    :cond_1
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getHeight()F

    move-result v7

    sub-float/2addr p3, v7

    iget-object v7, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sub-float/2addr p3, v0

    iget-boolean v6, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    add-float/2addr v6, p2

    invoke-virtual {p0, v5, v6, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->F(Lcom/badlogic/gdx/utils/Array;FFF)F

    move-result p3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public final G()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minusOver:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_1
    return v0
.end method

.method public H(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->add(Ljava/lang/Object;)V

    :cond_2
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v2, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->H(Lcom/badlogic/gdx/utils/Array;FF)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void
.end method

.method public clearChildren(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    return-void
.end method

.method public collapseAll()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->q(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 12

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->t(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v1, p2

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->V:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->G()F

    move-result v11

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->w(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/utils/Array;FF)F

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    return-void
.end method

.method public expandAll()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->z(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public findExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->A(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TN;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->B(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->e0:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method public getIndentSpacing()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    return v0
.end method

.method public getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 3
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TN;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->D(Lcom/badlogic/gdx/utils/Array;FF)F

    :try_start_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->b0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    throw p1
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getOverNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getOverValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->r()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Z:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->r()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    return v0
.end method

.method public getRootNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSelectedNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getSelectedValue()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    return-object v0
.end method

.method public getYSpacing()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    return v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-ge v0, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_5

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result p1

    goto :goto_1

    :cond_5
    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b()I

    move-result p1

    add-int/2addr p1, v0

    :goto_1
    invoke-virtual {p2, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    return-void
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    return-void
.end method

.method public layout()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->r()V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->V:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->G()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->F(Lcom/badlogic/gdx/utils/Array;FFF)F

    return-void
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->a0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->G()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Z:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->s(Lcom/badlogic/gdx/utils/Array;FF)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->V:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->W:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_2
    return-void
.end method

.method public restoreExpandedValues(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TV;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->T:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->U:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    add-float v5, p2, p3

    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v7

    add-float/2addr v5, v7

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    :goto_1
    iget-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    add-float/2addr v6, v1

    add-float/2addr v5, v6

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    iget-object v7, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    :cond_1
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Y:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Z:F

    iget v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    add-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Z:F

    iget-boolean v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    add-float/2addr v5, p2

    invoke-virtual {p0, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->s(Lcom/badlogic/gdx/utils/Array;FF)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setIconSpacing(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->T:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->U:F

    return-void
.end method

.method public setIndentSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    return-void
.end method

.method public setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->V:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->W:F

    return-void
.end method

.method public setPadding(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->V:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->W:F

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->G()F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    :cond_0
    return-void
.end method

.method public setYSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    return-void
.end method

.method public t(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

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

.method public u(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public updateRootNodes()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getZIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->Q:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v3, p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public v(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FF)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v4

    invoke-interface {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public w(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 26
    .param p6    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFFTN;",
            "Lcom/badlogic/gdx/utils/Array<",
            "TN;>;FF)F"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p7

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getCullingArea()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v12

    const/4 v0, 0x0

    if-eqz v12, :cond_0

    iget v1, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v1

    move v13, v1

    move v14, v2

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    iget-object v15, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v17

    add-float v18, v16, p8

    add-float v1, v18, p9

    iget v2, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->T:F

    add-float v9, v1, v2

    const/4 v1, 0x0

    iget v8, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_9

    invoke-virtual {v11, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    iget-object v5, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->a:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v19

    iget v4, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->g:F

    if-eqz v12, :cond_3

    add-float v0, v19, v4

    cmpl-float v0, v0, v13

    if-ltz v0, :cond_1

    cmpg-float v0, v19, v14

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    cmpg-float v0, v19, v13

    if-gez v0, :cond_2

    move/from16 v0, v19

    goto/16 :goto_7

    :cond_2
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    move-object v8, v6

    goto/16 :goto_5

    :cond_3
    :goto_2
    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->R:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v0, :cond_4

    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_4

    add-float v0, v17, v19

    iget v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    div-float v1, v1, v20

    sub-float v21, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v22

    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    add-float v23, v4, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v3, p1

    move/from16 v24, v4

    move/from16 v4, v16

    move-object/from16 v25, v5

    move/from16 v5, v21

    move/from16 v21, v8

    move-object v8, v6

    move/from16 v6, v22

    move/from16 v22, v7

    move/from16 v7, v23

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->y(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto :goto_3

    :cond_4
    move/from16 v24, v4

    move-object/from16 v25, v5

    move/from16 v22, v7

    move/from16 v21, v8

    move-object v8, v6

    iget-object v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->c0:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-ne v8, v0, :cond_5

    iget-object v2, v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_5

    add-float v0, v17, v19

    iget v1, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    div-float v1, v1, v20

    sub-float v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->S:F

    add-float v7, v24, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p1

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->x(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_5
    :goto_3
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_6

    add-float v1, v17, v19

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    sub-float v4, v24, v0

    div-float v4, v4, v20

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    add-float v5, v1, v0

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p5

    move-object/from16 v7, p1

    invoke-interface {v7, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object v2, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->f:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->v(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    invoke-interface/range {p1 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    goto :goto_4

    :cond_6
    move-object/from16 v7, p1

    :goto_4
    iget-object v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_7

    invoke-virtual {v10, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->C(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;F)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    add-float v0, v17, v19

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    sub-float v4, v24, v1

    div-float v4, v4, v20

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p1

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->u(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FF)V

    :cond_7
    :goto_5
    iget-boolean v0, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->e:Z

    if-eqz v0, :cond_8

    iget-object v6, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_8

    iget v0, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->X:F

    add-float v20, p8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v23, v6

    move-object v6, v8

    move-object/from16 v7, v23

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->w(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFLcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/utils/Array;FF)F

    goto :goto_6

    :cond_8
    move/from16 v20, v9

    :goto_6
    add-int/lit8 v7, v22, 0x1

    move/from16 v0, v19

    move/from16 v9, v20

    move/from16 v8, v21

    goto/16 :goto_1

    :cond_9
    :goto_7
    return v0
.end method

.method public x(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public y(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "FFFF)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method
