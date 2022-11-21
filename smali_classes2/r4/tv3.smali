.class public final Lr4/tv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lr4/tv3;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lr4/ov3;

.field public final d:Z

.field public final k:Z

.field public final p:I

.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>(Lr4/e5;Lr4/ov3;IZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/tv3;->b:Lr4/ov3;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_4

    iget v4, p1, Lr4/e5;->q:I

    if-eq v4, v2, :cond_0

    iget v4, p2, Lr4/n84;->a:I

    :cond_0
    iget v4, p1, Lr4/e5;->r:I

    if-eq v4, v2, :cond_1

    iget v4, p2, Lr4/n84;->b:I

    :cond_1
    iget v4, p1, Lr4/e5;->s:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_2

    iget v5, p2, Lr4/n84;->c:I

    const/high16 v5, 0x4f000000

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    :cond_2
    iget v4, p1, Lr4/e5;->h:I

    if-eq v4, v2, :cond_3

    iget v4, p2, Lr4/n84;->d:I

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lr4/tv3;->a:Z

    if-eqz p4, :cond_8

    iget p4, p1, Lr4/e5;->q:I

    if-eq p4, v2, :cond_5

    iget v4, p2, Lr4/n84;->e:I

    if-ltz p4, :cond_8

    :cond_5
    iget p4, p1, Lr4/e5;->r:I

    if-eq p4, v2, :cond_6

    iget v4, p2, Lr4/n84;->f:I

    if-ltz p4, :cond_8

    :cond_6
    iget p4, p1, Lr4/e5;->s:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_7

    iget v0, p2, Lr4/n84;->g:I

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_8

    :cond_7
    iget p4, p1, Lr4/e5;->h:I

    if-eq p4, v2, :cond_9

    iget v0, p2, Lr4/n84;->h:I

    if-ltz p4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lr4/tv3;->d:Z

    invoke-static {p3, v3}, Lr4/uv3;->k(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lr4/tv3;->k:Z

    iget p3, p1, Lr4/e5;->h:I

    iput p3, p0, Lr4/tv3;->p:I

    invoke-virtual {p1}, Lr4/e5;->c()I

    move-result p3

    iput p3, p0, Lr4/tv3;->q:I

    :goto_2
    iget-object p3, p2, Lr4/n84;->l:Lr4/o33;

    invoke-virtual {p3}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge v3, p3, :cond_b

    iget-object p3, p1, Lr4/e5;->l:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-object p4, p2, Lr4/n84;->l:Lr4/o33;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    const v3, 0x7fffffff

    :goto_3
    iput v3, p0, Lr4/tv3;->r:I

    return-void
.end method


# virtual methods
.method public final c(Lr4/tv3;)I
    .locals 5

    iget-boolean v0, p0, Lr4/tv3;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr4/tv3;->k:Z

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

    iget-boolean v2, p0, Lr4/tv3;->k:Z

    iget-boolean v3, p1, Lr4/tv3;->k:Z

    invoke-virtual {v1, v2, v3}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget-boolean v2, p0, Lr4/tv3;->a:Z

    iget-boolean v3, p1, Lr4/tv3;->a:Z

    invoke-virtual {v1, v2, v3}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget-boolean v2, p0, Lr4/tv3;->d:Z

    iget-boolean v3, p1, Lr4/tv3;->d:Z

    invoke-virtual {v1, v2, v3}, Lr4/c33;->d(ZZ)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/tv3;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/tv3;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lr4/b53;->b()Lr4/b53;

    move-result-object v4

    invoke-virtual {v4}, Lr4/b53;->a()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/tv3;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/tv3;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lr4/tv3;->b:Lr4/ov3;

    iget-boolean v4, v4, Lr4/n84;->u:Z

    invoke-static {}, Lr4/uv3;->h()Lr4/b53;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/tv3;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lr4/tv3;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object v1

    iget v2, p0, Lr4/tv3;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lr4/tv3;->p:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lr4/c33;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lr4/c33;

    move-result-object p1

    invoke-virtual {p1}, Lr4/c33;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/tv3;

    invoke-virtual {p0, p1}, Lr4/tv3;->c(Lr4/tv3;)I

    move-result p1

    return p1
.end method
