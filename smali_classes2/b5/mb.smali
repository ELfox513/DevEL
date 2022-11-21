.class public final Lb5/mb;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lb5/l9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lb5/l9;"
    }
.end annotation


# instance fields
.field public final a:Lb5/l9;


# direct methods
.method public constructor <init>(Lb5/l9;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lb5/mb;->a:Lb5/l9;

    return-void
.end method

.method public static bridge synthetic d(Lb5/mb;)Lb5/l9;
    .locals 0

    iget-object p0, p0, Lb5/mb;->a:Lb5/l9;

    return-object p0
.end method


# virtual methods
.method public final C(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb5/mb;->a:Lb5/l9;

    invoke-interface {v0, p1}, Lb5/l9;->C(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lb5/w7;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c()Lb5/l9;
    .locals 0

    return-object p0
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

    iget-object v0, p0, Lb5/mb;->a:Lb5/l9;

    invoke-interface {v0}, Lb5/l9;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb5/mb;->a:Lb5/l9;

    check-cast v0, Lb5/k9;

    invoke-virtual {v0, p1}, Lb5/k9;->e(I)Ljava/lang/String;

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

    new-instance v0, Lb5/lb;

    invoke-direct {v0, p0}, Lb5/lb;-><init>(Lb5/mb;)V

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

    new-instance v0, Lb5/kb;

    invoke-direct {v0, p0, p1}, Lb5/kb;-><init>(Lb5/mb;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lb5/mb;->a:Lb5/l9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
