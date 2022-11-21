.class public final Lr4/iy1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/px1;

.field public final c:Lr4/or3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/or3<",
            "Lr4/az1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/px1;Lr4/or3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/i83;",
            "Lr4/px1;",
            "Lr4/or3<",
            "Lr4/az1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/iy1;->a:Lr4/i83;

    iput-object p2, p0, Lr4/iy1;->b:Lr4/px1;

    iput-object p3, p0, Lr4/iy1;->c:Lr4/or3;

    return-void
.end method


# virtual methods
.method public final a(Lr4/og0;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/og0;",
            ")",
            "Lr4/h83<",
            "Lr4/og0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/by1;

    invoke-direct {v0, p1}, Lr4/by1;-><init>(Lr4/og0;)V

    iget-object v1, p0, Lr4/iy1;->b:Lr4/px1;

    invoke-static {v1}, Lr4/cy1;->b(Lr4/px1;)Lr4/hy1;

    move-result-object v1

    new-instance v2, Lr4/dy1;

    invoke-direct {v2, p0}, Lr4/dy1;-><init>(Lr4/iy1;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lr4/iy1;->g(Lr4/og0;Lr4/hy1;Lr4/hy1;Lr4/e73;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/og0;)Lr4/h83;
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

    iget-object v0, p1, Lr4/og0;->u:Ljava/lang/String;

    invoke-static {v0}, Lr4/y0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lr4/sv1;

    const/4 v0, 0x2

    const-string v1, "Pool key missing from removeUrl call."

    invoke-direct {p1, v0, v1}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lr4/ey1;->a:Lr4/e73;

    new-instance v1, Lr4/fy1;

    invoke-direct {v1, p0}, Lr4/fy1;-><init>(Lr4/iy1;)V

    new-instance v2, Lr4/gy1;

    invoke-direct {v2, p0}, Lr4/gy1;-><init>(Lr4/iy1;)V

    invoke-virtual {p0, p1, v1, v2, v0}, Lr4/iy1;->g(Lr4/og0;Lr4/hy1;Lr4/hy1;Lr4/e73;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/og0;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/iy1;->c:Lr4/or3;

    invoke-interface {v0}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/az1;

    sget-object v1, Lr4/l10;->d:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lr4/og0;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lr4/og0;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lr4/az1;->h7(Ljava/lang/String;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Lr4/og0;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/iy1;->b:Lr4/px1;

    sget-object v1, Lr4/l10;->d:Lr4/u00;

    invoke-virtual {v1}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lr4/og0;->s:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lr4/og0;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lr4/px1;->c(Ljava/lang/String;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic e(Lr4/og0;)Lr4/h83;
    .locals 2

    iget-object v0, p0, Lr4/iy1;->c:Lr4/or3;

    invoke-interface {v0}, Lr4/or3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/az1;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lr4/az1;->g7(Lr4/og0;I)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Lr4/hy1;Lr4/og0;Lr4/e73;Lr4/yx1;)Lr4/h83;
    .locals 0

    invoke-interface {p1, p2}, Lr4/hy1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p1

    iget-object p2, p0, Lr4/iy1;->a:Lr4/i83;

    invoke-static {p1, p3, p2}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lr4/og0;Lr4/hy1;Lr4/hy1;Lr4/e73;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/og0;",
            "Lr4/hy1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lr4/hy1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lr4/e73<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lr4/h83<",
            "TRetT;>;"
        }
    .end annotation

    iget-object v0, p1, Lr4/og0;->k:Ljava/lang/String;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {v0}, Lb3/k2;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lr4/yx1;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lr4/yx1;-><init>(I)V

    invoke-static {p2}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lr4/hy1;->a(Lr4/og0;)Lr4/h83;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lr4/zx1;->a:Lr4/e73;

    iget-object v2, p0, Lr4/iy1;->a:Lr4/i83;

    invoke-static {p2, v0, v1, v2}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object p2

    iget-object v0, p0, Lr4/iy1;->a:Lr4/i83;

    invoke-static {p2, p4, v0}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p2

    new-instance v0, Lr4/ay1;

    invoke-direct {v0, p0, p3, p1, p4}, Lr4/ay1;-><init>(Lr4/iy1;Lr4/hy1;Lr4/og0;Lr4/e73;)V

    const-class p1, Lr4/yx1;

    iget-object p3, p0, Lr4/iy1;->a:Lr4/i83;

    invoke-static {p2, p1, v0, p3}, Lr4/y73;->g(Lr4/h83;Ljava/lang/Class;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
