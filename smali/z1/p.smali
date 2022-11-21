.class public abstract Lz1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lw1/q;)Lw1/q;
.end method

.method public final c(Lw1/r;)Lw1/r;
    .locals 4

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Lw1/r;

    invoke-direct {v1, v0}, Lw1/r;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lw1/r;->A(I)Lw1/q;

    move-result-object v3

    invoke-virtual {p0, v3}, Lz1/p;->b(Lw1/q;)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lw1/r;->F(ILw1/q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    invoke-virtual {v1, p1}, Lb2/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public final d(Lw1/s;)Lw1/s;
    .locals 4

    invoke-virtual {p1}, Lw1/s;->B()I

    move-result v0

    new-instance v1, Lw1/s;

    invoke-virtual {p0}, Lz1/p;->a()I

    move-result v2

    invoke-direct {v1, v2}, Lw1/s;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lw1/s;->z(I)Lw1/q;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lz1/p;->b(Lw1/q;)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Lw1/s;->F(Lw1/q;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    invoke-virtual {v1, p1}, Lw1/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method
