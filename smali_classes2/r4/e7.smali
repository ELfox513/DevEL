.class public final Lr4/e7;
.super Lr4/t2;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:[I

.field public final h:[I

.field public final i:[Lr4/e8;

.field public final j:[Ljava/lang/Object;

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lr4/yu3;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lr4/d6;",
            ">;",
            "Lr4/yu3;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lr4/t2;-><init>(ZLr4/yu3;[B)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    new-array v0, p2, [I

    iput-object v0, p0, Lr4/e7;->g:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lr4/e7;->h:[I

    new-array v0, p2, [Lr4/e8;

    iput-object v0, p0, Lr4/e7;->i:[Lr4/e8;

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lr4/e7;->j:[Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lr4/e7;->k:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/d6;

    iget-object v2, p0, Lr4/e7;->i:[Lr4/e8;

    invoke-interface {v1}, Lr4/d6;->b()Lr4/e8;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lr4/e7;->h:[I

    aput p3, v2, v0

    iget-object v2, p0, Lr4/e7;->g:[I

    aput p2, v2, v0

    iget-object v2, p0, Lr4/e7;->i:[Lr4/e8;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lr4/e8;->a()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Lr4/e7;->i:[Lr4/e8;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lr4/e8;->g()I

    move-result v2

    add-int/2addr p2, v2

    iget-object v2, p0, Lr4/e7;->j:[Ljava/lang/Object;

    invoke-interface {v1}, Lr4/d6;->a()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lr4/e7;->k:Ljava/util/HashMap;

    iget-object v3, p0, Lr4/e7;->j:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_0
    iput p3, p0, Lr4/e7;->e:I

    iput p2, p0, Lr4/e7;->f:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lr4/e7;->e:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lr4/e7;->f:I

    return v0
.end method

.method public final p(I)I
    .locals 2

    iget-object v0, p0, Lr4/e7;->g:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lr4/lc;->c([IIZZ)I

    move-result p1

    return p1
.end method

.method public final q(I)I
    .locals 2

    iget-object v0, p0, Lr4/e7;->h:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lr4/lc;->c([IIZZ)I

    move-result p1

    return p1
.end method

.method public final r(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lr4/e7;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final s(I)Lr4/e8;
    .locals 1

    iget-object v0, p0, Lr4/e7;->i:[Lr4/e8;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Lr4/e7;->g:[I

    aget p1, v0, p1

    return p1
.end method

.method public final u(I)I
    .locals 1

    iget-object v0, p0, Lr4/e7;->h:[I

    aget p1, v0, p1

    return p1
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/e7;->j:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/e8;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/e7;->i:[Lr4/e8;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
