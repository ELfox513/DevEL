.class public final Lr4/po2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lr4/ft3;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr4/nn2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lr4/po2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lr4/nn2;",
            ">;I",
            "Lr4/ft3;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/po2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lr4/po2;->a:I

    iput-object p3, p0, Lr4/po2;->b:Lr4/ft3;

    return-void
.end method


# virtual methods
.method public final a(ILr4/ft3;)Lr4/po2;
    .locals 2

    new-instance v0, Lr4/po2;

    iget-object v1, p0, Lr4/po2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lr4/po2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILr4/ft3;)V

    return-object v0
.end method

.method public final b(Landroid/os/Handler;Lr4/qp2;)V
    .locals 2

    iget-object v0, p0, Lr4/po2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lr4/nn2;

    invoke-direct {v1, p1, p2}, Lr4/nn2;-><init>(Landroid/os/Handler;Lr4/qp2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lr4/qp2;)V
    .locals 3

    iget-object v0, p0, Lr4/po2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/nn2;

    iget-object v2, v1, Lr4/nn2;->b:Lr4/qp2;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lr4/po2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
