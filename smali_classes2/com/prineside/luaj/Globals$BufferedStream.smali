.class Lcom/prineside/luaj/Globals$BufferedStream;
.super Lcom/prineside/luaj/Globals$AbstractBufferedStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Globals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferedStream"
.end annotation


# instance fields
.field public final k:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/Globals$AbstractBufferedStream;-><init>(I)V

    iput-object p2, p0, Lcom/prineside/luaj/Globals$BufferedStream;->k:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/prineside/luaj/Globals$BufferedStream;-><init>(ILjava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    array-length v2, v0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    iput v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    :cond_1
    iget-object v1, p0, Lcom/prineside/luaj/Globals$BufferedStream;->k:Ljava/io/InputStream;

    iget v2, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_2

    return v1

    :cond_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/prineside/luaj/Globals$BufferedStream;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    iget v2, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    :cond_4
    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Globals$BufferedStream;->k:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    if-gtz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    array-length v1, v1

    if-le p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B

    array-length v2, v1

    if-le p1, v2, :cond_1

    new-array p1, p1, [B

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    iget v2, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    iget v1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->d:I

    iput v3, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I

    iput-object p1, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/prineside/luaj/Globals$AbstractBufferedStream;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
