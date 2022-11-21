.class public Lz1/a;
.super Lz1/p;
.source "SourceFile"


# instance fields
.field public final a:Lb2/j;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lz1/p;-><init>()V

    new-instance v0, Lb2/j;

    invoke-direct {v0, p1}, Lb2/j;-><init>(I)V

    iput-object v0, p0, Lz1/a;->a:Lb2/j;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lz1/a;->b:I

    return v0
.end method

.method public b(Lw1/q;)Lw1/q;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v1

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Lw1/q;->S(I)Lw1/q;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no mapping specified for register"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(III)V
    .locals 3

    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lz1/a;->a:Lb2/j;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lb2/j;->x(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {v0, p1, p2}, Lb2/j;->L(II)V

    iget p1, p0, Lz1/a;->b:I

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iput p2, p0, Lz1/a;->b:I

    :cond_1
    return-void
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {v0}, Lb2/j;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lz1/a;->a:Lb2/j;

    invoke-virtual {v0, p1}, Lb2/j;->B(I)I

    move-result p1

    return p1
.end method
