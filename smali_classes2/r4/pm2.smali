.class public final Lr4/pm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t92<",
        "Lr4/xf1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/bu0;

.field public final d:Lr4/d92;

.field public final e:Lr4/qn2;

.field public f:Lr4/n00;

.field public final g:Lr4/fp2;

.field public h:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/xf1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/d92;Lr4/qn2;Lr4/fp2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/pm2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/pm2;->c:Lr4/bu0;

    iput-object p4, p0, Lr4/pm2;->d:Lr4/d92;

    iput-object p6, p0, Lr4/pm2;->g:Lr4/fp2;

    iput-object p5, p0, Lr4/pm2;->e:Lr4/qn2;

    return-void
.end method

.method public static synthetic c(Lr4/pm2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lr4/pm2;)Lr4/d92;
    .locals 0

    iget-object p0, p0, Lr4/pm2;->d:Lr4/d92;

    return-object p0
.end method

.method public static synthetic e(Lr4/pm2;)Lr4/qn2;
    .locals 0

    iget-object p0, p0, Lr4/pm2;->e:Lr4/qn2;

    return-object p0
.end method

.method public static synthetic f(Lr4/pm2;Lr4/h83;)Lr4/h83;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/pm2;->h:Lr4/h83;

    return-object p1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/pm2;->h:Lr4/h83;

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

.method public final b(Lr4/tt;Ljava/lang/String;Lr4/r92;Lr4/s92;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/tt;",
            "Ljava/lang/String;",
            "Lr4/r92;",
            "Lr4/s92<",
            "-",
            "Lr4/xf1;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lr4/im2;

    invoke-direct {p2, p0}, Lr4/im2;-><init>(Lr4/pm2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lr4/pm2;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lr4/tt;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/pm2;->c:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->C()Lr4/iv1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/iv1;->c(Z)V

    :cond_2
    check-cast p3, Lr4/hm2;

    iget-object p3, p3, Lr4/hm2;->a:Lr4/yt;

    iget-object v0, p0, Lr4/pm2;->g:Lr4/fp2;

    invoke-virtual {v0, p2}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    invoke-virtual {v0, p3}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    invoke-virtual {v0, p1}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    sget-object p2, Lr4/rz;->Q5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lr4/pm2;->c:Lr4/bu0;

    invoke-virtual {p2}, Lr4/bu0;->s()Lr4/ug1;

    move-result-object p2

    new-instance p3, Lr4/s61;

    invoke-direct {p3}, Lr4/s61;-><init>()V

    iget-object v0, p0, Lr4/pm2;->a:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    invoke-virtual {p3, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {p3}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/ug1;->b(Lr4/u61;)Lr4/ug1;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    iget-object p3, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v0}, Lr4/zc1;->b(Lr4/ga1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p3, v0}, Lr4/zc1;->w(Lr4/qc;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {p1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {p2, p1}, Lr4/ug1;->i(Lr4/bd1;)Lr4/ug1;

    new-instance p1, Lr4/j72;

    iget-object p3, p0, Lr4/pm2;->f:Lr4/n00;

    invoke-direct {p1, p3}, Lr4/j72;-><init>(Lr4/n00;)V

    invoke-interface {p2, p1}, Lr4/ug1;->q(Lr4/j72;)Lr4/ug1;

    invoke-interface {p2}, Lr4/ug1;->zza()Lr4/vg1;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    new-instance p2, Lr4/zc1;

    invoke-direct {p2}, Lr4/zc1;-><init>()V

    iget-object p3, p0, Lr4/pm2;->e:Lr4/qn2;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lr4/zc1;->s(Lr4/j71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/pm2;->e:Lr4/qn2;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lr4/zc1;->t(Lr4/y81;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p3, p0, Lr4/pm2;->e:Lr4/qn2;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v0}, Lr4/zc1;->u(Lr4/m71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    :cond_4
    iget-object p3, p0, Lr4/pm2;->c:Lr4/bu0;

    invoke-virtual {p3}, Lr4/bu0;->s()Lr4/ug1;

    move-result-object p3

    new-instance v0, Lr4/s61;

    invoke-direct {v0}, Lr4/s61;-><init>()V

    iget-object v2, p0, Lr4/pm2;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    invoke-virtual {v0, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    invoke-virtual {v0}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {p3, p1}, Lr4/ug1;->b(Lr4/u61;)Lr4/ug1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->b(Lr4/ga1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->s(Lr4/j71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->t(Lr4/y81;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->u(Lr4/m71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->x(Lr4/gt;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->y(Lr4/cf1;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->w(Lr4/qc;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->C(Lr4/w91;Ljava/util/concurrent/Executor;)Lr4/zc1;

    iget-object p1, p0, Lr4/pm2;->d:Lr4/d92;

    iget-object v0, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v0}, Lr4/zc1;->v(Lr4/z71;Ljava/util/concurrent/Executor;)Lr4/zc1;

    invoke-virtual {p2}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {p3, p1}, Lr4/ug1;->i(Lr4/bd1;)Lr4/ug1;

    new-instance p1, Lr4/j72;

    iget-object p2, p0, Lr4/pm2;->f:Lr4/n00;

    invoke-direct {p1, p2}, Lr4/j72;-><init>(Lr4/n00;)V

    invoke-interface {p3, p1}, Lr4/ug1;->q(Lr4/j72;)Lr4/ug1;

    invoke-interface {p3}, Lr4/ug1;->zza()Lr4/vg1;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lr4/vg1;->b()Lr4/m41;

    move-result-object p2

    invoke-virtual {p2}, Lr4/m41;->c()Lr4/h83;

    move-result-object p3

    invoke-virtual {p2, p3}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p2

    iput-object p2, p0, Lr4/pm2;->h:Lr4/h83;

    new-instance p3, Lr4/om2;

    invoke-direct {p3, p0, p4, p1}, Lr4/om2;-><init>(Lr4/pm2;Lr4/s92;Lr4/vg1;)V

    iget-object p1, p0, Lr4/pm2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p2, p3, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final g(Lr4/n00;)V
    .locals 0

    iput-object p1, p0, Lr4/pm2;->f:Lr4/n00;

    return-void
.end method

.method public final synthetic h()V
    .locals 3

    iget-object v0, p0, Lr4/pm2;->d:Lr4/d92;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/d92;->B(Lr4/lt;)V

    return-void
.end method
