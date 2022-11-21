.class public final Lx1/h;
.super Lx1/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx1/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lx1/d;-><init>(Lx1/d$a;)V

    return-void
.end method

.method public static u(Lx1/y;Lx1/a0;Ln1/c;)Lx1/h;
    .locals 3

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Lx1/d$a;

    invoke-virtual {p2}, Lb2/f;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lx1/d$a;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lx1/d$a;->z(ILx1/a;)V

    invoke-virtual {p1}, Lx1/a0;->x()Lx1/d0;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lx1/d$a;->z(ILx1/a;)V

    const/4 p0, 0x2

    new-instance v2, Lx1/b0;

    invoke-virtual {p1}, Lx1/a0;->n()Lx1/d0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/d0;->u()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ly1/a;->f(Ljava/lang/String;)Ly1/a;

    move-result-object p1

    invoke-direct {v2, p1}, Lx1/b0;-><init>(Ly1/a;)V

    invoke-virtual {v0, p0, v2}, Lx1/d$a;->z(ILx1/a;)V

    :goto_0
    invoke-virtual {p2}, Lb2/f;->size()I

    move-result p0

    if-ge v1, p0, :cond_0

    add-int/lit8 p0, v1, 0x3

    invoke-virtual {p2, v1}, Ln1/c;->get(I)Lx1/a;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lx1/d$a;->z(ILx1/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb2/o;->setImmutable()V

    new-instance p0, Lx1/h;

    invoke-direct {p0, v0}, Lx1/h;-><init>(Lx1/d$a;)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "nat == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bootstrapMethodHandle == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 1

    invoke-virtual {p0}, Lx1/d;->n()Lx1/d$a;

    move-result-object v0

    check-cast p1, Lx1/h;

    invoke-virtual {p1}, Lx1/d;->n()Lx1/d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/d$a;->x(Lx1/d$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lx1/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lx1/d;->n()Lx1/d$a;

    move-result-object v0

    check-cast p1, Lx1/h;

    invoke-virtual {p1}, Lx1/d;->n()Lx1/d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb2/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lx1/d;->n()Lx1/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lb2/f;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "call site"

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lx1/d;->n()Lx1/d$a;

    move-result-object v0

    const-string v1, "{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb2/f;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lx1/d;->n()Lx1/d$a;

    move-result-object v0

    const-string v1, "call site{"

    const-string v2, ", "

    const-string v3, "}"

    invoke-virtual {v0, v1, v2, v3}, Lb2/f;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
