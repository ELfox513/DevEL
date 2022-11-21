.class public final Lr4/da2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t92<",
        "Lr4/i31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/fp2;

.field public final b:Lr4/bu0;

.field public final c:Landroid/content/Context;

.field public final d:Lr4/q92;

.field public e:Lr4/w31;


# direct methods
.method public constructor <init>(Lr4/bu0;Landroid/content/Context;Lr4/q92;Lr4/fp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/da2;->b:Lr4/bu0;

    iput-object p2, p0, Lr4/da2;->c:Landroid/content/Context;

    iput-object p3, p0, Lr4/da2;->d:Lr4/q92;

    iput-object p4, p0, Lr4/da2;->a:Lr4/fp2;

    invoke-virtual {p3}, Lr4/q92;->c()Lr4/d92;

    move-result-object p1

    invoke-virtual {p4, p1}, Lr4/fp2;->j(Lr4/d92;)Lr4/fp2;

    return-void
.end method

.method public static synthetic c(Lr4/da2;)Lr4/bu0;
    .locals 0

    iget-object p0, p0, Lr4/da2;->b:Lr4/bu0;

    return-object p0
.end method

.method public static synthetic d(Lr4/da2;)Lr4/q92;
    .locals 0

    iget-object p0, p0, Lr4/da2;->d:Lr4/q92;

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/da2;->e:Lr4/w31;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/w31;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Lr4/r92;",
            "Lr4/s92<",
            "-",
            "Lr4/i31;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v0, p0, Lr4/da2;->c:Landroid/content/Context;

    invoke-static {v0}, Lb3/k2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr4/tt;->D:Lr4/jt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {p1}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lr4/y92;

    invoke-direct {p2, p0}, Lr4/y92;-><init>(Lr4/da2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {p1}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lr4/z92;

    invoke-direct {p2, p0}, Lr4/z92;-><init>(Lr4/da2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    iget-object p2, p0, Lr4/da2;->c:Landroid/content/Context;

    iget-boolean v0, p1, Lr4/tt;->q:Z

    invoke-static {p2, v0}, Lr4/yp2;->b(Landroid/content/Context;Z)V

    sget-object p2, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lr4/tt;->q:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->C()Lr4/iv1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr4/iv1;->c(Z)V

    :cond_3
    check-cast p3, Lr4/u92;

    iget p2, p3, Lr4/u92;->a:I

    iget-object p3, p0, Lr4/da2;->a:Lr4/fp2;

    invoke-virtual {p3, p1}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {p3, p2}, Lr4/fp2;->b(I)Lr4/fp2;

    invoke-virtual {p3}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    iget-object p2, p1, Lr4/hp2;->n:Lr4/cw;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lr4/da2;->d:Lr4/q92;

    invoke-virtual {p2}, Lr4/q92;->c()Lr4/d92;

    move-result-object p2

    iget-object p3, p1, Lr4/hp2;->n:Lr4/cw;

    invoke-virtual {p2, p3}, Lr4/d92;->z(Lr4/cw;)V

    :cond_4
    iget-object p2, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->u()Lr4/rh1;

    move-result-object p2

    new-instance p3, Lr4/s61;

    invoke-direct {p3}, Lr4/s61;-><init>()V

    iget-object v1, p0, Lr4/da2;->c:Landroid/content/Context;

    invoke-virtual {p3, v1}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    invoke-virtual {p3, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {p3}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/rh1;->j(Lr4/u61;)Lr4/rh1;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    iget-object p3, p0, Lr4/da2;->d:Lr4/q92;

    invoke-virtual {p3}, Lr4/q92;->c()Lr4/d92;

    move-result-object p3

    iget-object v1, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {v1}, Lr4/bu0;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lr4/zc1;->w(Lr4/qc;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {p1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/rh1;->l(Lr4/bd1;)Lr4/rh1;

    iget-object p1, p0, Lr4/da2;->d:Lr4/q92;

    invoke-virtual {p1}, Lr4/q92;->b()Lr4/mh1;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/rh1;->e(Lr4/mh1;)Lr4/rh1;

    new-instance p1, Lr4/e11;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lr4/e11;-><init>(Landroid/view/ViewGroup;)V

    invoke-interface {p2, p1}, Lr4/rh1;->f(Lr4/e11;)Lr4/rh1;

    invoke-interface {p2}, Lr4/rh1;->zza()Lr4/sh1;

    move-result-object p1

    iget-object p2, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->B()Lr4/aq2;

    move-result-object p2

    invoke-virtual {p2, v0}, Lr4/aq2;->a(I)V

    new-instance p2, Lr4/w31;

    sget-object p3, Lr4/qm0;->a:Lr4/i83;

    invoke-static {p3}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lr4/da2;->b:Lr4/bu0;

    invoke-virtual {v1}, Lr4/bu0;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lr4/sh1;->a()Lr4/m41;

    move-result-object v2

    invoke-virtual {v2}, Lr4/m41;->c()Lr4/h83;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lr4/w31;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lr4/h83;)V

    iput-object p2, p0, Lr4/da2;->e:Lr4/w31;

    new-instance p3, Lr4/ca2;

    invoke-direct {p3, p0, p4, p1}, Lr4/ca2;-><init>(Lr4/da2;Lr4/s92;Lr4/sh1;)V

    invoke-virtual {p2, p3}, Lr4/w31;->a(Lr4/t73;)V

    return v0
.end method

.method public final synthetic e()V
    .locals 3

    iget-object v0, p0, Lr4/da2;->d:Lr4/q92;

    invoke-virtual {v0}, Lr4/q92;->e()Lr4/m71;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/m71;->B(Lr4/lt;)V

    return-void
.end method

.method public final synthetic f()V
    .locals 3

    iget-object v0, p0, Lr4/da2;->d:Lr4/q92;

    invoke-virtual {v0}, Lr4/q92;->e()Lr4/m71;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/m71;->B(Lr4/lt;)V

    return-void
.end method
