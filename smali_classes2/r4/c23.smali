.class public Lr4/c23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/Iterator;

.field public final b:Ljava/util/Collection;

.field public final synthetic d:Lr4/e23;


# direct methods
.method public constructor <init>(Lr4/e23;)V
    .locals 1

    iput-object p1, p0, Lr4/c23;->d:Lr4/e23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/e23;->b:Ljava/util/Collection;

    iput-object p1, p0, Lr4/c23;->b:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lr4/c23;->a:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lr4/e23;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lr4/c23;->d:Lr4/e23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lr4/e23;->b:Ljava/util/Collection;

    iput-object p1, p0, Lr4/c23;->b:Ljava/util/Collection;

    iput-object p2, p0, Lr4/c23;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lr4/c23;->d:Lr4/e23;

    invoke-virtual {v0}, Lr4/e23;->d()V

    iget-object v0, p0, Lr4/c23;->d:Lr4/e23;

    iget-object v0, v0, Lr4/e23;->b:Ljava/util/Collection;

    iget-object v1, p0, Lr4/c23;->b:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lr4/c23;->d:Lr4/e23;

    iget-object v0, v0, Lr4/e23;->p:Lr4/h23;

    invoke-static {v0}, Lr4/h23;->o(Lr4/h23;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lr4/h23;->p(Lr4/h23;I)I

    iget-object v0, p0, Lr4/c23;->d:Lr4/e23;

    invoke-virtual {v0}, Lr4/e23;->a()V

    return-void
.end method
