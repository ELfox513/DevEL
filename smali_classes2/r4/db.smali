.class public final Lr4/db;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lr4/ka;

.field public final b:Lr4/xa;

.field public final c:Lr4/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/bb<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lr4/cb<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lr4/ka;Lr4/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lr4/ka;",
            "Lr4/bb<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lr4/db;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lr4/ka;Lr4/bb;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lr4/ka;Lr4/bb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lr4/cb<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lr4/ka;",
            "Lr4/bb<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lr4/db;->a:Lr4/ka;

    iput-object p1, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lr4/db;->c:Lr4/bb;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lr4/db;->f:Ljava/util/ArrayDeque;

    new-instance p1, Lr4/ya;

    invoke-direct {p1, p0}, Lr4/ya;-><init>(Lr4/db;)V

    invoke-interface {p3, p2, p1}, Lr4/ka;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lr4/xa;

    move-result-object p1

    iput-object p1, p0, Lr4/db;->b:Lr4/xa;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Looper;Lr4/bb;)Lr4/db;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lr4/bb<",
            "TT;>;)",
            "Lr4/db<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lr4/db;

    iget-object v1, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lr4/db;->a:Lr4/ka;

    invoke-direct {v0, v1, p1, v2, p2}, Lr4/db;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lr4/ka;Lr4/bb;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lr4/db;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lr4/cb;

    invoke-direct {v1, p1}, Lr4/cb;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cb;

    iget-object v2, v1, Lr4/cb;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lr4/db;->c:Lr4/bb;

    invoke-virtual {v1, v2}, Lr4/cb;->a(Lr4/bb;)V

    iget-object v2, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(ILr4/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lr4/ab<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lr4/db;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lr4/za;

    invoke-direct {v2, v0, p1, p2}, Lr4/za;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILr4/ab;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lr4/db;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/db;->b:Lr4/xa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/xa;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/db;->b:Lr4/xa;

    invoke-interface {v0, v1}, Lr4/xa;->x(I)Lr4/wa;

    move-result-object v1

    invoke-interface {v0, v1}, Lr4/xa;->e(Lr4/wa;)Z

    :cond_1
    iget-object v0, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lr4/db;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lr4/db;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lr4/db;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cb;

    iget-object v2, p0, Lr4/db;->c:Lr4/bb;

    invoke-virtual {v1, v2}, Lr4/cb;->a(Lr4/bb;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr4/db;->g:Z

    return-void
.end method

.method public final bridge synthetic g(Landroid/os/Message;)Z
    .locals 2

    iget-object p1, p0, Lr4/db;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/cb;

    iget-object v1, p0, Lr4/db;->c:Lr4/bb;

    invoke-virtual {v0, v1}, Lr4/cb;->c(Lr4/bb;)V

    iget-object v0, p0, Lr4/db;->b:Lr4/xa;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lr4/xa;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
