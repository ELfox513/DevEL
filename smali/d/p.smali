.class public Ld/p;
.super Ld/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/p$d;
    }
.end annotation


# static fields
.field public static final E:Landroid/view/animation/Interpolator;

.field public static final F:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Z

.field public final B:Ld0/q1;

.field public final C:Ld0/q1;

.field public final D:Ld0/s1;

.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroid/app/Activity;

.field public d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public e:Landroidx/appcompat/widget/ActionBarContainer;

.field public f:Lj/t0;

.field public g:Landroidx/appcompat/widget/ActionBarContextView;

.field public h:Landroid/view/View;

.field public i:Landroidx/appcompat/widget/d;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Z

.field public m:Ld/p$d;

.field public n:Lh/b;

.field public o:Lh/b$a;

.field public p:Z

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lh/h;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Ld/p;->E:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ld/p;->F:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Ld/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/p;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Ld/p;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/p;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ld/p;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/p;->t:Z

    iput-boolean v0, p0, Ld/p;->x:Z

    new-instance v0, Ld/p$a;

    invoke-direct {v0, p0}, Ld/p$a;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->B:Ld0/q1;

    new-instance v0, Ld/p$b;

    invoke-direct {v0, p0}, Ld/p$b;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->C:Ld0/q1;

    new-instance v0, Ld/p$c;

    invoke-direct {v0, p0}, Ld/p$c;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->D:Ld0/s1;

    iput-object p1, p0, Ld/p;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/p;->C(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ld/p;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Ld/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/p;->j:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Ld/p;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/p;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Ld/p;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/p;->t:Z

    iput-boolean v0, p0, Ld/p;->x:Z

    new-instance v0, Ld/p$a;

    invoke-direct {v0, p0}, Ld/p$a;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->B:Ld0/q1;

    new-instance v0, Ld/p$b;

    invoke-direct {v0, p0}, Ld/p$b;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->C:Ld0/q1;

    new-instance v0, Ld/p$c;

    invoke-direct {v0, p0}, Ld/p$c;-><init>(Ld/p;)V

    iput-object v0, p0, Ld/p;->D:Ld0/s1;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/p;->C(Landroid/view/View;)V

    return-void
.end method

.method public static v(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0}, Lj/t0;->m()I

    move-result v0

    return v0
.end method

.method public final B()V
    .locals 2

    iget-boolean v0, p0, Ld/p;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/p;->w:Z

    iget-object v1, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Ld/p;->L(Z)V

    :cond_1
    return-void
.end method

.method public final C(Landroid/view/View;)V
    .locals 5

    sget v0, Lc/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    sget v0, Lc/f;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld/p;->z(Landroid/view/View;)Lj/t0;

    move-result-object v0

    iput-object v0, p0, Ld/p;->f:Lj/t0;

    sget v0, Lc/f;->f:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lc/f;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    if-eqz v0, :cond_7

    iget-object v1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lj/t0;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld/p;->a:Landroid/content/Context;

    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1}, Lj/t0;->r()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, Ld/p;->l:Z

    :cond_2
    iget-object v2, p0, Ld/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lh/a;->b(Landroid/content/Context;)Lh/a;

    move-result-object v2

    invoke-virtual {v2}, Lh/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Ld/p;->I(Z)V

    invoke-virtual {v2}, Lh/a;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Ld/p;->G(Z)V

    iget-object p1, p0, Ld/p;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lc/j;->a:[I

    sget v4, Lc/a;->c:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lc/j;->k:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Ld/p;->H(Z)V

    :cond_5
    sget v0, Lc/j;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Ld/p;->F(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Ld/p;->E(II)V

    return-void
.end method

.method public E(II)V
    .locals 2

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0}, Lj/t0;->r()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ld/p;->l:Z

    :cond_0
    iget-object v1, p0, Ld/p;->f:Lj/t0;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Lj/t0;->k(I)V

    return-void
.end method

.method public F(F)V
    .locals 1

    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Ld0/s0;->L(Landroid/view/View;F)V

    return-void
.end method

.method public final G(Z)V
    .locals 4

    iput-boolean p1, p0, Ld/p;->r:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1, v0}, Lj/t0;->i(Landroidx/appcompat/widget/d;)V

    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Ld/p;->i:Landroidx/appcompat/widget/d;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/d;)V

    iget-object p1, p0, Ld/p;->f:Lj/t0;

    iget-object v0, p0, Ld/p;->i:Landroidx/appcompat/widget/d;

    invoke-interface {p1, v0}, Lj/t0;->i(Landroidx/appcompat/widget/d;)V

    :goto_0
    invoke-virtual {p0}, Ld/p;->A()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Ld/p;->i:Landroidx/appcompat/widget/d;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ld0/s0;->E(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Ld/p;->f:Lj/t0;

    iget-boolean v3, p0, Ld/p;->r:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v3}, Lj/t0;->u(Z)V

    iget-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Ld/p;->r:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public H(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Ld/p;->A:Z

    iget-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public I(Z)V
    .locals 1

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0, p1}, Lj/t0;->q(Z)V

    return-void
.end method

.method public final J()Z
    .locals 1

    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Ld0/s0;->w(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final K()V
    .locals 2

    iget-boolean v0, p0, Ld/p;->w:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/p;->w:Z

    iget-object v1, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld/p;->L(Z)V

    :cond_1
    return-void
.end method

.method public final L(Z)V
    .locals 3

    iget-boolean v0, p0, Ld/p;->u:Z

    iget-boolean v1, p0, Ld/p;->v:Z

    iget-boolean v2, p0, Ld/p;->w:Z

    invoke-static {v0, v1, v2}, Ld/p;->v(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ld/p;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/p;->x:Z

    invoke-virtual {p0, p1}, Ld/p;->y(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Ld/p;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/p;->x:Z

    invoke-virtual {p0, p1}, Ld/p;->x(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Ld/p;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld/p;->v:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/p;->L(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Ld/p;->t:Z

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Ld/p;->v:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/p;->v:Z

    invoke-virtual {p0, v0}, Ld/p;->L(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ld/p;->y:Lh/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/p;->y:Lh/h;

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj/t0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0}, Lj/t0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h(Z)V
    .locals 3

    iget-boolean v0, p0, Ld/p;->p:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ld/p;->p:Z

    iget-object v0, p0, Ld/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ld/p;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a$b;

    invoke-interface {v2, p1}, Ld/a$b;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0}, Lj/t0;->r()I

    move-result v0

    return v0
.end method

.method public j()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Ld/p;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ld/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lc/a;->g:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Ld/p;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ld/p;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/p;->a:Landroid/content/Context;

    iput-object v0, p0, Ld/p;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Ld/p;->b:Landroid/content/Context;

    return-object v0
.end method

.method public l(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Ld/p;->a:Landroid/content/Context;

    invoke-static {p1}, Lh/a;->b(Landroid/content/Context;)Lh/a;

    move-result-object p1

    invoke-virtual {p1}, Lh/a;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Ld/p;->G(Z)V

    return-void
.end method

.method public n(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Ld/p;->m:Ld/p$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ld/p$d;->e()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    iput p1, p0, Ld/p;->s:I

    return-void
.end method

.method public q(Z)V
    .locals 1

    iget-boolean v0, p0, Ld/p;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ld/p;->D(Z)V

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Ld/p;->z:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ld/p;->y:Lh/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lh/h;->a()V

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ld/p;->f:Lj/t0;

    invoke-interface {v0, p1}, Lj/t0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t(Lh/b$a;)Lh/b;
    .locals 2

    iget-object v0, p0, Ld/p;->m:Ld/p$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ld/p$d;->c()V

    :cond_0
    iget-object v0, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->k()V

    new-instance v0, Ld/p$d;

    iget-object v1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Ld/p$d;-><init>(Ld/p;Landroid/content/Context;Lh/b$a;)V

    invoke-virtual {v0}, Ld/p$d;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Ld/p;->m:Ld/p$d;

    invoke-virtual {v0}, Ld/p$d;->k()V

    iget-object p1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->h(Lh/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ld/p;->u(Z)V

    iget-object p1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Z)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ld/p;->K()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ld/p;->B()V

    :goto_0
    invoke-virtual {p0}, Ld/p;->J()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1, v1, v4, v5}, Lj/t0;->n(IJ)Ld0/p1;

    move-result-object p1

    iget-object v0, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Ld0/p1;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1, v3, v6, v7}, Lj/t0;->n(IJ)Ld0/p1;

    move-result-object v0

    iget-object p1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->f(IJ)Ld0/p1;

    move-result-object p1

    :goto_1
    new-instance v1, Lh/h;

    invoke-direct {v1}, Lh/h;-><init>()V

    invoke-virtual {v1, p1, v0}, Lh/h;->d(Ld0/p1;Ld0/p1;)Lh/h;

    invoke-virtual {v1}, Lh/h;->h()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1, v1}, Lj/t0;->o(I)V

    iget-object p1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Ld/p;->f:Lj/t0;

    invoke-interface {p1, v3}, Lj/t0;->o(I)V

    iget-object p1, p0, Ld/p;->g:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Ld/p;->o:Lh/b$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ld/p;->n:Lh/b;

    invoke-interface {v0, v1}, Lh/b$a;->d(Lh/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/p;->n:Lh/b;

    iput-object v0, p0, Ld/p;->o:Lh/b$a;

    :cond_0
    return-void
.end method

.method public x(Z)V
    .locals 4

    iget-object v0, p0, Ld/p;->y:Lh/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/h;->a()V

    :cond_0
    iget v0, p0, Ld/p;->s:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ld/p;->z:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lh/h;

    invoke-direct {v0}, Lh/h;-><init>()V

    iget-object v2, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v3, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object p1

    invoke-virtual {p1, v2}, Ld0/p1;->k(F)Ld0/p1;

    move-result-object p1

    iget-object v1, p0, Ld/p;->D:Ld0/s1;

    invoke-virtual {p1, v1}, Ld0/p1;->i(Ld0/s1;)Ld0/p1;

    invoke-virtual {v0, p1}, Lh/h;->c(Ld0/p1;)Lh/h;

    iget-boolean p1, p0, Ld/p;->t:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Ld/p;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object p1

    invoke-virtual {p1, v2}, Ld0/p1;->k(F)Ld0/p1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh/h;->c(Ld0/p1;)Lh/h;

    :cond_3
    sget-object p1, Ld/p;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lh/h;->f(Landroid/view/animation/Interpolator;)Lh/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lh/h;->e(J)Lh/h;

    iget-object p1, p0, Ld/p;->B:Ld0/q1;

    invoke-virtual {v0, p1}, Lh/h;->g(Ld0/q1;)Lh/h;

    iput-object v0, p0, Ld/p;->y:Lh/h;

    invoke-virtual {v0}, Lh/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Ld/p;->B:Ld0/q1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld0/q1;->b(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public y(Z)V
    .locals 4

    iget-object v0, p0, Ld/p;->y:Lh/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh/h;->a()V

    :cond_0
    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Ld/p;->s:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Ld/p;->z:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v2, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, Lh/h;

    invoke-direct {p1}, Lh/h;-><init>()V

    iget-object v2, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object v2

    invoke-virtual {v2, v1}, Ld0/p1;->k(F)Ld0/p1;

    move-result-object v2

    iget-object v3, p0, Ld/p;->D:Ld0/s1;

    invoke-virtual {v2, v3}, Ld0/p1;->i(Ld0/s1;)Ld0/p1;

    invoke-virtual {p1, v2}, Lh/h;->c(Ld0/p1;)Lh/h;

    iget-boolean v2, p0, Ld/p;->t:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Ld/p;->h:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Ld/p;->h:Landroid/view/View;

    invoke-static {v0}, Ld0/s0;->b(Landroid/view/View;)Ld0/p1;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld0/p1;->k(F)Ld0/p1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh/h;->c(Ld0/p1;)Lh/h;

    :cond_3
    sget-object v0, Ld/p;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lh/h;->f(Landroid/view/animation/Interpolator;)Lh/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Lh/h;->e(J)Lh/h;

    iget-object v0, p0, Ld/p;->C:Ld0/q1;

    invoke-virtual {p1, v0}, Lh/h;->g(Ld0/q1;)Lh/h;

    iput-object p1, p0, Ld/p;->y:Lh/h;

    invoke-virtual {p1}, Lh/h;->h()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Ld/p;->e:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Ld/p;->t:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Ld/p;->h:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Ld/p;->C:Ld0/q1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ld0/q1;->b(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Ld/p;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    invoke-static {p1}, Ld0/s0;->E(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final z(Landroid/view/View;)Lj/t0;
    .locals 3

    instance-of v0, p1, Lj/t0;

    if-eqz v0, :cond_0

    check-cast p1, Lj/t0;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lj/t0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
