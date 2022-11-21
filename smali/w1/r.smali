.class public final Lw1/r;
.super Lb2/f;
.source "SourceFile"

# interfaces
.implements Ly1/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw1/r$b;
    }
.end annotation


# static fields
.field public static final a:Lw1/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw1/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw1/r;-><init>(I)V

    sput-object v0, Lw1/r;->a:Lw1/r;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method public static D(Lw1/q;)Lw1/r;
    .locals 2

    new-instance v0, Lw1/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw1/r;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lw1/r;->F(ILw1/q;)V

    return-object v0
.end method

.method public static E(Lw1/q;Lw1/q;)Lw1/r;
    .locals 2

    new-instance v0, Lw1/r;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lw1/r;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lw1/r;->F(ILw1/q;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lw1/r;->F(ILw1/q;)V

    return-object v0
.end method

.method public static synthetic x(Lw1/r;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lw1/r;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A(I)Lw1/q;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/q;

    return-object p1
.end method

.method public B()I
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lw1/r;->getType(I)Ly1/c;

    move-result-object v3

    invoke-virtual {v3}, Ly1/c;->n()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public C(I)I
    .locals 3

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {v2}, Lw1/q;->B()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public F(ILw1/q;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public H(Ljava/util/BitSet;)Lw1/r;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    sget-object p1, Lw1/r;->a:Lw1/r;

    return-object p1

    :cond_0
    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb2/f;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_3
    return-object v1
.end method

.method public I(IZLjava/util/BitSet;)Lw1/r;
    .locals 8

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v7, Lw1/r$b;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lw1/r$b;-><init>(Lw1/r;Ljava/util/BitSet;IZLw1/r$a;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-static {v7, p1}, Lw1/r$b;->a(Lw1/r$b;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lw1/r$b;->b(Lw1/r$b;)Lw1/r;

    move-result-object p1

    return-object p1
.end method

.method public J(Lw1/q;)Lw1/r;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Lw1/r;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lw1/r;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lb2/f;->set0(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2, p1}, Lb2/f;->set0(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_1
    return-object v1
.end method

.method public K(I)Lw1/r;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw1/q;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lw1/q;->R(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb2/f;->set0(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_3
    return-object v1
.end method

.method public L()Lw1/r;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lw1/r;->a:Lw1/r;

    return-object v0

    :cond_0
    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lb2/f;->set0(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_2
    return-object v1
.end method

.method public M()Lw1/r;
    .locals 4

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    sget-object v0, Lw1/r;->a:Lw1/r;

    return-object v0

    :cond_0
    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb2/f;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_2
    return-object v1
.end method

.method public d(Ly1/c;)Ly1/e;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(I)Ly1/c;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/r;->A(I)Lw1/q;

    move-result-object p1

    invoke-virtual {p1}, Lw1/q;->getType()Ly1/c;

    move-result-object p1

    invoke-virtual {p1}, Ly1/c;->getType()Ly1/c;

    move-result-object p1

    return-object p1
.end method
