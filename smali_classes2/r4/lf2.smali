.class public final Lr4/lf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/mf2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lr4/i83;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Landroid/content/Context;

.field public final e:Lr4/hp2;

.field public final f:Lr4/bu0;


# direct methods
.method public constructor <init>(Lr4/i83;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;Landroid/content/Context;Lr4/hp2;Lr4/bu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lf2;->b:Lr4/i83;

    iput-object p2, p0, Lr4/lf2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lr4/lf2;->a:Ljava/lang/String;

    iput-object p4, p0, Lr4/lf2;->d:Landroid/content/Context;

    iput-object p5, p0, Lr4/lf2;->e:Lr4/hp2;

    iput-object p6, p0, Lr4/lf2;->f:Lr4/bu0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lr4/h83;
    .locals 5

    iget-object v0, p0, Lr4/lf2;->a:Ljava/lang/String;

    sget-object v1, Lr4/rz;->n5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lt2/b;->q:Lt2/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lr4/lf2;->f:Lr4/bu0;

    invoke-virtual {v1}, Lr4/bu0;->x()Lh3/q;

    move-result-object v1

    new-instance v2, Lr4/s61;

    invoke-direct {v2}, Lr4/s61;-><init>()V

    iget-object v3, p0, Lr4/lf2;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    new-instance v3, Lr4/fp2;

    invoke-direct {v3}, Lr4/fp2;-><init>()V

    const-string v4, "adUnitId"

    invoke-virtual {v3, v4}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    iget-object v4, p0, Lr4/lf2;->e:Lr4/hp2;

    iget-object v4, v4, Lr4/hp2;->d:Lr4/tt;

    invoke-virtual {v3, v4}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    new-instance v4, Lr4/yt;

    invoke-direct {v4}, Lr4/yt;-><init>()V

    invoke-virtual {v3, v4}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    invoke-virtual {v3}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v2}, Lr4/s61;->h()Lr4/u61;

    move-result-object v2

    invoke-interface {v1, v2}, Lh3/q;->b(Lr4/u61;)Lh3/q;

    new-instance v2, Lh3/i0;

    invoke-direct {v2}, Lh3/i0;-><init>()V

    invoke-virtual {v2, v0}, Lh3/i0;->b(Ljava/lang/String;)Lh3/i0;

    invoke-virtual {v2}, Lh3/i0;->c()Lh3/k0;

    move-result-object v0

    invoke-interface {v1, v0}, Lh3/q;->c(Lh3/k0;)Lh3/q;

    new-instance v0, Lr4/zc1;

    invoke-direct {v0}, Lr4/zc1;-><init>()V

    invoke-interface {v1}, Lh3/q;->zza()Lh3/r;

    move-result-object v0

    invoke-virtual {v0}, Lh3/r;->a()Lr4/h83;

    move-result-object v0

    invoke-static {v0}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object v0

    sget-object v1, Lr4/rz;->o5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lr4/lf2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lr4/y73;->h(Lr4/h83;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lr4/h83;

    move-result-object v0

    check-cast v0, Lr4/o73;

    sget-object v1, Lr4/jf2;->a:Lr4/p03;

    iget-object v2, p0, Lr4/lf2;->b:Lr4/i83;

    invoke-static {v0, v1, v2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lr4/kf2;->a:Lr4/p03;

    iget-object v3, p0, Lr4/lf2;->b:Lr4/i83;

    invoke-static {v0, v1, v2, v3}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/mf2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->m5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/lf2;->e:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->f:Ljava/lang/String;

    const-string v1, "adUnitId"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/if2;

    invoke-direct {v0, p0}, Lr4/if2;-><init>(Lr4/lf2;)V

    iget-object v1, p0, Lr4/lf2;->b:Lr4/i83;

    invoke-static {v0, v1}, Lr4/y73;->e(Lr4/d73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/lf2;->b:Lr4/i83;

    sget-object v1, Lr4/hf2;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
