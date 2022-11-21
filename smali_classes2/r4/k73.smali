.class public final Lr4/k73;
.super Lr4/x63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/x63<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field public A:Lr4/j73;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/j73<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/j33;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j33<",
            "+",
            "Lr4/h83<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lr4/x63;-><init>(Lr4/j33;ZZ)V

    new-instance p1, Lr4/i73;

    invoke-direct {p1, p0, p4, p3}, Lr4/i73;-><init>(Lr4/k73;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lr4/k73;->A:Lr4/j73;

    invoke-virtual {p0}, Lr4/x63;->T()V

    return-void
.end method

.method public static synthetic X(Lr4/k73;Lr4/j73;)Lr4/j73;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/k73;->A:Lr4/j73;

    return-object p1
.end method


# virtual methods
.method public final M()V
    .locals 1

    iget-object v0, p0, Lr4/k73;->A:Lr4/j73;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/j73;->i()V

    :cond_0
    return-void
.end method

.method public final N(I)V
    .locals 1

    invoke-super {p0, p1}, Lr4/x63;->N(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/k73;->A:Lr4/j73;

    :cond_0
    return-void
.end method

.method public final W(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lr4/k73;->A:Lr4/j73;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lr4/g83;->g()V

    :cond_0
    return-void
.end method
