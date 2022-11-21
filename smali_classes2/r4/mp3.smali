.class public final Lr4/mp3;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lr4/gn3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lr4/gn3;"
    }
.end annotation


# instance fields
.field public final a:Lr4/gn3;


# direct methods
.method public constructor <init>(Lr4/gn3;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lr4/mp3;->a:Lr4/gn3;

    return-void
.end method

.method public static synthetic d(Lr4/mp3;)Lr4/gn3;
    .locals 0

    iget-object p0, p0, Lr4/mp3;->a:Lr4/gn3;

    return-object p0
.end method


# virtual methods
.method public final W(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/mp3;->a:Lr4/gn3;

    invoke-interface {v0, p1}, Lr4/gn3;->W(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/mp3;->a:Lr4/gn3;

    invoke-interface {v0}, Lr4/gn3;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/mp3;->a:Lr4/gn3;

    check-cast v0, Lr4/fn3;

    invoke-virtual {v0, p1}, Lr4/fn3;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/lp3;

    invoke-direct {v0, p0}, Lr4/lp3;-><init>(Lr4/mp3;)V

    return-object v0
.end method

.method public final j()Lr4/gn3;
    .locals 0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lr4/kp3;

    invoke-direct {v0, p0, p1}, Lr4/kp3;-><init>(Lr4/mp3;I)V

    return-object v0
.end method

.method public final p(Lr4/ll3;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/mp3;->a:Lr4/gn3;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
