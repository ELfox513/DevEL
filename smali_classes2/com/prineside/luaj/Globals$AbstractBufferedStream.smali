.class abstract Lcom/prineside/luaj/Globals$AbstractBufferedStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBufferedStream"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    iput v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract c()I
.end method

.method public read()I
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->c()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->c()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    return p3
.end method

.method public skip(J)J
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    return-wide p1
.end method
