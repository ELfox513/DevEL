.class public abstract Lr4/pj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AppOpenAd:",
        "Lr4/i31;",
        "AppOpenRequestComponent::",
        "Lr4/o01<",
        "TAppOpenAd;>;AppOpenRequestComponentBuilder::",
        "Lr4/q61<",
        "TAppOpenRequestComponent;>;>",
        "Ljava/lang/Object;",
        "Lr4/t92<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/bu0;

.field public final d:Lr4/fk2;

.field public final e:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "TAppOpenRequestComponent;TAppOpenAd;>;"
        }
    .end annotation
.end field

.field public final f:Landroid/view/ViewGroup;

.field public final g:Lr4/fp2;

.field public h:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "TAppOpenAd;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/am2;Lr4/fk2;Lr4/fp2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/bu0;",
            "Lr4/am2<",
            "TAppOpenRequestComponent;TAppOpenAd;>;",
            "Lr4/fk2;",
            "Lr4/fp2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pj2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/pj2;->c:Lr4/bu0;

    iput-object p4, p0, Lr4/pj2;->e:Lr4/am2;

    iput-object p5, p0, Lr4/pj2;->d:Lr4/fk2;

    iput-object p6, p0, Lr4/pj2;->g:Lr4/fp2;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lr4/pj2;->f:Landroid/view/ViewGroup;

    return-void
.end method

.method public static synthetic d(Lr4/pj2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic e(Lr4/pj2;)Lr4/fk2;
    .locals 0

    iget-object p0, p0, Lr4/pj2;->d:Lr4/fk2;

    return-object p0
.end method

.method public static synthetic f(Lr4/pj2;)Lr4/am2;
    .locals 0

    iget-object p0, p0, Lr4/pj2;->e:Lr4/am2;

    return-object p0
.end method

.method public static synthetic g(Lr4/pj2;Lr4/h83;)Lr4/h83;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/pj2;->h:Lr4/h83;

    return-object p1
.end method

.method public static synthetic h(Lr4/pj2;Lr4/yl2;)Lr4/q61;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/yl2;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lr4/pj2;->l(Lr4/yl2;)Lr4/q61;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/pj2;->h:Lr4/h83;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Lr4/r92;",
            "Lr4/s92<",
            "-TAppOpenAd;>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p3, "loadAd must be called on the main UI thread."

    invoke-static {p3}, Lx3/q;->e(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for app open ad."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lr4/ij2;

    invoke-direct {p2, p0}, Lr4/ij2;-><init>(Lr4/pj2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/pj2;->h:Lr4/h83;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return p3

    :cond_1
    :try_start_2
    iget-object p3, p0, Lr4/pj2;->a:Landroid/content/Context;

    iget-boolean v0, p1, Lr4/tt;->q:Z

    invoke-static {p3, v0}, Lr4/yp2;->b(Landroid/content/Context;Z)V

    sget-object p3, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget-boolean p3, p1, Lr4/tt;->q:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lr4/pj2;->c:Lr4/bu0;

    invoke-virtual {p3}, Lr4/bu0;->C()Lr4/iv1;

    move-result-object p3

    invoke-virtual {p3, v0}, Lr4/iv1;->c(Z)V

    :cond_2
    iget-object p3, p0, Lr4/pj2;->g:Lr4/fp2;

    invoke-virtual {p3, p2}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    invoke-static {}, Lr4/yt;->a1()Lr4/yt;

    move-result-object p2

    invoke-virtual {p3, p2}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    invoke-virtual {p3, p1}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {p3}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    new-instance p2, Lr4/nj2;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lr4/nj2;-><init>(Lr4/oj2;)V

    iput-object p1, p2, Lr4/nj2;->a:Lr4/hp2;

    iget-object p1, p0, Lr4/pj2;->e:Lr4/am2;

    new-instance v1, Lr4/bm2;

    invoke-direct {v1, p2, p3}, Lr4/bm2;-><init>(Lr4/yl2;Lr4/og0;)V

    new-instance v2, Lr4/kj2;

    invoke-direct {v2, p0}, Lr4/kj2;-><init>(Lr4/pj2;)V

    invoke-interface {p1, v1, v2, p3}, Lr4/am2;->a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    iput-object p1, p0, Lr4/pj2;->h:Lr4/h83;

    new-instance p3, Lr4/mj2;

    invoke-direct {p3, p0, p4, p2}, Lr4/mj2;-><init>(Lr4/pj2;Lr4/s92;Lr4/nj2;)V

    iget-object p2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract c(Lr4/e11;Lr4/u61;Lr4/bd1;)Lr4/q61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/e11;",
            "Lr4/u61;",
            "Lr4/bd1;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation
.end method

.method public final i(Lr4/eu;)V
    .locals 1

    iget-object v0, p0, Lr4/pj2;->g:Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->f(Lr4/eu;)Lr4/fp2;

    return-void
.end method

.method public final synthetic j()V
    .locals 3

    iget-object v0, p0, Lr4/pj2;->d:Lr4/fk2;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/fk2;->B(Lr4/lt;)V

    return-void
.end method

.method public final bridge synthetic k(Lr4/yl2;)Lr4/q61;
    .locals 0

    invoke-virtual {p0, p1}, Lr4/pj2;->l(Lr4/yl2;)Lr4/q61;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized l(Lr4/yl2;)Lr4/q61;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/yl2;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    check-cast p1, Lr4/nj2;

    sget-object v0, Lr4/rz;->P5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr4/e11;

    iget-object v1, p0, Lr4/pj2;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lr4/s61;

    invoke-direct {v1}, Lr4/s61;-><init>()V

    iget-object v2, p0, Lr4/pj2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    iget-object p1, p1, Lr4/nj2;->a:Lr4/hp2;

    invoke-virtual {v1, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    new-instance v1, Lr4/zc1;

    invoke-direct {v1}, Lr4/zc1;-><init>()V

    iget-object v2, p0, Lr4/pj2;->d:Lr4/fk2;

    iget-object v3, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lr4/zc1;->v(Lr4/z71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->d:Lr4/fk2;

    iget-object v3, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lr4/zc1;->y(Lr4/cf1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {v1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lr4/pj2;->c(Lr4/e11;Lr4/u61;Lr4/bd1;)Lr4/q61;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/pj2;->d:Lr4/fk2;

    invoke-static {v0}, Lr4/fk2;->d(Lr4/fk2;)Lr4/fk2;

    move-result-object v0

    new-instance v1, Lr4/zc1;

    invoke-direct {v1}, Lr4/zc1;-><init>()V

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->u(Lr4/m71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->A(Lr4/k91;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->B(La3/q;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->C(Lr4/w91;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->v(Lr4/z71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object v2, p0, Lr4/pj2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lr4/zc1;->y(Lr4/cf1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {v1, v0}, Lr4/zc1;->a(Lr4/xl2;)Lr4/zc1;

    new-instance v0, Lr4/e11;

    iget-object v2, p0, Lr4/pj2;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Lr4/s61;

    invoke-direct {v2}, Lr4/s61;-><init>()V

    iget-object v3, p0, Lr4/pj2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    iget-object p1, p1, Lr4/nj2;->a:Lr4/hp2;

    invoke-virtual {v2, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v2}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-virtual {v1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lr4/pj2;->c(Lr4/e11;Lr4/u61;Lr4/bd1;)Lr4/q61;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
