.class public Lz1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/v;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lz1/j;

.field public final d:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    iput-object p1, p0, Lz1/i;->a:Lz1/v;

    iput-object v0, p0, Lz1/i;->b:Ljava/util/ArrayList;

    new-instance v1, Lz1/j;

    invoke-direct {v1, p1}, Lz1/j;-><init>(Lz1/v;)V

    iput-object v1, p0, Lz1/i;->c:Lz1/j;

    new-instance p1, Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lz1/i;->d:Ljava/util/BitSet;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Lz1/v;)Lz1/j;
    .locals 1

    new-instance v0, Lz1/i;

    invoke-direct {v0, p0}, Lz1/i;-><init>(Lz1/v;)V

    invoke-virtual {v0}, Lz1/i;->a()Lz1/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lz1/j;
    .locals 2

    iget-object v0, p0, Lz1/i;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->u()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz1/i;->a:Lz1/v;

    invoke-virtual {v0}, Lz1/v;->p()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lz1/i;->d:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    invoke-virtual {p0, v0}, Lz1/i;->c(I)V

    iget-object v0, p0, Lz1/i;->d:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/i;->c:Lz1/j;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    iget-object v0, p0, Lz1/i;->c:Lz1/j;

    return-object v0
.end method

.method public final c(I)V
    .locals 13

    iget-object v0, p0, Lz1/i;->c:Lz1/j;

    invoke-virtual {v0, p1}, Lz1/j;->C(I)Lw1/s;

    move-result-object v0

    iget-object v1, p0, Lz1/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    invoke-virtual {v1}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lz1/i;->a:Lz1/v;

    invoke-virtual {v4}, Lz1/v;->r()I

    move-result v4

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, v3, -0x1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz1/u;

    invoke-virtual {v4}, Lz1/u;->o()Lw1/h;

    move-result-object v5

    invoke-virtual {v5}, Lw1/h;->e()Ly1/e;

    move-result-object v5

    invoke-interface {v5}, Ly1/e;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lz1/u;->t()Lw1/q;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    move-object v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    if-eqz v7, :cond_3

    if-ne v4, p1, :cond_3

    invoke-virtual {v5}, Lb2/o;->setImmutable()V

    invoke-virtual {v5}, Lw1/s;->E()Lw1/s;

    move-result-object v5

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lz1/u;

    invoke-virtual {v8}, Lz1/u;->j()Lw1/q;

    move-result-object v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lz1/u;->t()Lw1/q;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v9

    invoke-virtual {v5, v9}, Lw1/s;->z(I)Lw1/q;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lw1/q;->B()I

    move-result v8

    invoke-virtual {v5, v8}, Lw1/s;->z(I)Lw1/q;

    move-result-object v8

    invoke-virtual {v5, v8}, Lw1/s;->I(Lw1/q;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Lw1/q;->T()Lw1/q;

    move-result-object v9

    invoke-virtual {v5, v9}, Lw1/s;->A(Lw1/q;)Lw1/q;

    move-result-object v10

    invoke-virtual {v9, v10}, Lw1/q;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Lw1/q;->z()Lw1/k;

    move-result-object v10

    invoke-virtual {v5, v10}, Lw1/s;->D(Lw1/k;)Lw1/q;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lw1/q;->B()I

    move-result v11

    invoke-virtual {v9}, Lw1/q;->B()I

    move-result v12

    if-eq v11, v12, :cond_5

    invoke-virtual {v5, v10}, Lw1/s;->I(Lw1/q;)V

    :cond_5
    iget-object v10, p0, Lz1/i;->c:Lz1/j;

    invoke-virtual {v10, v8, v9}, Lz1/j;->x(Lz1/u;Lw1/q;)V

    invoke-virtual {v5, v9}, Lw1/s;->F(Lw1/q;)V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Lb2/o;->setImmutable()V

    invoke-virtual {v1}, Lz1/s;->B()Lb2/j;

    move-result-object p1

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v2

    invoke-virtual {v1}, Lz1/s;->w()I

    move-result v1

    :goto_4
    if-ge v6, v2, :cond_a

    invoke-virtual {p1, v6}, Lb2/j;->B(I)I

    move-result v3

    if-ne v3, v1, :cond_8

    move-object v4, v5

    goto :goto_5

    :cond_8
    move-object v4, v0

    :goto_5
    iget-object v7, p0, Lz1/i;->c:Lz1/j;

    invoke-virtual {v7, v3, v4}, Lz1/j;->B(ILw1/s;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lz1/i;->d:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method
