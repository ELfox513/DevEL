.class public Lb2/m;
.super Lb2/f;
.source "SourceFile"


# instance fields
.field public final a:Lb2/j;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    new-instance v0, Lb2/j;

    invoke-direct {v0, p1}, Lb2/j;-><init>(I)V

    iput-object v0, p0, Lb2/m;->a:Lb2/j;

    return-void
.end method

.method public constructor <init>(Lb2/m;)V
    .locals 3

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lb2/f;-><init>(I)V

    iget-object v0, p1, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->I()Lb2/j;

    move-result-object v0

    iput-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v2}, Lb2/f;->set0(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(I)I
    .locals 1

    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->B(I)I

    move-result p1

    return p1
.end method

.method public final B()V
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb2/l;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lb2/m;->a:Lb2/j;

    invoke-interface {v2}, Lb2/l;->a()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lb2/j;->L(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final C(I)V
    .locals 2

    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lb2/j;->L(II)V

    return-void
.end method

.method public D(ILb2/l;)V
    .locals 1

    invoke-virtual {p0, p1}, Lb2/f;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/l;

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb2/l;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lb2/m;->C(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lb2/l;->a()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lb2/m;->x(II)V

    :cond_1
    return-void
.end method

.method public shrinkToFit()V
    .locals 0

    invoke-super {p0}, Lb2/f;->shrinkToFit()V

    invoke-virtual {p0}, Lb2/m;->B()V

    return-void
.end method

.method public final x(II)V
    .locals 4

    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, v0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lb2/m;->a:Lb2/j;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lb2/j;->x(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0, p1, p2}, Lb2/j;->L(II)V

    return-void
.end method

.method public final z()I
    .locals 2

    iget-object v0, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v1, v0}, Lb2/j;->B(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb2/m;->a:Lb2/j;

    invoke-virtual {v1, v0}, Lb2/j;->M(I)V

    return v0
.end method
