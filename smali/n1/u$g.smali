.class public Ln1/u$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/util/BitSet;

.field public b:Ljava/util/BitSet;

.field public c:I

.field public final synthetic d:Ln1/u;


# direct methods
.method public constructor <init>(Ln1/u;I)V
    .locals 1

    iput-object p1, p0, Ln1/u$g;->d:Ln1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ln1/u$g;->c:I

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Ln1/u;->b(Ln1/u;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Ln1/u$g;->b:Ljava/util/BitSet;

    new-instance p2, Ljava/util/BitSet;

    invoke-static {p1}, Ln1/u;->b(Ln1/u;)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ln1/u;->e(Ln1/u;Z)Z

    return-void
.end method

.method public constructor <init>(Ln1/u;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ln1/u$g;-><init>(Ln1/u;I)V

    invoke-virtual {p0, p3}, Ln1/u$g;->d(I)V

    return-void
.end method

.method public static synthetic a(Ln1/u$g;)I
    .locals 0

    iget p0, p0, Ln1/u$g;->c:I

    return p0
.end method

.method public static synthetic b(Ln1/u$g;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Ln1/u$g;->b:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method public c(I)V
    .locals 1

    iget-object v0, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Ln1/u$g;->b:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ln1/u$g;->c:I

    return v0
.end method

.method public f()Lb2/j;
    .locals 4

    new-instance v0, Lb2/j;

    iget-object v1, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lb2/j;-><init>(I)V

    iget-object v1, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Ln1/u$g;->d:Ln1/u;

    invoke-static {v3, v1}, Ln1/u;->f(Ln1/u;I)Lw1/b;

    move-result-object v3

    invoke-virtual {v3}, Lw1/b;->h()Lb2/j;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb2/j;->B(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lb2/j;->x(I)V

    iget-object v3, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    return-object v0
.end method

.method public g(Ln1/l;[I)V
    .locals 9

    iget-object v0, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Ln1/u$g;->d:Ln1/u;

    invoke-static {v2, v0}, Ln1/u;->f(Ln1/u;I)Lw1/b;

    move-result-object v2

    invoke-virtual {v2}, Lw1/b;->h()Lb2/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb2/j;->B(I)I

    move-result v4

    iget v2, p0, Ln1/u$g;->c:I

    invoke-virtual {p1, v2, v0}, Ln1/l;->o(II)Ln1/l;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v3, p0, Ln1/u$g;->d:Ln1/u;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Ln1/u;->g(Ln1/u;IILn1/u$g;Ln1/l;[I)V

    goto :goto_1

    :cond_0
    invoke-static {p2, v0}, Lb2/c;->k([II)V

    :goto_1
    iget-object v2, p0, Ln1/u$g;->a:Ljava/util/BitSet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method
