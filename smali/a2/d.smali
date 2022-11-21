.class public La2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/BitSet;

.field public final b:Ljava/util/BitSet;

.field public final c:I

.field public final d:Lz1/v;

.field public final e:La2/c;

.field public f:Lz1/s;

.field public g:I

.field public h:La2/d$b;


# direct methods
.method public constructor <init>(Lz1/v;ILa2/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput-object p1, p0, La2/d;->d:Lz1/v;

    iput p2, p0, La2/d;->c:I

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, La2/d;->a:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, La2/d;->b:Ljava/util/BitSet;

    iput-object p3, p0, La2/d;->e:La2/c;

    return-void
.end method

.method public static a(La2/c;Lw1/q;Lw1/r;)V
    .locals 2

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lw1/r;->A(I)Lw1/q;

    move-result-object v1

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {p0, p1, v1}, La2/c;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lz1/v;La2/c;)V
    .locals 9

    invoke-virtual {p0}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/s;

    invoke-virtual {v0}, Lz1/s;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/u;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz1/u;

    invoke-virtual {v5}, Lz1/u;->t()Lw1/q;

    move-result-object v7

    invoke-virtual {v6}, Lz1/u;->u()Lw1/r;

    move-result-object v8

    invoke-static {p1, v7, v8}, La2/d;->a(La2/c;Lw1/q;Lw1/r;)V

    invoke-virtual {v6}, Lz1/u;->t()Lw1/q;

    move-result-object v7

    invoke-virtual {v5}, Lz1/u;->u()Lw1/r;

    move-result-object v8

    invoke-static {p1, v7, v8}, La2/d;->a(La2/c;Lw1/q;Lw1/r;)V

    invoke-virtual {v5}, Lz1/u;->t()Lw1/q;

    move-result-object v5

    invoke-virtual {v5}, Lw1/q;->B()I

    move-result v5

    invoke-virtual {v6}, Lz1/u;->t()Lw1/q;

    move-result-object v6

    invoke-virtual {v6}, Lw1/q;->B()I

    move-result v6

    invoke-virtual {p1, v5, v6}, La2/c;->a(II)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static c(Lz1/v;)La2/c;
    .locals 4

    invoke-virtual {p0}, Lz1/v;->u()I

    move-result v0

    new-instance v1, La2/c;

    invoke-direct {v1, v0}, La2/c;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, La2/d;

    invoke-direct {v3, p0, v2, v1}, La2/d;-><init>(Lz1/v;ILa2/c;)V

    invoke-virtual {v3}, La2/d;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, La2/d;->b(Lz1/v;La2/c;)V

    return-object v1
.end method


# virtual methods
.method public final d()V
    .locals 3

    :goto_0
    iget-object v0, p0, La2/d;->h:La2/d$b;

    sget-object v1, La2/d$b;->k:La2/d$b;

    if-eq v0, v1, :cond_3

    sget-object v2, La2/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->f()V

    goto :goto_0

    :cond_1
    iput-object v1, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->g()V

    goto :goto_0

    :cond_2
    iput-object v1, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->e()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, La2/d;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, La2/d;->f:Lz1/s;

    iget v1, p0, La2/d;->c:I

    invoke-virtual {v0, v1}, Lz1/s;->d(I)V

    iget-object v0, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->u()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, La2/d;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La2/d;->g:I

    sget-object v0, La2/d$b;->b:La2/d$b;

    iput-object v0, p0, La2/d;->h:La2/d$b;

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, La2/d;->a:Ljava/util/BitSet;

    iget-object v1, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, La2/d;->a:Ljava/util/BitSet;

    iget-object v1, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v1}, Lz1/s;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    iget-object v0, p0, La2/d;->f:Lz1/s;

    iget v1, p0, La2/d;->c:I

    invoke-virtual {v0, v1}, Lz1/s;->e(I)V

    iget-object v0, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La2/d;->g:I

    sget-object v0, La2/d$b;->b:La2/d$b;

    iput-object v0, p0, La2/d;->h:La2/d$b;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v0}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, La2/d;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;

    invoke-virtual {v0}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    iget v2, p0, La2/d;->c:I

    invoke-virtual {v0, v2}, Lz1/u;->C(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, p0, La2/d;->e:La2/c;

    iget v2, p0, La2/d;->c:I

    invoke-virtual {v1}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {v0, v2, v1}, La2/c;->a(II)V

    :cond_0
    sget-object v0, La2/d$b;->a:La2/d$b;

    iput-object v0, p0, La2/d;->h:La2/d$b;

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, La2/d;->d:Lz1/v;

    iget v1, p0, La2/d;->c:I

    invoke-virtual {v0, v1}, Lz1/v;->w(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/u;

    sget-object v2, La2/d$b;->k:La2/d$b;

    iput-object v2, p0, La2/d;->h:La2/d$b;

    instance-of v2, v1, Lz1/n;

    if-eqz v2, :cond_1

    check-cast v1, Lz1/n;

    iget v2, p0, La2/d;->c:I

    iget-object v3, p0, La2/d;->d:Lz1/v;

    invoke-virtual {v1, v2, v3}, Lz1/n;->T(ILz1/v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz1/s;

    iput-object v2, p0, La2/d;->f:Lz1/s;

    sget-object v2, La2/d$b;->d:La2/d$b;

    iput-object v2, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->d()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lz1/u;->i()Lz1/s;

    move-result-object v2

    iput-object v2, p0, La2/d;->f:Lz1/s;

    invoke-virtual {v2}, Lz1/s;->q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, La2/d;->g:I

    if-ltz v1, :cond_2

    sget-object v1, La2/d$b;->a:La2/d$b;

    iput-object v1, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->d()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "insn not found in it\'s own block"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, La2/d;->b:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, La2/d;->d:Lz1/v;

    invoke-virtual {v1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz1/s;

    iput-object v1, p0, La2/d;->f:Lz1/s;

    iget-object v1, p0, La2/d;->b:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    sget-object v0, La2/d$b;->d:La2/d$b;

    iput-object v0, p0, La2/d;->h:La2/d$b;

    invoke-virtual {p0}, La2/d;->d()V

    goto :goto_2

    :cond_4
    return-void
.end method
