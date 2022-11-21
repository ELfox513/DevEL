.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    }
.end annotation


# instance fields
.field public A0:F

.field public B0:F

.field public C0:F

.field public D0:Z

.field public E0:Z

.field public F0:Z

.field public G0:Z

.field public H0:Z

.field public I0:Z

.field public J0:Z

.field public K0:I

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public final R:Lcom/badlogic/gdx/math/Rectangle;

.field public final S:Lcom/badlogic/gdx/math/Rectangle;

.field public final T:Lcom/badlogic/gdx/math/Rectangle;

.field public final U:Lcom/badlogic/gdx/math/Rectangle;

.field public final V:Lcom/badlogic/gdx/math/Rectangle;

.field public final W:Lcom/badlogic/gdx/math/Rectangle;

.field public X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:F

.field public g0:F

.field public h0:F

.field public i0:Z

.field public j0:Z

.field public final k0:Lcom/badlogic/gdx/math/Vector2;

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:F

.field public p0:F

.field public q0:F

.field public r0:F

.field public s0:Z

.field public t0:Z

.field public u0:F

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:Z

.field public z0:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 2
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->W:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->b0:Z

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->k0:Lcom/badlogic/gdx/math/Vector2;

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->m0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->n0:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->p0:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->r0:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t0:Z

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u0:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z0:Z

    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    const/high16 v1, 0x43480000    # 200.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->H0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->J0:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 p1, 0x43160000    # 150.0f

    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u()Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->r()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "style cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    return-void
.end method

.method public B(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    return-void
.end method

.method public act(F)V
    .locals 9

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q0:F

    sub-float/2addr v4, p1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q0:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_0

    sub-float/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_7

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u0:F

    div-float/2addr v1, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    mul-float v5, v5, v1

    mul-float v5, v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    mul-float v5, v5, v1

    mul-float v5, v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s()V

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    neg-float v5, v4

    cmpl-float v5, v1, v5

    if-nez v5, :cond_2

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    add-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    neg-float v5, v4

    cmpl-float v5, v1, v5

    if-nez v5, :cond_4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    :cond_4
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    add-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_5

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_6

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->m0:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_d

    if-nez v0, :cond_d

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    const v5, 0x3dcccccd    # 0.1f

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v6, v7

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    :cond_8
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    :cond_9
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x43480000    # 200.0f

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_b

    cmpg-float v1, v4, v5

    if-gez v1, :cond_a

    mul-float v1, p1, v7

    sub-float v8, v5, v4

    mul-float v8, v8, v6

    mul-float v8, v8, p1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A(F)V

    goto :goto_1

    :cond_a
    mul-float v1, p1, v7

    sub-float v8, v4, v5

    mul-float v8, v8, v6

    mul-float v8, v8, p1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A(F)V

    :goto_1
    const/4 v1, 0x1

    :cond_b
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_f

    cmpg-float v1, v4, v5

    if-gez v1, :cond_c

    mul-float v7, v7, p1

    sub-float v1, v5, v4

    mul-float v1, v1, v6

    mul-float v1, v1, p1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B(F)V

    goto :goto_2

    :cond_c
    mul-float v7, v7, p1

    sub-float v1, v4, v5

    mul-float v1, v1, v6

    mul-float v1, v1, p1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B(F)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_d
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A(F)V

    :cond_e
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B(F)V

    :cond_f
    :goto_3
    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y0:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_11

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    sub-float/2addr v4, v1

    neg-float v5, v0

    mul-float v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    :cond_10
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    :cond_11
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_12

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    sub-float v6, v5, v0

    neg-float v6, v6

    mul-float v4, v4, v6

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    goto :goto_4

    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z0:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_13

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    sub-float/2addr v4, v1

    neg-float v5, v0

    mul-float v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    cmpl-float p1, v0, v3

    if-lez p1, :cond_15

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    goto :goto_6

    :cond_13
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    sub-float v5, v4, v0

    neg-float v5, v5

    mul-float v3, v3, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    cmpg-float p1, v0, v4

    if-gez p1, :cond_15

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    goto :goto_6

    :cond_14
    move v2, v1

    :cond_15
    :goto_6
    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_16
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use ScrollPane#setActor."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->cancel()V

    return-void
.end method

.method public cancelTouchFocus()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->g(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentX()F

    move-result v3

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v1, v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, p2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_3
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v5, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->k(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipEnd()V

    :cond_4
    iget p2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, p2, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->p0:F

    div-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    mul-float v1, v1, p2

    :cond_5
    move v7, v1

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->m(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->a(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->j()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->h(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->l(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipEnd()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->n(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    return-void
.end method

.method public fling(FFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getFadeScrollBars()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    return v0
.end method

.method public getMaxX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOverscrollDistance()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    add-float/2addr v0, v2

    :cond_5
    return v0
.end method

.method public getPrefWidth()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    add-float/2addr v0, v2

    :cond_5
    return v0
.end method

.method public getScrollBarHeight()F
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    return v1
.end method

.method public getScrollBarWidth()F
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    return v1
.end method

.method public getScrollHeight()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getScrollPercentX()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollPercentY()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollWidth()F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    return-object v0
.end method

.method public getVariableSizeKnobs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->J0:Z

    return v0
.end method

.method public getVelocityX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    return v0
.end method

.method public getVisualScrollPercentX()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollPercentY()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollX()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    :goto_0
    return v0
.end method

.method public getVisualScrollY()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    :goto_0
    return v0
.end method

.method public getWidget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation build Lcom/badlogic/gdx/utils/Null;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_3

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->i0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->j0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isBottomEdge()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDragging()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->K0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlinging()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->v0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceScrollX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->D0:Z

    return v0
.end method

.method public isForceScrollY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->E0:Z

    return v0
.end method

.method public isLeftEdge()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPanning()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public isRightEdge()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isScrollX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    return v0
.end method

.method public isScrollY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    return v0
.end method

.method public isScrollingDisabledX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    return v0
.end method

.method public isScrollingDisabledY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    return v0
.end method

.method public isTopEdge()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public layout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v5

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v6

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v7

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v11, v8, v5

    sub-float/2addr v11, v6

    sub-float/2addr v9, v7

    sub-float v7, v9, v2

    invoke-virtual {v10, v5, v2, v11, v7}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v7, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v11, :cond_5

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :cond_5
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v12, v11, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v12, :cond_6

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v12

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v11

    goto :goto_3

    :cond_6
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v12

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v11

    :goto_3
    iget-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->D0:Z

    if-nez v13, :cond_8

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v13, v12, v13

    if-lez v13, :cond_7

    iget-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v13, 0x1

    :goto_5
    iput-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->E0:Z

    if-nez v14, :cond_a

    iget-object v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v14, v11, v14

    if-lez v14, :cond_9

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v14, 0x1

    :goto_7
    iput-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    if-nez v4, :cond_f

    if-eqz v14, :cond_c

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v15, v10

    iput v15, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    move/from16 v16, v2

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    if-nez v2, :cond_b

    iget v2, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v2, v10

    iput v2, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    :cond_b
    if-nez v13, :cond_d

    cmpl-float v2, v12, v15

    if-lez v2, :cond_d

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    goto :goto_8

    :cond_c
    move/from16 v16, v2

    :cond_d
    :goto_8
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v4, v7

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-boolean v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->b0:Z

    if-eqz v13, :cond_e

    iget v13, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v13, v7

    iput v13, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    :cond_e
    if-nez v14, :cond_10

    cmpl-float v4, v11, v4

    if-lez v4, :cond_10

    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    if-nez v4, :cond_10

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v4, v10

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    if-nez v4, :cond_10

    iget v4, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v4, v10

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto :goto_9

    :cond_f
    move/from16 v16, v2

    :cond_10
    :goto_9
    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto :goto_a

    :cond_11
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_a
    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_b

    :cond_12
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v4, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_b
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float v12, v2, v12

    iput v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float v11, v4, v11

    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    const/4 v13, 0x0

    invoke-static {v11, v13, v12}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v11

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    invoke-static {v11, v13, v12}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v11

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v11, :cond_19

    if-eqz v3, :cond_18

    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    if-eqz v11, :cond_13

    move v11, v5

    goto :goto_c

    :cond_13
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->x:F

    :goto_c
    iget-boolean v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->b0:Z

    if-eqz v12, :cond_14

    move/from16 v9, v16

    goto :goto_d

    :cond_14
    sub-float/2addr v9, v7

    :goto_d
    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v12, v11, v9, v13, v7}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v9, :cond_15

    iget-boolean v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    if-eqz v9, :cond_15

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v11, v10

    iput v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    if-nez v11, :cond_15

    iget v11, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v11, v10

    iput v11, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    :cond_15
    iget-boolean v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->J0:Z

    if-eqz v9, :cond_16

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v11

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v12, v12, v13

    div-float/2addr v12, v2

    float-to-int v12, v12

    int-to-float v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto :goto_e

    :cond_16
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v11

    iput v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    :goto_e
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v11, v11, v2

    if-lez v11, :cond_17

    const/4 v11, 0x0

    iput v11, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    :cond_17
    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v3

    iput v3, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v12, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v9, v12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentX()F

    move-result v12

    mul-float v9, v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v11, v9

    iput v11, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v9, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_f

    :cond_18
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3, v9, v9, v9, v9}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    :cond_19
    :goto_f
    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v3, :cond_21

    if-eqz v1, :cond_20

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    if-eqz v3, :cond_1a

    sub-float v3, v8, v6

    sub-float/2addr v3, v10

    goto :goto_10

    :cond_1a
    move v3, v5

    :goto_10
    iget-boolean v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    if-eqz v9, :cond_1b

    move/from16 v9, v16

    goto :goto_11

    :cond_1b
    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    :goto_11
    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v11, v3, v9, v10, v12}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v3, :cond_1c

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v9, v7

    iput v9, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-boolean v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->b0:Z

    if-eqz v9, :cond_1c

    iget v9, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v9, v7

    iput v9, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    :cond_1c
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->J0:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    iget-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v10, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v9, v9, v10

    div-float/2addr v9, v4

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_12

    :cond_1d
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v7

    iput v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :goto_12
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_1e

    const/4 v7, 0x0

    iput v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :cond_1e
    iget-boolean v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    if-eqz v7, :cond_1f

    sub-float/2addr v8, v6

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v5, v8, v1

    :cond_1f
    iput v5, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float v3, v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    add-float/2addr v5, v3

    iput v5, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_13

    :cond_20
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    :cond_21
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z()V

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v3, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v3, :cond_22

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_22
    return-void
.end method

.method public q()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public r()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "actor cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-object p1
.end method

.method public s()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->H0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    neg-float v3, v2

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    add-float/2addr v4, v2

    invoke-static {v0, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z0:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    neg-float v2, v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    add-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    return-void
.end method

.method public scrollTo(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollTo(FFFFZZ)V

    return-void
.end method

.method public scrollTo(FFFFZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr p3, p5

    div-float/2addr p3, v1

    add-float/2addr p1, p3

    goto :goto_0

    :cond_0
    add-float/2addr p3, p1

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr p3, p5

    invoke-static {v0, p3, p1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    :goto_0
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const/4 p5, 0x0

    invoke-static {p1, p5, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    sub-float/2addr p3, p2

    if-eqz p6, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, p4

    div-float/2addr p1, v1

    add-float/2addr p3, p1

    goto :goto_1

    :cond_1
    add-float/2addr p4, p3

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p3, p2

    invoke-static {p1, p4, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p3

    :goto_1
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    invoke-static {p3, p5, p1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be the ScrollPane."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCancelTouchFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->s0:Z

    return-void
.end method

.method public setClamp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->H0:Z

    return-void
.end method

.method public setFadeScrollBars(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->l0:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->p0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public setFlickScroll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->t0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public setFlickScrollTapSquareSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->X:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapSquareSize(F)V

    return-void
.end method

.method public setFlingTime(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->u0:F

    return-void
.end method

.method public setForceScroll(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->D0:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->E0:Z

    return-void
.end method

.method public setOverscroll(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y0:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->z0:Z

    return-void
.end method

.method public setScrollBarPositions(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->b0:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->a0:Z

    return-void
.end method

.method public setScrollBarTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->n0:Z

    return-void
.end method

.method public setScrollPercentX(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    return-void
.end method

.method public setScrollPercentY(F)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    return-void
.end method

.method public setScrollX(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x(F)V

    return-void
.end method

.method public setScrollY(F)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->y(F)V

    return-void
.end method

.method public setScrollbarsOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->I0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public setScrollbarsVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->p0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->r0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q0:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->o0:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->q0:F

    :goto_0
    return-void
.end method

.method public setScrollingDisabled(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->F0:Z

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->G0:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    return-void
.end method

.method public setSmoothScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->m0:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVariableSizeKnobs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->J0:Z

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->w0:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->x0:F

    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public setupFadeScrollBars(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->p0:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->r0:F

    return-void
.end method

.method public setupOverscroll(FFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->A0:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->B0:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->C0:F

    return-void
.end method

.method public t(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-gtz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-boolean p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float p5, p5, v0

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p2, :cond_5

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->corner:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p5, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v2, p4, p5

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_3
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->S:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_4
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->T:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_5
    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->U:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_6
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->V:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_7
    return-void
.end method

.method public u()Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    return-object v0
.end method

.method public updateVisualScroll()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    return-void
.end method

.method public v()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const v1, 0x3f666666    # 0.9f

    mul-float v1, v1, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->g0:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public w()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const v1, 0x3f666666    # 0.9f

    mul-float v1, v1, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public x(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->c0:F

    return-void
.end method

.method public y(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->d0:F

    return-void
.end method

.method public final z()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Y:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->e0:F

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Z:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->f0:F

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->h0:F

    :goto_1
    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->Q:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->W:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->R:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v5, v1

    iput v5, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v0

    iput v1, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v0, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    :cond_2
    return-void
.end method
