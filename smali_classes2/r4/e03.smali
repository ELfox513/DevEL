.class public final Lr4/e03;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lj5/i;)Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/i<",
            "TV;>;)",
            "Lr4/h83<",
            "TV;>;"
        }
    .end annotation

    invoke-static {}, Lr4/p83;->E()Lr4/p83;

    move-result-object v0

    invoke-static {}, Lr4/o83;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lr4/d03;

    invoke-direct {v2, v0}, Lr4/d03;-><init>(Lr4/p83;)V

    invoke-virtual {p0, v1, v2}, Lj5/i;->d(Ljava/util/concurrent/Executor;Lj5/d;)Lj5/i;

    return-object v0
.end method
