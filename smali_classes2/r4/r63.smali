.class public final Lr4/r63;
.super Lr4/u63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/u63<",
        "TI;TO;",
        "Lr4/e73<",
        "-TI;+TO;>;",
        "Lr4/h83<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/h83;Lr4/e73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "+TI;>;",
            "Lr4/e73<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr4/u63;-><init>(Lr4/h83;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic F(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr4/h83;

    invoke-virtual {p0, p1}, Lr4/p63;->w(Lr4/h83;)Z

    return-void
.end method

.method public final bridge synthetic G(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/e73;

    invoke-interface {p1, p2}, Lr4/e73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lr4/z03;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
