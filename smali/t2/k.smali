.class public abstract Lt2/k;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ux;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lr4/ux;

    invoke-direct {p1, p0, p2}, Lr4/ux;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lt2/k;->a:Lr4/ux;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->d()V

    return-void
.end method

.method public b(Lt2/f;)V
    .locals 1
    .param p1    # Lt2/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {p1}, Lt2/f;->a()Lr4/sx;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/ux;->j(Lr4/sx;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->k()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->l()V

    return-void
.end method

.method public getAdListener()Lt2/c;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->e()Lt2/c;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lt2/g;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->f()Lt2/g;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnPaidEventListener()Lt2/q;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->v()Lt2/q;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lt2/u;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->t()Lt2/u;

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lt2/k;->getAdSize()Lt2/g;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to retrieve ad size."

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lt2/g;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0}, Lt2/g;->b(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdListener(Lt2/c;)V
    .locals 2
    .param p1    # Lt2/c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->m(Lt2/c;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lt2/k;->a:Lr4/ux;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr4/ux;->n(Lr4/gt;)V

    return-void

    :cond_0
    instance-of v0, p1, Lr4/gt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    move-object v1, p1

    check-cast v1, Lr4/gt;

    invoke-virtual {v0, v1}, Lr4/ux;->n(Lr4/gt;)V

    :cond_1
    instance-of v0, p1, Lu2/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    check-cast p1, Lu2/c;

    invoke-virtual {v0, p1}, Lr4/ux;->r(Lu2/c;)V

    :cond_2
    return-void
.end method

.method public setAdSize(Lt2/g;)V
    .locals 3
    .param p1    # Lt2/g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    const/4 v1, 0x1

    new-array v1, v1, [Lt2/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lr4/ux;->o([Lt2/g;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->q(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPaidEventListener(Lt2/q;)V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->u(Lt2/q;)V

    return-void
.end method
