.class public final Lr4/cn3;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/nio/ByteBuffer;

.field public d:I

.field public k:I

.field public p:I

.field public q:Z

.field public r:[B

.field public s:I

.field public t:J


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lr4/cn3;->a:Ljava/util/Iterator;

    const/4 v0, 0x0

    iput v0, p0, Lr4/cn3;->d:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget v1, p0, Lr4/cn3;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lr4/cn3;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lr4/cn3;->k:I

    invoke-virtual {p0}, Lr4/cn3;->c()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lr4/zm3;->d:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    iput v0, p0, Lr4/cn3;->k:I

    iput v0, p0, Lr4/cn3;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr4/cn3;->t:J

    :cond_1
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 4

    iget v0, p0, Lr4/cn3;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/cn3;->k:I

    iget-object v0, p0, Lr4/cn3;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lr4/cn3;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lr4/cn3;->p:I

    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lr4/cn3;->q:Z

    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lr4/cn3;->r:[B

    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iput v0, p0, Lr4/cn3;->s:I

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lr4/cn3;->q:Z

    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lr4/rp3;->A(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lr4/cn3;->t:J

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/cn3;->r:[B

    :goto_0
    return v1
.end method

.method public final d(I)V
    .locals 1

    iget v0, p0, Lr4/cn3;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lr4/cn3;->p:I

    iget-object p1, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lr4/cn3;->c()Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 6

    iget v0, p0, Lr4/cn3;->k:I

    iget v1, p0, Lr4/cn3;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lr4/cn3;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/cn3;->r:[B

    iget v2, p0, Lr4/cn3;->p:I

    iget v3, p0, Lr4/cn3;->s:I

    add-int/2addr v2, v3

    aget-byte v0, v0, v2

    invoke-virtual {p0, v1}, Lr4/cn3;->d(I)V

    :goto_0
    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    iget v0, p0, Lr4/cn3;->p:I

    iget-wide v2, p0, Lr4/cn3;->t:J

    int-to-long v4, v0

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lr4/rp3;->z(J)B

    move-result v0

    invoke-virtual {p0, v1}, Lr4/cn3;->d(I)V

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 3

    iget v0, p0, Lr4/cn3;->k:I

    iget v1, p0, Lr4/cn3;->d:I

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lr4/cn3;->p:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-boolean v0, p0, Lr4/cn3;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr4/cn3;->r:[B

    iget v2, p0, Lr4/cn3;->s:I

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lr4/cn3;->d(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    iget v2, p0, Lr4/cn3;->p:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lr4/cn3;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Lr4/cn3;->d(I)V

    :goto_0
    return p3
.end method
