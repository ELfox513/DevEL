.class public final Lr4/sv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lr4/sv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final d:Z

.field public final k:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:Z


# direct methods
.method public constructor <init>(Lr4/e5;Lr4/ov3;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lr4/uv3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lr4/sv3;->b:Z

    iget p3, p1, Lr4/e5;->d:I

    iget v1, p2, Lr4/ov3;->A:I

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lr4/sv3;->d:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lr4/sv3;->k:Z

    iget-object p3, p2, Lr4/n84;->r:Lr4/o33;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, ""

    invoke-static {p3}, Lr4/o33;->r(Ljava/lang/Object;)Lr4/o33;

    move-result-object p3

    goto :goto_2

    :cond_2
    iget-object p3, p2, Lr4/n84;->r:Lr4/o33;

    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lr4/uv3;->m(Lr4/e5;Ljava/lang/String;Z)I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const v1, 0x7fffffff

    const/4 v3, 0x0

    :goto_4
    iput v1, p0, Lr4/sv3;->p:I

    iput v3, p0, Lr4/sv3;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lr4/sv3;->r:I

    iput-boolean v0, p0, Lr4/sv3;->t:Z

    invoke-static {p4}, Lr4/uv3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-static {p1, p4, v1}, Lr4/uv3;->m(Lr4/e5;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lr4/sv3;->s:I

    if-gtz v3, :cond_7

    iget-object p2, p2, Lr4/n84;->r:Lr4/o33;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    if-gtz p3, :cond_7

    :cond_6
    iget-boolean p2, p0, Lr4/sv3;->d:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lr4/sv3;->k:Z

    if-eqz p2, :cond_8

    if-lez p1, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p0, Lr4/sv3;->a:Z

    return-void
.end method


# virtual methods
.method public final c(Lr4/sv3;)I
    .locals 4

    invoke-static {}, Lr4/c33;->i()Lr4/c33;

    move-result-object v0

    iget-boolean v1, p0, Lr4/sv3;->b:Z

    iget-boolean v2, p1, Lr4/sv3;->b:Z

    invoke-virtual {v0, v1, v2}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v0

    iget v1, p0, Lr4/sv3;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lr4/sv3;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v3

    invoke-virtual {v3}, Lr4/b53;->a()Lr4/b53;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v0

    iget v1, p0, Lr4/sv3;->q:I

    iget v2, p1, Lr4/sv3;->q:I

    invoke-virtual {v0, v1, v2}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object v0

    iget v1, p0, Lr4/sv3;->r:I

    iget v2, p1, Lr4/sv3;->r:I

    invoke-virtual {v0, v1, v2}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object v0

    iget-boolean v1, p0, Lr4/sv3;->d:Z

    iget-boolean v2, p1, Lr4/sv3;->d:Z

    invoke-virtual {v0, v1, v2}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v0

    iget-boolean v1, p0, Lr4/sv3;->k:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lr4/sv3;->k:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lr4/sv3;->q:I

    if-nez v3, :cond_0

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v3

    invoke-virtual {v3}, Lr4/b53;->a()Lr4/b53;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v0

    iget v1, p0, Lr4/sv3;->s:I

    iget p1, p1, Lr4/sv3;->s:I

    invoke-virtual {v0, v1, p1}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object p1

    iget v0, p0, Lr4/sv3;->r:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lr4/c33;->c(ZZ)Lr4/c33;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lr4/c33;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/sv3;

    invoke-virtual {p0, p1}, Lr4/sv3;->c(Lr4/sv3;)I

    move-result p1

    return p1
.end method
