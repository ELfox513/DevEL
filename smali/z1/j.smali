.class public Lz1/j;
.super Lb2/o;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lw1/s;

.field public final d:[Lw1/s;

.field public final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lz1/u;",
            "Lw1/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/v;)V
    .locals 2

    invoke-direct {p0}, Lb2/o;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz1/v;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lz1/v;->u()I

    move-result p1

    iput p1, p0, Lz1/j;->a:I

    new-instance v1, Lw1/s;

    invoke-direct {v1, p1}, Lw1/s;-><init>(I)V

    iput-object v1, p0, Lz1/j;->b:Lw1/s;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lw1/s;

    iput-object p1, p0, Lz1/j;->d:[Lw1/s;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz1/j;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final A(I)Lw1/s;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz1/j;->d:[Lw1/s;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B(ILw1/s;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lz1/j;->A(I)Lw1/s;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lz1/j;->D(ILw1/s;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lw1/s;->E()Lw1/s;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lw1/s;->C(Lw1/s;Z)V

    invoke-virtual {v0, v2}, Lw1/s;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    invoke-virtual {p0, p1, v2}, Lz1/j;->D(ILw1/s;)V

    return v1
.end method

.method public C(I)Lw1/s;
    .locals 1

    invoke-virtual {p0, p1}, Lz1/j;->A(I)Lw1/s;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw1/s;->E()Lw1/s;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lw1/s;

    iget v0, p0, Lz1/j;->a:I

    invoke-direct {p1, v0}, Lw1/s;-><init>(I)V

    :goto_0
    return-object p1
.end method

.method public D(ILw1/s;)V
    .locals 1

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lz1/j;->d:[Lw1/s;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lz1/u;Lw1/q;)V
    .locals 1

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lz1/j;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)Lw1/s;
    .locals 0

    invoke-virtual {p0, p1}, Lz1/j;->A(I)Lw1/s;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz1/j;->b:Lw1/s;

    :goto_0
    return-object p1
.end method
