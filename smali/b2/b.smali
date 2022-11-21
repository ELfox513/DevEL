.class public Lb2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/k;


# instance fields
.field public a:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb2/c;->i(I)[I

    move-result-object p1

    iput-object p1, p0, Lb2/b;->a:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb2/b;->a:[I

    invoke-static {v0}, Lb2/c;->b([I)I

    move-result v0

    return v0
.end method

.method public add(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lb2/b;->d(I)V

    iget-object v0, p0, Lb2/b;->a:[I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lb2/c;->l([IIZ)V

    return-void
.end method

.method public b(Lb2/k;)V
    .locals 4

    instance-of v0, p1, Lb2/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lb2/b;

    iget-object v0, p1, Lb2/b;->a:[I

    invoke-static {v0}, Lb2/c;->g([I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lb2/b;->d(I)V

    iget-object v0, p0, Lb2/b;->a:[I

    iget-object p1, p1, Lb2/b;->a:[I

    invoke-static {v0, p1}, Lb2/c;->j([I[I)V

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lb2/n;

    if-eqz v0, :cond_2

    check-cast p1, Lb2/n;

    iget-object v0, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p1, Lb2/n;->a:Lb2/j;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lb2/j;->B(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lb2/b;->d(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v2}, Lb2/j;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lb2/b;->a:[I

    iget-object v3, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v3, v0}, Lb2/j;->B(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lb2/c;->l([IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lb2/k;->iterator()Lb2/i;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Lb2/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lb2/i;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lb2/b;->add(I)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lb2/b;->a:[I

    invoke-static {v0}, Lb2/c;->g([I)I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb2/b;->a:[I

    invoke-static {v0, p1}, Lb2/c;->f([II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Lb2/b;->a:[I

    invoke-static {v0}, Lb2/c;->g([I)I

    move-result v0

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lb2/b;->a:[I

    invoke-static {v0}, Lb2/c;->g([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lb2/c;->i(I)[I

    move-result-object p1

    iget-object v0, p0, Lb2/b;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lb2/b;->a:[I

    :cond_0
    return-void
.end method

.method public iterator()Lb2/i;
    .locals 1

    new-instance v0, Lb2/b$a;

    invoke-direct {v0, p0}, Lb2/b$a;-><init>(Lb2/b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb2/b;->a:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lb2/c;->e([II)I

    move-result v1

    const/4 v3, 0x1

    :goto_0
    if-ltz v1, :cond_1

    if-nez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb2/b;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lb2/c;->e([II)I

    move-result v1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
