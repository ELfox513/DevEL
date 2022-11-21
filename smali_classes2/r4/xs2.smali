.class public final Lr4/xs2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lr4/h83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lr4/h83<",
            "TO;>;",
            "Ljava/lang/Object;",
            "Lr4/et2;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v8, Lr4/dt2;

    invoke-static {}, Lr4/et2;->a()Lr4/h83;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;Lr4/vs2;)V

    return-object v8
.end method

.method public static final b(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Ljava/lang/Object;",
            "Lr4/et2;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    invoke-static {p2}, Lr4/et2;->b(Lr4/et2;)Lr4/i83;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lr4/xs2;->c(Ljava/util/concurrent/Callable;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/util/concurrent/Callable;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;",
            "Lr4/i83;",
            "Ljava/lang/Object;",
            "Lr4/et2;",
            ")",
            "Lr4/dt2<",
            "TO;>;"
        }
    .end annotation

    new-instance v8, Lr4/dt2;

    invoke-static {}, Lr4/et2;->a()Lr4/h83;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, p0}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lr4/dt2;-><init>(Lr4/et2;Ljava/lang/Object;Ljava/lang/String;Lr4/h83;Ljava/util/List;Lr4/h83;Lr4/vs2;)V

    return-object v8
.end method

.method public static final d(Lr4/qs2;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/qs2;",
            "Lr4/i83;",
            "Ljava/lang/Object;",
            "Lr4/et2;",
            ")",
            "Lr4/dt2;"
        }
    .end annotation

    new-instance v0, Lr4/ws2;

    invoke-direct {v0, p0}, Lr4/ws2;-><init>(Lr4/qs2;)V

    invoke-static {v0, p1, p2, p3}, Lr4/xs2;->c(Ljava/util/concurrent/Callable;Lr4/i83;Ljava/lang/Object;Lr4/et2;)Lr4/dt2;

    move-result-object p0

    return-object p0
.end method
