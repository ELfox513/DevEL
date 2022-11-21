.class public final Lr4/f23;
.super Lr4/c23;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field public final synthetic k:Lr4/g23;


# direct methods
.method public constructor <init>(Lr4/g23;)V
    .locals 0

    iput-object p1, p0, Lr4/f23;->k:Lr4/g23;

    invoke-direct {p0, p1}, Lr4/c23;-><init>(Lr4/e23;)V

    return-void
.end method

.method public constructor <init>(Lr4/g23;I)V
    .locals 1

    iput-object p1, p0, Lr4/f23;->k:Lr4/g23;

    iget-object v0, p1, Lr4/e23;->b:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lr4/c23;-><init>(Lr4/e23;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/f23;->k:Lr4/g23;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v1, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lr4/f23;->k:Lr4/g23;

    iget-object p1, p1, Lr4/g23;->q:Lr4/h23;

    invoke-static {p1}, Lr4/h23;->o(Lr4/h23;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lr4/h23;->p(Lr4/h23;I)I

    if-eqz v0, :cond_0

    iget-object p1, p0, Lr4/f23;->k:Lr4/g23;

    invoke-virtual {p1}, Lr4/e23;->e()V

    :cond_0
    return-void
.end method

.method public final hasPrevious()Z
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lr4/c23;->a()V

    iget-object v0, p0, Lr4/c23;->a:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
