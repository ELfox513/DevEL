.class public final Lr4/jk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lr4/ck;

.field public b:I

.field public c:I

.field public d:I

.field public e:[Lr4/ck;


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lr4/jk;->d:I

    const/16 p1, 0x64

    new-array p1, p1, [Lr4/ck;

    iput-object p1, p0, Lr4/jk;->e:[Lr4/ck;

    const/4 p1, 0x1

    new-array p1, p1, [Lr4/ck;

    iput-object p1, p0, Lr4/jk;->a:[Lr4/ck;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lr4/jk;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jk;->b:I

    iput p1, p0, Lr4/jk;->b:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lr4/jk;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Lr4/ck;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jk;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/jk;->c:I

    iget v0, p0, Lr4/jk;->d:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lr4/jk;->e:[Lr4/ck;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr4/jk;->d:I

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lr4/ck;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lr4/ck;-><init>([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lr4/ck;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/jk;->a:[Lr4/ck;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lr4/jk;->e([Lr4/ck;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e([Lr4/ck;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jk;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v2, p0, Lr4/jk;->e:[Lr4/ck;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    add-int/2addr v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr4/ck;

    iput-object v0, p0, Lr4/jk;->e:[Lr4/ck;

    :cond_0
    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v0, p1, v4

    iget-object v2, v0, Lr4/ck;->a:[B

    iget-object v2, p0, Lr4/jk;->e:[Lr4/ck;

    iget v3, p0, Lr4/jk;->d:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lr4/jk;->d:I

    aput-object v0, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lr4/jk;->c:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lr4/jk;->c:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lr4/jk;->b:I

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lr4/ll;->e(II)I

    move-result v1

    iget v2, p0, Lr4/jk;->c:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lr4/jk;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lr4/jk;->e:[Lr4/ck;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lr4/jk;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jk;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, 0x10000

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
