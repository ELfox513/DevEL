.class public Lcom/prineside/tdi2/utils/MultiOutputStreamSync;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:[Ljava/io/OutputStream;

.field public final synchronizer:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    iput-object p1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public write(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public write([B)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public write([BII)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/utils/MultiOutputStreamSync;->a:[Ljava/io/OutputStream;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
