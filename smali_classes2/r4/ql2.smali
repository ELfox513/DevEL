.class public final Lr4/ql2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/am2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lr4/r61<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr4/am2<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/am2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/am2<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field

.field public b:Lr4/r61;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/am2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/am2<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ql2;->a:Lr4/am2;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lr4/bm2;Lr4/zl2;Ljava/lang/Object;)Lr4/h83;
    .locals 0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lr4/ql2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized b()Lr4/r61;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/ql2;->b:Lr4/r61;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bm2;",
            "Lr4/zl2<",
            "TRequestComponentT;>;TRequestComponentT;)",
            "Lr4/h83<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lr4/ql2;->b:Lr4/r61;

    iget-object v0, p1, Lr4/bm2;->a:Lr4/og0;

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lr4/r61;->r()Lr4/m41;

    move-result-object p2

    iget-object p1, p1, Lr4/bm2;->a:Lr4/og0;

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr4/m41;->b(Lr4/h83;)Lr4/h83;

    move-result-object p1

    invoke-virtual {p2, p1}, Lr4/m41;->d(Lr4/h83;)Lr4/h83;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lr4/ql2;->a:Lr4/am2;

    check-cast v0, Lr4/pl2;

    invoke-virtual {v0, p1, p2, p3}, Lr4/pl2;->c(Lr4/bm2;Lr4/zl2;Lr4/r61;)Lr4/h83;

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

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/ql2;->b()Lr4/r61;

    move-result-object v0

    return-object v0
.end method
