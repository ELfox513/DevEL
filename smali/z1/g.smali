.class public Lz1/g;
.super Lz1/a;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb2/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:La2/c;


# direct methods
.method public constructor <init>(La2/c;I)V
    .locals 0

    invoke-direct {p0, p2}, Lz1/a;-><init>(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lz1/g;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lz1/g;->d:La2/c;

    return-void
.end method


# virtual methods
.method public e(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lz1/a;->e(III)V

    invoke-virtual {p0, p2, p1}, Lz1/g;->g(II)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2, p1}, Lz1/g;->g(II)V

    :cond_0
    return-void
.end method

.method public final g(II)V
    .locals 3

    iget-object v0, p0, Lz1/g;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_0
    iget-object v0, p0, Lz1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lz1/g;->c:Ljava/util/ArrayList;

    new-instance v2, Lb2/b;

    invoke-direct {v2, v1}, Lb2/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/g;->d:La2/c;

    iget-object v1, p0, Lz1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb2/k;

    invoke-virtual {v0, p2, p1}, La2/c;->c(ILb2/k;)V

    return-void
.end method

.method public h(Lw1/r;II)Z
    .locals 6

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v3}, Lw1/q;->B()I

    move-result v4

    invoke-virtual {p0, v4}, Lz1/a;->f(I)I

    move-result v4

    if-eq v4, p2, :cond_2

    invoke-virtual {v3}, Lw1/q;->x()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    if-eq v3, p2, :cond_2

    :cond_0
    if-ne p3, v5, :cond_1

    add-int/lit8 v3, p2, 0x1

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public i(III)Z
    .locals 3

    iget-object v0, p0, Lz1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lz1/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb2/k;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    invoke-interface {v0, p1}, Lb2/k;->c(I)Z

    move-result p1

    return p1

    :cond_2
    invoke-interface {v0, p1}, Lb2/k;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lz1/g;->i(III)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public j(Lw1/q;I)Z
    .locals 1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p1}, Lw1/q;->x()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, Lz1/g;->i(III)Z

    move-result p1

    return p1
.end method
