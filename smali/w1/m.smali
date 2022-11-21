.class public final Lw1/m;
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
            "Lw1/h;",
            "Lw1/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw1/u;)V
    .locals 3

    invoke-direct {p0}, Lb2/o;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1}, Lb2/m;->z()I

    move-result v0

    invoke-virtual {p1}, Lw1/c;->K()I

    move-result v1

    iput v1, p0, Lw1/m;->a:I

    new-instance v2, Lw1/s;

    invoke-direct {v2, v1}, Lw1/s;-><init>(I)V

    iput-object v2, p0, Lw1/m;->b:Lw1/s;

    new-array v0, v0, [Lw1/s;

    iput-object v0, p0, Lw1/m;->d:[Lw1/s;

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lw1/c;->I()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lw1/m;->k:Ljava/util/HashMap;

    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lw1/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public B(I)Lw1/s;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/m;->D(I)Lw1/s;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw1/m;->b:Lw1/s;

    :goto_0
    return-object p1
.end method

.method public C(Lw1/b;)Lw1/s;
    .locals 0

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lw1/m;->B(I)Lw1/s;

    move-result-object p1

    return-object p1
.end method

.method public final D(I)Lw1/s;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lw1/m;->d:[Lw1/s;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(ILw1/s;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lw1/m;->D(I)Lw1/s;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lw1/m;->H(ILw1/s;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lw1/s;->E()Lw1/s;

    move-result-object v2

    invoke-virtual {v0}, Lw1/s;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2, v1}, Lw1/s;->C(Lw1/s;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lw1/s;->E()Lw1/s;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lw1/s;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {v2}, Lb2/o;->setImmutable()V

    invoke-virtual {p0, p1, v2}, Lw1/m;->H(ILw1/s;)V

    return v1
.end method

.method public F(I)Lw1/s;
    .locals 1

    invoke-virtual {p0, p1}, Lw1/m;->D(I)Lw1/s;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw1/s;->E()Lw1/s;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lw1/s;

    iget v0, p0, Lw1/m;->a:I

    invoke-direct {p1, v0}, Lw1/s;-><init>(I)V

    :goto_0
    return-object p1
.end method

.method public H(ILw1/s;)V
    .locals 1

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lw1/m;->d:[Lw1/s;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus label"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Lw1/h;Lw1/q;)V
    .locals 1

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lw1/m;->k:Ljava/util/HashMap;

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

.method public z(Lw1/h;)Lw1/q;
    .locals 1

    iget-object v0, p0, Lw1/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw1/q;

    return-object p1
.end method
