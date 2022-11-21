.class public final Lr4/ml2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/am2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Lr4/i31;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/am2<",
        "TR;",
        "Lr4/kl2<",
        "TR;TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/uq2;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lr4/t73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/t73<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/uq2;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/jl2;

    invoke-direct {v0, p0}, Lr4/jl2;-><init>(Lr4/ml2;)V

    iput-object v0, p0, Lr4/ml2;->c:Lr4/t73;

    iput-object p1, p0, Lr4/ml2;->a:Lr4/uq2;

    iput-object p2, p0, Lr4/ml2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lr4/ml2;->b(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bm2;",
            "Lr4/zl2<",
            "TR;>;TR;)",
            "Lr4/h83<",
            "Lr4/kl2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    new-instance p1, Lr4/wl2;

    iget-object p2, p0, Lr4/ml2;->a:Lr4/uq2;

    iget-object v0, p0, Lr4/ml2;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lr4/wl2;-><init>(Lr4/uq2;Lr4/r61;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lr4/wl2;->c()Lr4/h83;

    move-result-object p1

    invoke-static {p1}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object p1

    new-instance p2, Lr4/hl2;

    invoke-direct {p2, p0, p3}, Lr4/hl2;-><init>(Lr4/ml2;Lr4/r61;)V

    iget-object p3, p0, Lr4/ml2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance p2, Lr4/il2;

    invoke-direct {p2, p0}, Lr4/il2;-><init>(Lr4/ml2;)V

    const-class p3, Ljava/lang/Exception;

    iget-object v0, p0, Lr4/ml2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2, v0}, Lr4/y73;->f(Lr4/h83;Ljava/lang/Class;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lr4/r61;Lr4/vl2;)Lr4/h83;
    .locals 4

    iget-object v0, p2, Lr4/vl2;->b:Lr4/er2;

    iget-object p2, p2, Lr4/vl2;->a:Lr4/og0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lr4/ml2;->a:Lr4/uq2;

    invoke-interface {v2, v0}, Lr4/uq2;->e(Lr4/er2;)Lr4/dr2;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {v1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lr4/r61;->r()Lr4/m41;

    move-result-object p1

    invoke-virtual {p1, p2}, Lr4/m41;->g(Lr4/og0;)Lr4/h83;

    move-result-object p1

    iget-object v1, p0, Lr4/ml2;->c:Lr4/t73;

    iget-object v3, p0, Lr4/ml2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, v1, v3}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    :cond_2
    new-instance p1, Lr4/kl2;

    invoke-direct {p1, v0, p2, v2}, Lr4/kl2;-><init>(Lr4/er2;Lr4/og0;Lr4/dr2;)V

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
