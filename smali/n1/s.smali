.class public Ln1/s;
.super Ln1/o;
.source "SourceFile"


# instance fields
.field public final a:[Ly1/d;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Ln1/o;-><init>(Z)V

    new-array p1, p1, [Ly1/d;

    iput-object p1, p0, Ln1/s;->a:[Ly1/d;

    return-void
.end method

.method public static N(ILjava/lang/String;)Ly1/d;
    .locals 3

    new-instance v0, Ln1/w;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(I)Ly1/d;
    .locals 1

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const-string v0, "invalid"

    invoke-static {p1, v0}, Ln1/s;->N(ILjava/lang/String;)Ly1/d;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public B()Ln1/s;
    .locals 0

    return-object p0
.end method

.method public C(Ly1/c;)V
    .locals 5

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    invoke-virtual {p1}, Ly1/c;->B()Ly1/c;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Ln1/s;->a:[Ly1/d;

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_1

    aput-object v1, v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public D(Ln1/o;)Ln1/o;
    .locals 1

    instance-of v0, p1, Ln1/s;

    if-eqz v0, :cond_0

    check-cast p1, Ln1/s;

    invoke-virtual {p0, p1}, Ln1/s;->M(Ln1/s;)Ln1/s;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p0}, Ln1/o;->D(Ln1/o;)Ln1/o;

    move-result-object p1

    return-object p1
.end method

.method public E(Ln1/o;I)Ln1/p;
    .locals 2

    new-instance v0, Ln1/p;

    invoke-virtual {p0}, Ln1/s;->J()I

    move-result v1

    invoke-direct {v0, v1}, Ln1/p;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ln1/p;->E(Ln1/o;I)Ln1/p;

    move-result-object p1

    return-object p1
.end method

.method public F(ILy1/d;)V
    .locals 3

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    :try_start_0
    invoke-interface {p2}, Ly1/d;->v()Ly1/d;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_2

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object v0

    invoke-virtual {v0}, Ly1/c;->K()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    add-int/lit8 v2, p1, 0x1

    aput-object v1, v0, v2

    :cond_0
    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    aput-object p2, v0, p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    aget-object p2, v0, p1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ly1/d;->getType()Ly1/c;

    move-result-object p2

    invoke-virtual {p2}, Ly1/c;->K()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Ln1/s;->a:[Ly1/d;

    aput-object v1, p2, p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "idx < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Lw1/q;)V
    .locals 1

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ln1/s;->F(ILy1/d;)V

    return-void
.end method

.method public I()Ln1/s;
    .locals 5

    new-instance v0, Ln1/s;

    iget-object v1, p0, Ln1/s;->a:[Ly1/d;

    array-length v1, v1

    invoke-direct {v0, v1}, Ln1/s;-><init>(I)V

    iget-object v1, p0, Ln1/s;->a:[Ly1/d;

    iget-object v2, v0, Ln1/s;->a:[Ly1/d;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    array-length v0, v0

    return v0
.end method

.method public K(I)Ly1/d;
    .locals 1

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public L(I)V
    .locals 2

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    iget-object v0, p0, Ln1/s;->a:[Ly1/d;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public M(Ln1/s;)Ln1/s;
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Ln1/r;->b(Ln1/s;Ln1/s;)Ln1/s;

    move-result-object p1
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ln1/s;->x(Ll1/d;)V

    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Ll1/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ln1/s;->x(Ll1/d;)V

    throw v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ln1/s;->a:[Ly1/d;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const-string v2, "<invalid>"

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locals["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Ll1/d;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln1/s;->a:[Ly1/d;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const-string v1, "<invalid>"

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locals["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ll1/d;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic z()Ln1/o;
    .locals 1

    invoke-virtual {p0}, Ln1/s;->I()Ln1/s;

    move-result-object v0

    return-object v0
.end method
