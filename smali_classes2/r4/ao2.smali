.class public final Lr4/ao2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t92;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t92<",
        "Lr4/uo1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/bu0;

.field public final d:Lr4/qn2;

.field public final e:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/cp2;

.field public final g:Lr4/fp2;

.field public h:Lr4/h83;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h83<",
            "Lr4/uo1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/am2;Lr4/qn2;Lr4/fp2;Lr4/cp2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/bu0;",
            "Lr4/am2<",
            "Lr4/ap1;",
            "Lr4/uo1;",
            ">;",
            "Lr4/qn2;",
            "Lr4/fp2;",
            "Lr4/cp2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ao2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/ao2;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lr4/ao2;->c:Lr4/bu0;

    iput-object p4, p0, Lr4/ao2;->e:Lr4/am2;

    iput-object p5, p0, Lr4/ao2;->d:Lr4/qn2;

    iput-object p6, p0, Lr4/ao2;->g:Lr4/fp2;

    iput-object p7, p0, Lr4/ao2;->f:Lr4/cp2;

    return-void
.end method

.method public static synthetic c(Lr4/ao2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lr4/ao2;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic d(Lr4/ao2;)Lr4/qn2;
    .locals 0

    iget-object p0, p0, Lr4/ao2;->d:Lr4/qn2;

    return-object p0
.end method

.method public static synthetic e(Lr4/ao2;)Lr4/am2;
    .locals 0

    iget-object p0, p0, Lr4/ao2;->e:Lr4/am2;

    return-object p0
.end method

.method public static synthetic f(Lr4/ao2;Lr4/yl2;)Lr4/zo1;
    .locals 0

    invoke-virtual {p0, p1}, Lr4/ao2;->j(Lr4/yl2;)Lr4/zo1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
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
            "Lr4/uo1;",
            ">;)Z"
        }
    .end annotation

    new-instance p3, Lr4/mh0;

    invoke-direct {p3, p1, p2}, Lr4/mh0;-><init>(Lr4/tt;Ljava/lang/String;)V

    iget-object p1, p3, Lr4/mh0;->b:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ao2;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lr4/tn2;

    invoke-direct {p2, p0}, Lr4/tn2;-><init>(Lr4/ao2;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lr4/ao2;->h:Lr4/h83;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lr4/ao2;->a:Landroid/content/Context;

    iget-object v0, p3, Lr4/mh0;->a:Lr4/tt;

    iget-boolean v0, v0, Lr4/tt;->q:Z

    invoke-static {p1, v0}, Lr4/yp2;->b(Landroid/content/Context;Z)V

    sget-object p1, Lr4/rz;->p6:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p3, Lr4/mh0;->a:Lr4/tt;

    iget-boolean p1, p1, Lr4/tt;->q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lr4/ao2;->c:Lr4/bu0;

    invoke-virtual {p1}, Lr4/bu0;->C()Lr4/iv1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr4/iv1;->c(Z)V

    :cond_2
    iget-object p1, p0, Lr4/ao2;->g:Lr4/fp2;

    iget-object v0, p3, Lr4/mh0;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lr4/fp2;->L(Ljava/lang/String;)Lr4/fp2;

    invoke-static {}, Lr4/yt;->Z0()Lr4/yt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/fp2;->I(Lr4/yt;)Lr4/fp2;

    iget-object p3, p3, Lr4/mh0;->a:Lr4/tt;

    invoke-virtual {p1, p3}, Lr4/fp2;->G(Lr4/tt;)Lr4/fp2;

    invoke-virtual {p1}, Lr4/fp2;->l()Lr4/hp2;

    move-result-object p1

    new-instance p3, Lr4/zn2;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lr4/zn2;-><init>(Lr4/yn2;)V

    iput-object p1, p3, Lr4/zn2;->a:Lr4/hp2;

    iput-object v0, p3, Lr4/zn2;->b:Ljava/lang/String;

    iget-object p1, p0, Lr4/ao2;->e:Lr4/am2;

    new-instance v1, Lr4/bm2;

    invoke-direct {v1, p3, v0}, Lr4/bm2;-><init>(Lr4/yl2;Lr4/og0;)V

    new-instance v2, Lr4/un2;

    invoke-direct {v2, p0}, Lr4/un2;-><init>(Lr4/ao2;)V

    invoke-interface {p1, v1, v2, v0}, Lr4/am2;->a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    iput-object p1, p0, Lr4/ao2;->h:Lr4/h83;

    new-instance v0, Lr4/xn2;

    invoke-direct {v0, p0, p4, p3}, Lr4/xn2;-><init>(Lr4/ao2;Lr4/s92;Lr4/zn2;)V

    iget-object p3, p0, Lr4/ao2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, p3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    :goto_1
    return p2
.end method

.method public final synthetic g()V
    .locals 3

    iget-object v0, p0, Lr4/ao2;->d:Lr4/qn2;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lr4/dq2;->d(ILjava/lang/String;Lr4/lt;)Lr4/lt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/qn2;->B(Lr4/lt;)V

    return-void
.end method

.method public final bridge synthetic h(Lr4/yl2;)Lr4/zo1;
    .locals 0

    invoke-virtual {p0, p1}, Lr4/ao2;->j(Lr4/yl2;)Lr4/zo1;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lr4/ao2;->g:Lr4/fp2;

    invoke-virtual {v0}, Lr4/fp2;->O()Lr4/vo2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/vo2;->b(I)Lr4/vo2;

    return-void
.end method

.method public final j(Lr4/yl2;)Lr4/zo1;
    .locals 3

    check-cast p1, Lr4/zn2;

    iget-object v0, p0, Lr4/ao2;->c:Lr4/bu0;

    invoke-virtual {v0}, Lr4/bu0;->v()Lr4/zo1;

    move-result-object v0

    new-instance v1, Lr4/s61;

    invoke-direct {v1}, Lr4/s61;-><init>()V

    iget-object v2, p0, Lr4/ao2;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lr4/s61;->e(Landroid/content/Context;)Lr4/s61;

    iget-object p1, p1, Lr4/zn2;->a:Lr4/hp2;

    invoke-virtual {v1, p1}, Lr4/s61;->f(Lr4/hp2;)Lr4/s61;

    iget-object p1, p0, Lr4/ao2;->f:Lr4/cp2;

    invoke-virtual {v1, p1}, Lr4/s61;->i(Lr4/cp2;)Lr4/s61;

    invoke-virtual {v1}, Lr4/s61;->h()Lr4/u61;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/zo1;->m(Lr4/u61;)Lr4/zo1;

    new-instance p1, Lr4/zc1;

    invoke-direct {p1}, Lr4/zc1;-><init>()V

    invoke-virtual {p1}, Lr4/zc1;->c()Lr4/bd1;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/zo1;->n(Lr4/bd1;)Lr4/zo1;

    return-object v0
.end method
