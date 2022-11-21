.class public final Lu2/a;
.super Lt2/k;
.source "SourceFile"


# virtual methods
.method public getAdSizes()[Lt2/g;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->g()[Lt2/g;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lu2/c;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->i()Lu2/c;

    move-result-object v0

    return-object v0
.end method

.method public getVideoController()Lt2/v;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->w()Lt2/v;

    move-result-object v0

    return-object v0
.end method

.method public getVideoOptions()Lt2/w;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0}, Lr4/ux;->z()Lt2/w;

    move-result-object v0

    return-object v0
.end method

.method public varargs setAdSizes([Lt2/g;)V
    .locals 1
    .param p1    # [Lt2/g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->p([Lt2/g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAppEventListener(Lu2/c;)V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->r(Lu2/c;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->s(Z)V

    return-void
.end method

.method public setVideoOptions(Lt2/w;)V
    .locals 1
    .param p1    # Lt2/w;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt2/k;->a:Lr4/ux;

    invoke-virtual {v0, p1}, Lr4/ux;->y(Lt2/w;)V

    return-void
.end method
