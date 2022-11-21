.class public Lg3/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lt2/n;

.field public b:Z

.field public d:Lr4/a20;

.field public k:Landroid/widget/ImageView$ScaleType;

.field public p:Z

.field public q:Lr4/c20;


# virtual methods
.method public final declared-synchronized a(Lr4/a20;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lg3/b;->d:Lr4/a20;

    iget-boolean v0, p0, Lg3/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg3/b;->a:Lt2/n;

    invoke-interface {p1, v0}, Lr4/a20;->a(Lt2/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lr4/c20;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lg3/b;->q:Lr4/c20;

    iget-boolean v0, p0, Lg3/b;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg3/b;->k:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lr4/c20;->a(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg3/b;->p:Z

    iput-object p1, p0, Lg3/b;->k:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Lg3/b;->q:Lr4/c20;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/c20;->a(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public setMediaContent(Lt2/n;)V
    .locals 1
    .param p1    # Lt2/n;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg3/b;->b:Z

    iput-object p1, p0, Lg3/b;->a:Lt2/n;

    iget-object v0, p0, Lg3/b;->d:Lr4/a20;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr4/a20;->a(Lt2/n;)V

    :cond_0
    return-void
.end method
