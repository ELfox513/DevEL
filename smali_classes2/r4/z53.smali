.class public final Lr4/z53;
.super Lr4/b63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lr4/b63<",
        "TV;TX;",
        "Lr4/e73<",
        "-TX;+TV;>;",
        "Lr4/h83<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/h83;Ljava/lang/Class;Lr4/e73;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h83<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lr4/e73<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lr4/b63;-><init>(Lr4/h83;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic F(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr4/h83;

    invoke-virtual {p0, p1}, Lr4/p63;->w(Lr4/h83;)Z

    return-void
.end method

.method public final bridge synthetic G(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lr4/e73;

    invoke-interface {p1, p2}, Lr4/e73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lr4/z03;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
