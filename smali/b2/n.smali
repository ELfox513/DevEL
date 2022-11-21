.class public Lb2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/k;


# instance fields
.field public final a:Lb2/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb2/j;

    invoke-direct {v0}, Lb2/j;-><init>()V

    iput-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->N()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    return v0
.end method

.method public add(I)V
    .locals 2

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->z(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lb2/n;->a:Lb2/j;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lb2/j;->E(II)V

    :cond_0
    return-void
.end method

.method public b(Lb2/k;)V
    .locals 6

    instance-of v0, p1, Lb2/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lb2/n;

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    iget-object v2, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v2}, Lb2/j;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    if-ge v1, v2, :cond_3

    if-ge v3, v0, :cond_3

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v4, v1}, Lb2/j;->B(I)I

    move-result v4

    iget-object v5, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v5, v3}, Lb2/j;->B(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p1, Lb2/n;->a:Lb2/j;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v1}, Lb2/j;->B(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lb2/n;->add(I)V

    move v1, v5

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v4, v1}, Lb2/j;->B(I)I

    move-result v4

    iget-object v5, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v5, v3}, Lb2/j;->B(I)I

    move-result v5

    if-lt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, v2, :cond_4

    iget-object v0, p1, Lb2/n;->a:Lb2/j;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lb2/n;->add(I)V

    move v1, v3

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {p1}, Lb2/j;->N()V

    goto :goto_5

    :cond_5
    instance-of v0, p1, Lb2/b;

    if-eqz v0, :cond_7

    check-cast p1, Lb2/b;

    :goto_3
    if-ltz v1, :cond_6

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0, v1}, Lb2/j;->x(I)V

    iget-object v0, p1, Lb2/b;->a:[I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lb2/c;->e([II)I

    move-result v1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {p1}, Lb2/j;->N()V

    goto :goto_5

    :cond_7
    invoke-interface {p1}, Lb2/k;->iterator()Lb2/i;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Lb2/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lb2/i;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lb2/n;->add(I)V

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->D(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Lb2/i;
    .locals 1

    new-instance v0, Lb2/n$a;

    invoke-direct {v0, p0}, Lb2/n$a;-><init>(Lb2/n;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb2/n;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
