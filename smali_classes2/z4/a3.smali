.class public final Lz4/a3;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lz4/a1;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lz4/a1;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Lz4/a1;


# direct methods
.method public constructor <init>(Lz4/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lz4/a3;->a:Lz4/a1;

    return-void
.end method

.method public static synthetic d(Lz4/a3;)Lz4/a1;
    .locals 0

    iget-object p0, p0, Lz4/a3;->a:Lz4/a1;

    return-object p0
.end method


# virtual methods
.method public final G0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz4/a3;->a:Lz4/a1;

    invoke-interface {v0, p1}, Lz4/a1;->G0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final H0()Lz4/a1;
    .locals 0

    return-object p0
.end method

.method public final L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz4/a3;->a:Lz4/a1;

    invoke-interface {v0}, Lz4/a1;->L()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz4/a3;->a:Lz4/a1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

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

    new-instance v0, Lz4/c3;

    invoke-direct {v0, p0}, Lz4/c3;-><init>(Lz4/a3;)V

    return-object v0
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

    new-instance v0, Lz4/b3;

    invoke-direct {v0, p0, p1}, Lz4/b3;-><init>(Lz4/a3;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lz4/a3;->a:Lz4/a1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
