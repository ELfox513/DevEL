.class public Lo7/h$j;
.super Lo7/h$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final p:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lo7/h$i;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lo7/h$j;->p:[B

    return-void
.end method


# virtual methods
.method public final A(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v2

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final I(Lo7/g;)V
    .locals 3

    iget-object v0, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v1

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lo7/g;->a([BII)V

    return-void
.end method

.method public final K(Lo7/h;II)Z
    .locals 5

    invoke-virtual {p1}, Lo7/h;->size()I

    move-result v0

    if-gt p3, v0, :cond_4

    add-int v0, p2, p3

    invoke-virtual {p1}, Lo7/h;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    instance-of v1, p1, Lo7/h$j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lo7/h$j;

    iget-object v0, p0, Lo7/h$j;->p:[B

    iget-object v1, p1, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result p3

    invoke-virtual {p1}, Lo7/h$j;->M()I

    move-result p1

    add-int/2addr p1, p2

    :goto_0
    if-ge p3, v3, :cond_1

    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {p1, p2, v0}, Lo7/h;->w(II)Lo7/h;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Lo7/h$j;->w(II)Lo7/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo7/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo7/h;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public M()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)B
    .locals 1

    iget-object v0, p0, Lo7/h$j;->p:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo7/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lo7/h;

    invoke-virtual {v3}, Lo7/h;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lo7/h$j;

    if-eqz v0, :cond_5

    check-cast p1, Lo7/h$j;

    invoke-virtual {p0}, Lo7/h;->v()I

    move-result v0

    invoke-virtual {p1}, Lo7/h;->v()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lo7/h$j;->K(Lo7/h;II)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public m([BIII)V
    .locals 1

    iget-object v0, p0, Lo7/h$j;->p:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public o(I)B
    .locals 1

    iget-object v0, p0, Lo7/h$j;->p:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final q()Z
    .locals 3

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v0

    iget-object v1, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lo7/t1;->n([BII)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lo7/h$j;->p:[B

    array-length v0, v0

    return v0
.end method

.method public final t()Lo7/i;
    .locals 4

    iget-object v0, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v1

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lo7/i;->h([BIIZ)Lo7/i;

    move-result-object v0

    return-object v0
.end method

.method public final u(III)I
    .locals 2

    iget-object v0, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Lo7/a0;->i(I[BII)I

    move-result p1

    return p1
.end method

.method public final w(II)Lo7/h;
    .locals 3

    invoke-virtual {p0}, Lo7/h$j;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lo7/h;->i(III)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lo7/h;->b:Lo7/h;

    return-object p1

    :cond_0
    new-instance v0, Lo7/h$e;

    iget-object v1, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$j;->M()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Lo7/h$e;-><init>([BII)V

    return-object v0
.end method
