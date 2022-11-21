.class public abstract Lr4/h73;
.super Lr4/x63;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/x63<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr4/g73<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/j33;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/j33<",
            "+",
            "Lr4/h83<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p2}, Lr4/x63;-><init>(Lr4/j33;ZZ)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-static {p2}, Lr4/h43;->a(I)Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lr4/h73;->A:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final M()V
    .locals 1

    iget-object v0, p0, Lr4/h73;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lr4/h73;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/p63;->u(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final N(I)V
    .locals 0

    invoke-super {p0, p1}, Lr4/x63;->N(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/h73;->A:Ljava/util/List;

    return-void
.end method

.method public final W(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    iget-object v0, p0, Lr4/h73;->A:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lr4/g73;

    invoke-direct {v1, p2}, Lr4/g73;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract X(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr4/g73<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method
