.class public final Lr4/zx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Lr4/zx;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public c:Lr4/nw;

.field public d:Z

.field public e:Z

.field public f:Lt2/p;

.field public g:Lt2/t;

.field public h:Ly2/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/zx;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/zx;->d:Z

    iput-boolean v0, p0, Lr4/zx;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/zx;->f:Lt2/p;

    new-instance v0, Lt2/t$a;

    invoke-direct {v0}, Lt2/t$a;-><init>()V

    invoke-virtual {v0}, Lt2/t$a;->a()Lt2/t;

    move-result-object v0

    iput-object v0, p0, Lr4/zx;->g:Lt2/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/zx;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lr4/zx;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lr4/zx;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic b(Lr4/zx;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/zx;->d:Z

    return p1
.end method

.method public static synthetic c(Lr4/zx;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/zx;->e:Z

    return p1
.end method

.method public static d()Lr4/zx;
    .locals 2

    const-class v0, Lr4/zx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/zx;->i:Lr4/zx;

    if-nez v1, :cond_0

    new-instance v1, Lr4/zx;

    invoke-direct {v1}, Lr4/zx;-><init>()V

    sput-object v1, Lr4/zx;->i:Lr4/zx;

    :cond_0
    sget-object v1, Lr4/zx;->i:Lr4/zx;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic h(Lr4/zx;Ljava/util/List;)Ly2/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)",
            "Ly2/b;"
        }
    .end annotation

    invoke-static {p1}, Lr4/zx;->n(Ljava/util/List;)Ly2/b;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/util/List;)Ly2/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g70;",
            ">;)",
            "Ly2/b;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/g70;

    iget-object v2, v1, Lr4/g70;->a:Ljava/lang/String;

    new-instance v3, Lr4/o70;

    iget-boolean v4, v1, Lr4/g70;->b:Z

    if-eqz v4, :cond_0

    sget-object v4, Ly2/a;->b:Ly2/a;

    goto :goto_1

    :cond_0
    sget-object v4, Ly2/a;->a:Ly2/a;

    :goto_1
    iget-object v5, v1, Lr4/g70;->k:Ljava/lang/String;

    iget v1, v1, Lr4/g70;->d:I

    invoke-direct {v3, v4, v5, v1}, Lr4/o70;-><init>(Ly2/a;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lr4/p70;

    invoke-direct {p0, v0}, Lr4/p70;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Ljava/lang/String;Ly2/c;)V
    .locals 3

    iget-object p2, p0, Lr4/zx;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lr4/zx;->d:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object p1

    iget-object p1, p1, Lr4/zx;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p2

    return-void

    :cond_1
    iget-boolean v0, p0, Lr4/zx;->e:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lr4/zx;->g()Ly2/b;

    move-result-object p1

    invoke-interface {p3, p1}, Ly2/c;->onInitializationComplete(Ly2/b;)V

    :cond_2
    monitor-exit p2

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/zx;->d:Z

    if-eqz p3, :cond_4

    invoke-static {}, Lr4/zx;->d()Lr4/zx;

    move-result-object v0

    iget-object v0, v0, Lr4/zx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    :try_start_1
    invoke-static {}, Lr4/xa0;->a()Lr4/xa0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr4/xa0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    invoke-virtual {p0, p1}, Lr4/zx;->m(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    new-instance v2, Lr4/yx;

    invoke-direct {v2, p0, v1}, Lr4/yx;-><init>(Lr4/zx;Lr4/xx;)V

    invoke-interface {v0, v2}, Lr4/nw;->Y0(Lr4/n70;)V

    :cond_5
    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    new-instance v2, Lr4/cb0;

    invoke-direct {v2}, Lr4/cb0;-><init>()V

    invoke-interface {v0, v2}, Lr4/nw;->s1(Lr4/fb0;)V

    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    invoke-interface {v0}, Lr4/nw;->c()V

    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    invoke-static {v1}, Lf4/b;->L0(Ljava/lang/Object;)Lf4/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lr4/nw;->p5(Ljava/lang/String;Lf4/a;)V

    iget-object v0, p0, Lr4/zx;->g:Lt2/t;

    invoke-virtual {v0}, Lt2/t;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lr4/zx;->g:Lt2/t;

    invoke-virtual {v0}, Lt2/t;->c()I

    move-result v0

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lr4/zx;->g:Lt2/t;

    invoke-virtual {p0, v0}, Lr4/zx;->l(Lt2/t;)V

    :cond_7
    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    sget-object p1, Lr4/rz;->I3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lr4/zx;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    new-instance p1, Lr4/wx;

    invoke-direct {p1, p0}, Lr4/wx;-><init>(Lr4/zx;)V

    iput-object p1, p0, Lr4/zx;->h:Ly2/b;

    if-eqz p3, :cond_8

    sget-object p1, Lr4/vl0;->b:Landroid/os/Handler;

    new-instance v0, Lr4/vx;

    invoke-direct {v0, p0, p3}, Lr4/vx;-><init>(Lr4/zx;Ly2/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "MobileAdsSettingManager initialization failed"

    invoke-static {p3, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    monitor-exit p2

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Context cannot be null."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr4/zx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zx;->c:Lr4/nw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lx3/q;->n(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lr4/zx;->c:Lr4/nw;

    invoke-interface {v1}, Lr4/nw;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr4/l13;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    invoke-static {v2, v1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final g()Ly2/b;
    .locals 3

    iget-object v0, p0, Lr4/zx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zx;->c:Lr4/nw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lx3/q;->n(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lr4/zx;->h:Ly2/b;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lr4/zx;->c:Lr4/nw;

    invoke-interface {v1}, Lr4/nw;->m()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lr4/zx;->n(Ljava/util/List;)Ly2/b;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    invoke-static {v1}, Lr4/cm0;->c(Ljava/lang/String;)V

    new-instance v1, Lr4/wx;

    invoke-direct {v1, p0}, Lr4/wx;-><init>(Lr4/zx;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final i()Lt2/t;
    .locals 1

    iget-object v0, p0, Lr4/zx;->g:Lt2/t;

    return-object v0
.end method

.method public final j(Lt2/t;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null passed to setRequestConfiguration."

    invoke-static {v0, v1}, Lx3/q;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lr4/zx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/zx;->g:Lt2/t;

    iput-object p1, p0, Lr4/zx;->g:Lt2/t;

    iget-object v2, p0, Lr4/zx;->c:Lr4/nw;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Lt2/t;->b()I

    move-result v2

    invoke-virtual {p1}, Lt2/t;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lt2/t;->c()I

    move-result v1

    invoke-virtual {p1}, Lt2/t;->c()I

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lr4/zx;->l(Lt2/t;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic k(Ly2/c;)V
    .locals 1

    iget-object v0, p0, Lr4/zx;->h:Ly2/b;

    invoke-interface {p1, v0}, Ly2/c;->onInitializationComplete(Ly2/b;)V

    return-void
.end method

.method public final l(Lt2/t;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    new-instance v1, Lr4/sy;

    invoke-direct {v1, p1}, Lr4/sy;-><init>(Lt2/t;)V

    invoke-interface {v0, v1}, Lr4/nw;->S2(Lr4/sy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lr4/zx;->c:Lr4/nw;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/yu;->b()Lr4/wu;

    move-result-object v0

    new-instance v1, Lr4/uu;

    invoke-direct {v1, v0, p1}, Lr4/uu;-><init>(Lr4/wu;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lr4/xu;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/nw;

    iput-object p1, p0, Lr4/zx;->c:Lr4/nw;

    :cond_0
    return-void
.end method
