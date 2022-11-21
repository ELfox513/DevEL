.class public final Lr4/al2;
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
        "Lr4/dr2<",
        "TR;TAdT;>;>;"
    }
.end annotation


# instance fields
.field public a:Lr4/r61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lr4/o83;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lr4/al2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lr4/al2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lr4/r61;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lr4/al2;->a:Lr4/r61;

    return-object v0
.end method

.method public final c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bm2;",
            "Lr4/zl2<",
            "TR;>;TR;)",
            "Lr4/h83<",
            "Lr4/dr2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    iget-object p1, p1, Lr4/bm2;->b:Lr4/yl2;

    invoke-interface {p2, p1}, Lr4/zl2;->a(Lr4/yl2;)Lr4/q61;

    move-result-object p1

    new-instance p2, Lr4/gm2;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lr4/gm2;-><init>(Z)V

    invoke-interface {p1, p2}, Lr4/q61;->r(Lr4/gm2;)Lr4/q61;

    invoke-interface {p1}, Lr4/q61;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/r61;

    iput-object p1, p0, Lr4/al2;->a:Lr4/r61;

    invoke-interface {p1}, Lr4/r61;->r()Lr4/m41;

    move-result-object p1

    new-instance p2, Lr4/dr2;

    invoke-direct {p2}, Lr4/dr2;-><init>()V

    invoke-virtual {p1}, Lr4/m41;->c()Lr4/h83;

    move-result-object p3

    invoke-static {p3}, Lr4/o73;->E(Lr4/h83;)Lr4/o73;

    move-result-object p3

    new-instance v0, Lr4/yk2;

    invoke-direct {v0, p0, p2, p1}, Lr4/yk2;-><init>(Lr4/al2;Lr4/dr2;Lr4/m41;)V

    iget-object p1, p0, Lr4/al2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p3, v0, p1}, Lr4/y73;->i(Lr4/h83;Lr4/e73;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    new-instance p3, Lr4/zk2;

    invoke-direct {p3, p2}, Lr4/zk2;-><init>(Lr4/dr2;)V

    iget-object p2, p0, Lr4/al2;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lr4/y73;->j(Lr4/h83;Lr4/p03;Ljava/util/concurrent/Executor;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/al2;->a:Lr4/r61;

    return-object v0
.end method
