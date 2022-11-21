.class public abstract Lr4/bu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ux0;


# static fields
.field public static a:Lr4/bu0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lr4/fb0;I)Lr4/bu0;
    .locals 0

    invoke-static {p0, p2}, Lr4/bu0;->e(Landroid/content/Context;I)Lr4/bu0;

    move-result-object p0

    invoke-virtual {p0}, Lr4/bu0;->l()Lr4/gq1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/gq1;->a(Lr4/fb0;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;I)Lr4/bu0;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lr4/bu0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/bu0;->a:Lr4/bu0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lr4/im0;

    const v1, 0xcbe6bb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lr4/im0;-><init>(IIZZ)V

    new-instance p1, Lr4/bv0;

    invoke-direct {p1}, Lr4/bv0;-><init>()V

    invoke-static {v0, p0, p1}, Lr4/bu0;->f(Lr4/im0;Landroid/content/Context;Lr4/pw0;)Lr4/bu0;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized f(Lr4/im0;Landroid/content/Context;Lr4/pw0;)Lr4/bu0;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lr4/bu0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr4/bu0;->a:Lr4/bu0;

    if-nez v1, :cond_0

    new-instance v1, Lr4/sv0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lr4/sv0;-><init>(Lr4/fw0;)V

    new-instance v3, Lr4/cu0;

    invoke-direct {v3}, Lr4/cu0;-><init>()V

    invoke-virtual {v3, p0}, Lr4/cu0;->d(Lr4/im0;)Lr4/cu0;

    invoke-virtual {v3, p1}, Lr4/cu0;->e(Landroid/content/Context;)Lr4/cu0;

    new-instance v4, Lr4/eu0;

    invoke-direct {v4, v3, v2}, Lr4/eu0;-><init>(Lr4/cu0;Lr4/du0;)V

    invoke-virtual {v1, v4}, Lr4/sv0;->a(Lr4/eu0;)Lr4/sv0;

    new-instance v2, Lr4/qw0;

    invoke-direct {v2, p2}, Lr4/qw0;-><init>(Lr4/pw0;)V

    invoke-virtual {v1, v2}, Lr4/sv0;->b(Lr4/qw0;)Lr4/sv0;

    invoke-virtual {v1}, Lr4/sv0;->c()Lr4/bu0;

    move-result-object p2

    sput-object p2, Lr4/bu0;->a:Lr4/bu0;

    invoke-static {p1}, Lr4/rz;->a(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lr4/nl0;->i(Landroid/content/Context;Lr4/im0;)V

    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/po;->d(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb3/k2;->N(Landroid/content/Context;)Z

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb3/k2;->O(Landroid/content/Context;)Z

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb3/k2;->Y(Landroid/content/Context;)V

    invoke-static {p1}, Lb3/v1;->a(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->g()Lr4/hn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lr4/hn;->a(Landroid/content/Context;)V

    invoke-static {}, Lz2/t;->y()Lb3/p1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb3/p1;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lr4/jk0;->d(Landroid/content/Context;)Lr4/jk0;

    sget-object p2, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lr4/rz;->p0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lr4/u02;

    new-instance v4, Lr4/ip;

    new-instance v1, Lr4/mp;

    invoke-direct {v1, p1}, Lr4/mp;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v1}, Lr4/ip;-><init>(Lr4/mp;)V

    new-instance v5, Lr4/b02;

    new-instance v1, Lr4/xz1;

    invoke-direct {v1, p1}, Lr4/xz1;-><init>(Landroid/content/Context;)V

    sget-object v2, Lr4/bu0;->a:Lr4/bu0;

    invoke-virtual {v2}, Lr4/bu0;->j()Lr4/i83;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lr4/b02;-><init>(Lr4/xz1;Lr4/i83;)V

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lr4/bu0;->a:Lr4/bu0;

    invoke-virtual {v1}, Lr4/bu0;->g()Lr4/xt2;

    move-result-object v7

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lr4/u02;-><init>(Landroid/content/Context;Lr4/im0;Lr4/ip;Lr4/b02;Ljava/lang/String;Lr4/xt2;)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object p0

    invoke-virtual {p0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object p0

    invoke-interface {p0}, Lb3/y1;->y()Z

    move-result p0

    invoke-virtual {p2, p0}, Lr4/u02;->a(Z)V

    :cond_0
    sget-object p0, Lr4/bu0;->a:Lr4/bu0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract A()Lr4/k12;
.end method

.method public abstract B()Lr4/aq2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/aq2<",
            "Lr4/fo1;",
            ">;"
        }
    .end annotation
.end method

.method public abstract C()Lr4/iv1;
.end method

.method public final a(Lr4/og0;I)Lr4/xg2;
    .locals 1

    new-instance v0, Lr4/fi2;

    invoke-direct {v0, p1, p2}, Lr4/fi2;-><init>(Lr4/og0;I)V

    invoke-virtual {p0, v0}, Lr4/bu0;->b(Lr4/fi2;)Lr4/xg2;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lr4/fi2;)Lr4/xg2;
.end method

.method public abstract c()Lr4/ut1;
.end method

.method public abstract g()Lr4/xt2;
.end method

.method public abstract h()Ljava/util/concurrent/Executor;
.end method

.method public abstract i()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract j()Lr4/i83;
.end method

.method public abstract k()Lr4/aa1;
.end method

.method public abstract l()Lr4/gq1;
.end method

.method public abstract m()Lr4/ax0;
.end method

.method public abstract n()Lr4/e21;
.end method

.method public abstract o()Lr4/wk2;
.end method

.method public abstract p()Lr4/i01;
.end method

.method public abstract q()Lr4/t01;
.end method

.method public abstract r()Lr4/gj2;
.end method

.method public abstract s()Lr4/ug1;
.end method

.method public abstract t()Lr4/rm2;
.end method

.method public abstract u()Lr4/rh1;
.end method

.method public abstract v()Lr4/zo1;
.end method

.method public abstract w()Lr4/go2;
.end method

.method public abstract x()Lh3/q;
.end method

.method public abstract y()Lh3/g0;
.end method

.method public abstract z()Lh3/m;
.end method
