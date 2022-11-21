.class public final Lw1/c;
.super Lb2/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/c$a;
    }
.end annotation


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/m;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lw1/c;->b:I

    return-void
.end method

.method public constructor <init>(Lw1/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/m;-><init>(Lb2/m;)V

    iget p1, p1, Lw1/c;->b:I

    iput p1, p0, Lw1/c;->b:I

    return-void
.end method


# virtual methods
.method public E(Lw1/h$b;)V
    .locals 3

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lw1/c;->F(I)Lw1/b;

    move-result-object v2

    invoke-virtual {v2}, Lw1/b;->d()Lw1/i;

    move-result-object v2

    invoke-virtual {v2, p1}, Lw1/i;->z(Lw1/h$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public F(I)Lw1/b;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/b;

    return-object p1
.end method

.method public H()I
    .locals 9

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lb2/f;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/b;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lw1/b;->d()Lw1/i;

    move-result-object v4

    invoke-virtual {v4}, Lb2/f;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-virtual {v4, v6}, Lw1/i;->A(I)Lw1/h;

    move-result-object v7

    invoke-virtual {v7}, Lw1/h;->i()Lw1/t;

    move-result-object v7

    invoke-virtual {v7}, Lw1/t;->d()I

    move-result v7

    const/16 v8, 0x36

    if-eq v7, v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public I()I
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb2/f;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lw1/b;->d()Lw1/i;

    move-result-object v3

    invoke-virtual {v3}, Lb2/f;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public J()Lw1/c;
    .locals 1

    new-instance v0, Lw1/c;

    invoke-direct {v0, p0}, Lw1/c;-><init>(Lw1/c;)V

    return-object v0
.end method

.method public K()I
    .locals 2

    iget v0, p0, Lw1/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lw1/c$a;

    invoke-direct {v0}, Lw1/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lw1/c;->E(Lw1/h$b;)V

    invoke-virtual {v0}, Lw1/c$a;->a()I

    move-result v0

    iput v0, p0, Lw1/c;->b:I

    :cond_0
    iget v0, p0, Lw1/c;->b:I

    return v0
.end method

.method public L(I)Lw1/b;
    .locals 3

    invoke-virtual {p0, p1}, Lb2/m;->A(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lw1/c;->F(I)Lw1/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M(Lw1/b;)Lw1/b;
    .locals 4

    invoke-virtual {p1}, Lw1/b;->f()I

    move-result v0

    invoke-virtual {p1}, Lw1/b;->h()Lb2/j;

    move-result-object p1

    invoke-virtual {p1}, Lb2/j;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lw1/c;->L(I)Lw1/b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v3}, Lb2/j;->B(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lw1/c;->L(I)Lw1/b;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1, v3}, Lb2/j;->B(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lw1/c;->L(I)Lw1/b;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public N(ILw1/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lb2/m;->D(ILb2/l;)V

    const/4 p1, -0x1

    iput p1, p0, Lw1/c;->b:I

    return-void
.end method
