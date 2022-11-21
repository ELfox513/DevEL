.class public final Lr4/kv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lr4/kv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final d:Lr4/ov3;

.field public final k:Z

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:Z

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(Lr4/e5;Lr4/ov3;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/kv3;->d:Lr4/ov3;

    iget-object v0, p1, Lr4/e5;->c:Ljava/lang/String;

    invoke-static {v0}, Lr4/uv3;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/kv3;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lr4/uv3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lr4/kv3;->k:Z

    const/4 p3, 0x0

    :goto_0
    iget-object v1, p2, Lr4/n84;->m:Lr4/o33;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-ge p3, v1, :cond_1

    iget-object v1, p2, Lr4/n84;->m:Lr4/o33;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lr4/uv3;->m(Lr4/e5;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    const/4 v1, 0x0

    :goto_1
    iput p3, p0, Lr4/kv3;->q:I

    iput v1, p0, Lr4/kv3;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p3

    iput p3, p0, Lr4/kv3;->r:I

    iget p3, p1, Lr4/e5;->d:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eq v1, p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    const/4 p3, 0x1

    :goto_2
    iput-boolean p3, p0, Lr4/kv3;->u:Z

    iget p3, p1, Lr4/e5;->y:I

    iput p3, p0, Lr4/kv3;->v:I

    iget p3, p1, Lr4/e5;->z:I

    iput p3, p0, Lr4/kv3;->w:I

    iget p3, p1, Lr4/e5;->h:I

    iput p3, p0, Lr4/kv3;->x:I

    iput-boolean v1, p0, Lr4/kv3;->a:Z

    invoke-static {}, Lr4/lc;->y()[Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    :goto_3
    array-length v3, p3

    if-ge v1, v3, :cond_4

    aget-object v3, p3, v1

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
    iput v1, p0, Lr4/kv3;->s:I

    iput v3, p0, Lr4/kv3;->t:I

    :goto_5
    iget-object p3, p2, Lr4/n84;->q:Lr4/o33;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v0, p3, :cond_6

    iget-object p3, p1, Lr4/e5;->l:Ljava/lang/String;

    if-eqz p3, :cond_5

    iget-object v1, p2, Lr4/n84;->q:Lr4/o33;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move v2, v0

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    iput v2, p0, Lr4/kv3;->y:I

    return-void
.end method


# virtual methods
.method public final c(Lr4/kv3;)I
    .locals 5

    iget-boolean v0, p0, Lr4/kv3;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lr4/uv3;->g()Lr4/b53;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lr4/uv3;->g()Lr4/b53;

    move-result-object v0

    invoke-virtual {v0}, Lr4/b53;->a()Lr4/b53;

    move-result-object v0

    :goto_0
    invoke-static {}, Lr4/c33;->i()Lr4/c33;

    move-result-object v1

    iget-boolean v2, p0, Lr4/kv3;->k:Z

    iget-boolean v3, p1, Lr4/kv3;->k:Z

    invoke-virtual {v1, v2, v3}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v4

    invoke-virtual {v4}, Lr4/b53;->a()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->p:I

    iget v3, p1, Lr4/kv3;->p:I

    invoke-virtual {v1, v2, v3}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->r:I

    iget v3, p1, Lr4/kv3;->r:I

    invoke-virtual {v1, v2, v3}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v4

    invoke-virtual {v4}, Lr4/b53;->a()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lr4/kv3;->d:Lr4/ov3;

    iget-boolean v4, v4, Lr4/n84;->u:Z

    invoke-static {}, Lr4/uv3;->h()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget-boolean v2, p0, Lr4/kv3;->u:Z

    iget-boolean v3, p1, Lr4/kv3;->u:Z

    invoke-virtual {v1, v2, v3}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v4

    invoke-virtual {v4}, Lr4/b53;->a()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->t:I

    iget v3, p1, Lr4/kv3;->t:I

    invoke-virtual {v1, v2, v3}, Lr4/c33;->b(II)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/kv3;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/kv3;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lr4/kv3;->b:Ljava/lang/String;

    iget-object p1, p1, Lr4/kv3;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lr4/uv3;->h()Lr4/b53;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object p1

    invoke-virtual {p1}, Lr4/c33;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/kv3;

    invoke-virtual {p0, p1}, Lr4/kv3;->c(Lr4/kv3;)I

    move-result p1

    return p1
.end method
