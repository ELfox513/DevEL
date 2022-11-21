.class public final Lr4/m41;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/cx1;

.field public final b:Lr4/hp2;

.field public final c:Lr4/mt2;

.field public final d:Lr4/wx0;

.field public final e:Lr4/l52;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/l52<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:Lr4/tc1;

.field public g:Lr4/bp2;

.field public final h:Lr4/iy1;

.field public final i:Lr4/o61;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Lr4/vx1;

.field public final l:Lr4/v12;


# direct methods
.method public constructor <init>(Lr4/cx1;Lr4/hp2;Lr4/mt2;Lr4/wx0;Lr4/l52;Lr4/tc1;Lr4/bp2;Lr4/iy1;Lr4/o61;Ljava/util/concurrent/Executor;Lr4/vx1;Lr4/v12;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/cx1;",
            "Lr4/hp2;",
            "Lr4/mt2;",
            "Lr4/wx0;",
            "Lr4/l52<",
            "TT;>;",
            "Lr4/tc1;",
            "Lr4/bp2;",
            "Lr4/iy1;",
            "Lr4/o61;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/vx1;",
            "Lr4/v12;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/m41;->a:Lr4/cx1;

    iput-object p2, p0, Lr4/m41;->b:Lr4/hp2;

    iput-object p3, p0, Lr4/m41;->c:Lr4/mt2;

    iput-object p4, p0, Lr4/m41;->d:Lr4/wx0;

    iput-object p5, p0, Lr4/m41;->e:Lr4/l52;

    iput-object p6, p0, Lr4/m41;->f:Lr4/tc1;

    iput-object p7, p0, Lr4/m41;->g:Lr4/bp2;

    iput-object p8, p0, Lr4/m41;->h:Lr4/iy1;

    iput-object p9, p0, Lr4/m41;->i:Lr4/o61;

    iput-object p10, p0, Lr4/m41;->j:Ljava/util/concurrent/Executor;

    iput-object p11, p0, Lr4/m41;->k:Lr4/vx1;

    iput-object p12, p0, Lr4/m41;->l:Lr4/v12;

    return-void
.end method

.method public static synthetic a(Lr4/m41;)Lr4/tc1;
    .locals 0

    iget-object p0, p0, Lr4/m41;->f:Lr4/tc1;

    return-object p0
.end method


# virtual methods
.method public final b(Lr4/h83;)Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Lr4/og0;",
            ">;)",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m41;->g:Lr4/bp2;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->k:Lr4/gt2;

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lr4/xs2;->a(Lr4/h83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lz2/t;->j()Lr4/po;

    move-result-object v0

    invoke-virtual {v0}, Lr4/po;->e()V

    iget-object v0, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->k:Lr4/gt2;

    invoke-virtual {v0, v1, p1}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    iget-object v0, p0, Lr4/m41;->k:Lr4/vx1;

    invoke-static {v0}, Lr4/h41;->c(Lr4/vx1;)Lr4/e73;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m41;->b:Lr4/hp2;

    iget-object v0, v0, Lr4/hp2;->d:Lr4/tt;

    iget-object v1, v0, Lr4/tt;->I:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, v0, Lr4/tt;->D:Lr4/jt;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/m41;->i:Lr4/o61;

    invoke-virtual {v0}, Lr4/o61;->b()Lr4/h83;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/m41;->b(Lr4/h83;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->k:Lr4/gt2;

    iget-object v2, p0, Lr4/m41;->a:Lr4/cx1;

    invoke-virtual {v2}, Lr4/cx1;->c()Lr4/h83;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lr4/xs2;->a(Lr4/h83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object v0

    invoke-virtual {v0}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lr4/h83;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "Lr4/bp2;",
            ">;)",
            "Lr4/h83<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->p:Lr4/gt2;

    invoke-virtual {v0, v1, p1}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    new-instance v0, Lr4/i41;

    invoke-direct {v0, p0}, Lr4/i41;-><init>(Lr4/m41;)V

    invoke-virtual {p1, v0}, Lr4/dt2;->b(Lr4/ps2;)Lr4/dt2;

    move-result-object p1

    iget-object v0, p0, Lr4/m41;->e:Lr4/l52;

    invoke-virtual {p1, v0}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    sget-object v0, Lr4/rz;->O3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lr4/rz;->P3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lr4/dt2;->h(JLjava/util/concurrent/TimeUnit;)Lr4/dt2;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    return-object p1
.end method

.method public final e()Lr4/tc1;
    .locals 1

    iget-object v0, p0, Lr4/m41;->f:Lr4/tc1;

    return-object v0
.end method

.method public final f(Lr4/br2;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/br2;",
            ")",
            "Lr4/h83<",
            "Lr4/og0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->G:Lr4/gt2;

    iget-object v2, p0, Lr4/m41;->i:Lr4/o61;

    invoke-virtual {v2}, Lr4/o61;->b()Lr4/h83;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object v0

    new-instance v1, Lr4/j41;

    invoke-direct {v1, p0, p1}, Lr4/j41;-><init>(Lr4/m41;Lr4/br2;)V

    invoke-virtual {v0, v1}, Lr4/dt2;->c(Lr4/e73;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    new-instance v0, Lr4/k41;

    invoke-direct {v0, p0}, Lr4/k41;-><init>(Lr4/m41;)V

    iget-object v1, p0, Lr4/m41;->j:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final g(Lr4/og0;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m41;->c:Lr4/mt2;

    sget-object v1, Lr4/gt2;->H:Lr4/gt2;

    iget-object v2, p0, Lr4/m41;->h:Lr4/iy1;

    invoke-virtual {v2, p1}, Lr4/iy1;->b(Lr4/og0;)Lr4/h83;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lr4/et2;->e(Ljava/lang/Object;Lr4/h83;)Lr4/dt2;

    move-result-object p1

    invoke-virtual {p1}, Lr4/dt2;->i()Lr4/rs2;

    move-result-object p1

    new-instance v0, Lr4/l41;

    invoke-direct {v0, p0}, Lr4/l41;-><init>(Lr4/m41;)V

    iget-object v1, p0, Lr4/m41;->j:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final h(Ljava/lang/Throwable;)Lr4/lt;
    .locals 1

    iget-object v0, p0, Lr4/m41;->l:Lr4/v12;

    invoke-static {p1, v0}, Lr4/dq2;->b(Ljava/lang/Throwable;Lr4/v12;)Lr4/lt;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lr4/bp2;)V
    .locals 0

    iput-object p1, p0, Lr4/m41;->g:Lr4/bp2;

    return-void
.end method

.method public final synthetic j(Lr4/br2;Lr4/og0;)Lr4/h83;
    .locals 0

    iput-object p1, p2, Lr4/og0;->t:Lr4/br2;

    iget-object p1, p0, Lr4/m41;->h:Lr4/iy1;

    invoke-virtual {p1, p2}, Lr4/iy1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic k(Lr4/bp2;)Lr4/bp2;
    .locals 1

    iget-object v0, p0, Lr4/m41;->d:Lr4/wx0;

    invoke-virtual {v0, p1}, Lr4/wx0;->a(Lr4/bp2;)V

    return-object p1
.end method
