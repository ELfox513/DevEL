.class public final Ln1/y;
.super Lb2/o;
.source "SourceFile"


# instance fields
.field public final a:Lb2/j;

.field public final b:Lb2/j;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lb2/o;-><init>(Z)V

    new-instance v0, Lb2/j;

    invoke-direct {v0, p1}, Lb2/j;-><init>(I)V

    iput-object v0, p0, Ln1/y;->a:Lb2/j;

    new-instance v0, Lb2/j;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    iput-object v0, p0, Ln1/y;->b:Lb2/j;

    iput p1, p0, Ln1/y;->d:I

    return-void
.end method


# virtual methods
.method public A(I)I
    .locals 1

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->B(I)I

    move-result p1

    return p1
.end method

.method public B()Lb2/j;
    .locals 1

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    return-object v0
.end method

.method public C(I)I
    .locals 1

    iget-object v0, p0, Ln1/y;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->B(I)I

    move-result p1

    return p1
.end method

.method public D()Lb2/j;
    .locals 1

    iget-object v0, p0, Ln1/y;->a:Lb2/j;

    return-object v0
.end method

.method public E()V
    .locals 6

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    iget v0, p0, Ln1/y;->d:I

    iget-object v1, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v1, v0}, Lb2/j;->B(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v4, v2}, Lb2/j;->B(I)I

    move-result v4

    if-eq v4, v1, :cond_1

    if-eq v2, v3, :cond_0

    iget-object v5, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v5, v3, v4}, Lb2/j;->L(II)V

    iget-object v4, p0, Ln1/y;->a:Lb2/j;

    invoke-virtual {v4, v2}, Lb2/j;->B(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lb2/j;->L(II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    iget-object v0, p0, Ln1/y;->a:Lb2/j;

    invoke-virtual {v0, v3}, Lb2/j;->M(I)V

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v0, v3, v1}, Lb2/j;->L(II)V

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lb2/j;->M(I)V

    iput v3, p0, Ln1/y;->d:I

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incomplete instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public F(I)V
    .locals 2

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-ltz p1, :cond_1

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    iget v1, p0, Ln1/y;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->x(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "non-default elements not all set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "target < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImmutable()V
    .locals 1

    iget-object v0, p0, Ln1/y;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    invoke-super {p0}, Lb2/o;->setImmutable()V

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ln1/y;->d:I

    return v0
.end method

.method public x(II)V
    .locals 1

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-ltz p2, :cond_0

    iget-object v0, p0, Ln1/y;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->x(I)V

    iget-object p1, p0, Ln1/y;->b:Lb2/j;

    invoke-virtual {p1, p2}, Lb2/j;->x(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()I
    .locals 2

    iget-object v0, p0, Ln1/y;->b:Lb2/j;

    iget v1, p0, Ln1/y;->d:I

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    return v0
.end method
