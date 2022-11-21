.class public Lj/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field public static u:Lj/w1;

.field public static v:Lj/w1;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/CharSequence;

.field public final d:I

.field public final k:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public q:I

.field public r:I

.field public s:Lj/x1;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj/w1$a;

    invoke-direct {v0, p0}, Lj/w1$a;-><init>(Lj/w1;)V

    iput-object v0, p0, Lj/w1;->k:Ljava/lang/Runnable;

    new-instance v0, Lj/w1$b;

    invoke-direct {v0, p0}, Lj/w1$b;-><init>(Lj/w1;)V

    iput-object v0, p0, Lj/w1;->p:Ljava/lang/Runnable;

    iput-object p1, p0, Lj/w1;->a:Landroid/view/View;

    iput-object p2, p0, Lj/w1;->b:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-static {p2}, Ld0/d1;->a(Landroid/view/ViewConfiguration;)I

    move-result p2

    iput p2, p0, Lj/w1;->d:I

    invoke-virtual {p0}, Lj/w1;->b()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static e(Lj/w1;)V
    .locals 1

    sget-object v0, Lj/w1;->u:Lj/w1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/w1;->a()V

    :cond_0
    sput-object p0, Lj/w1;->u:Lj/w1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lj/w1;->d()V

    :cond_1
    return-void
.end method

.method public static f(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    sget-object v0, Lj/w1;->u:Lj/w1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lj/w1;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Lj/w1;->e(Lj/w1;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lj/w1;->v:Lj/w1;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lj/w1;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    invoke-virtual {p1}, Lj/w1;->c()V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lj/w1;

    invoke-direct {v0, p0, p1}, Lj/w1;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lj/w1;->a:Landroid/view/View;

    iget-object v1, p0, Lj/w1;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lj/w1;->q:I

    iput v0, p0, Lj/w1;->r:I

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lj/w1;->v:Lj/w1;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    sput-object v1, Lj/w1;->v:Lj/w1;

    iget-object v0, p0, Lj/w1;->s:Lj/x1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj/x1;->c()V

    iput-object v1, p0, Lj/w1;->s:Lj/x1;

    invoke-virtual {p0}, Lj/w1;->b()V

    iget-object v0, p0, Lj/w1;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v0, Lj/w1;->u:Lj/w1;

    if-ne v0, p0, :cond_2

    invoke-static {v1}, Lj/w1;->e(Lj/w1;)V

    :cond_2
    iget-object v0, p0, Lj/w1;->a:Landroid/view/View;

    iget-object v1, p0, Lj/w1;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lj/w1;->a:Landroid/view/View;

    iget-object v1, p0, Lj/w1;->k:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public g(Z)V
    .locals 7

    iget-object v0, p0, Lj/w1;->a:Landroid/view/View;

    invoke-static {v0}, Ld0/s0;->v(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lj/w1;->e(Lj/w1;)V

    sget-object v0, Lj/w1;->v:Lj/w1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/w1;->c()V

    :cond_1
    sput-object p0, Lj/w1;->v:Lj/w1;

    iput-boolean p1, p0, Lj/w1;->t:Z

    new-instance v1, Lj/x1;

    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lj/x1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lj/w1;->s:Lj/x1;

    iget-object v2, p0, Lj/w1;->a:Landroid/view/View;

    iget v3, p0, Lj/w1;->q:I

    iget v4, p0, Lj/w1;->r:I

    iget-boolean v5, p0, Lj/w1;->t:Z

    iget-object v6, p0, Lj/w1;->b:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lj/x1;->e(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Lj/w1;->t:Z

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x9c4

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    invoke-static {p1}, Ld0/s0;->s(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0xbb8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3a98

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_0
    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_1
    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    iget-object v2, p0, Lj/w1;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    iget-object v2, p0, Lj/w1;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final h(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lj/w1;->q:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lj/w1;->d:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Lj/w1;->r:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lj/w1;->d:I

    if-gt v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput v0, p0, Lj/w1;->q:I

    iput p1, p0, Lj/w1;->r:I

    const/4 p1, 0x1

    return p1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lj/w1;->s:Lj/x1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lj/w1;->t:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lj/w1;->b()V

    invoke-virtual {p0}, Lj/w1;->c()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lj/w1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lj/w1;->s:Lj/x1;

    if-nez p1, :cond_4

    invoke-virtual {p0, p2}, Lj/w1;->h(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lj/w1;->e(Lj/w1;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lj/w1;->q:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lj/w1;->r:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lj/w1;->g(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lj/w1;->c()V

    return-void
.end method
