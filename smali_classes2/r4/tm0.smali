.class public final Lr4/tm0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lr4/h83;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lr4/rm0;

    invoke-direct {v0, p1}, Lr4/rm0;-><init>(Ljava/lang/String;)V

    sget-object p1, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p0, v0, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(Lr4/h83;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p1, Lr4/sm0;

    const-string v0, "ActiveViewListener.callActiveViewJs"

    invoke-direct {p1, v0}, Lr4/sm0;-><init>(Ljava/lang/String;)V

    sget-object v0, Lr4/qm0;->f:Lr4/i83;

    invoke-static {p0, p1, v0}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method
