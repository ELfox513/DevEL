.class public Lz1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz1/v;

.field public final b:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/o;->a:Lz1/v;

    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lz1/o;->b:Ljava/util/BitSet;

    return-void
.end method

.method public static a(Lw1/k;Lw1/k;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Lz1/v;)V
    .locals 1

    new-instance v0, Lz1/o;

    invoke-direct {v0, p0}, Lz1/o;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/o;->d()V

    return-void
.end method


# virtual methods
.method public c(Lz1/n;)Z
    .locals 12

    iget-object v0, p0, Lz1/o;->a:Lz1/v;

    invoke-virtual {p1, v0}, Lz1/n;->W(Lz1/v;)V

    invoke-virtual {p1}, Lz1/n;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {v0, v5}, Lw1/r;->A(I)Lw1/q;

    move-result-object v7

    invoke-virtual {v7}, Lw1/q;->f()I

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    move-object v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    return v3

    :cond_2
    invoke-virtual {v6}, Lw1/q;->z()Lw1/k;

    move-result-object v5

    invoke-virtual {v6}, Lw1/q;->getType()Ly1/c;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_1
    if-ge v8, v1, :cond_6

    if-ne v8, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v8}, Lw1/r;->A(I)Lw1/q;

    move-result-object v10

    invoke-virtual {v10}, Lw1/q;->f()I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual {v10}, Lw1/q;->z()Lw1/k;

    move-result-object v9

    invoke-static {v5, v9}, Lz1/o;->a(Lw1/k;Lw1/k;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v10}, Lw1/q;->getType()Ly1/c;

    move-result-object v10

    invoke-static {v6, v10}, Ln1/r;->d(Ly1/d;Ly1/d;)Ly1/d;

    move-result-object v6

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_9

    if-eqz v9, :cond_7

    move-object v2, v5

    :cond_7
    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v0

    invoke-virtual {v0}, Lw1/q;->C()Ly1/d;

    move-result-object v1

    if-ne v1, v6, :cond_8

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    invoke-static {v2, v0}, Lz1/o;->a(Lw1/k;Lw1/k;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    invoke-virtual {p1, v6, v2}, Lz1/n;->L(Ly1/d;Lw1/k;)V

    return v7

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-ge v3, v1, :cond_a

    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t map types in phi insn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lz1/o;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lz1/o;->a:Lz1/v;

    invoke-virtual {v3, v2}, Lz1/v;->n(I)Lz1/u;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lz1/u;->t()Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->f()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lz1/o;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz1/o;->b:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lz1/o;->b:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->clear(I)V

    iget-object v2, p0, Lz1/o;->a:Lz1/v;

    invoke-virtual {v2, v0}, Lz1/v;->n(I)Lz1/u;

    move-result-object v2

    check-cast v2, Lz1/n;

    invoke-virtual {p0, v2}, Lz1/o;->c(Lz1/n;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz1/o;->a:Lz1/v;

    invoke-virtual {v2, v0}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/u;

    invoke-virtual {v4}, Lz1/u;->t()Lw1/q;

    move-result-object v5

    if-eqz v5, :cond_2

    instance-of v4, v4, Lz1/n;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lz1/o;->b:Ljava/util/BitSet;

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
