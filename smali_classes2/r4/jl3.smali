.class public final Lr4/jl3;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final q:[B


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr4/ll3;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public k:[B

.field public p:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lr4/jl3;->q:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x80

    iput p1, p0, Lr4/jl3;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr4/jl3;->b:Ljava/util/ArrayList;

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/jl3;->k:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized c()Lr4/ll3;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jl3;->p:I

    iget-object v1, p0, Lr4/jl3;->k:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    if-lez v0, :cond_1

    new-array v4, v0, [B

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lr4/jl3;->b:Ljava/util/ArrayList;

    new-instance v1, Lr4/hl3;

    invoke-direct {v1, v4}, Lr4/hl3;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/jl3;->b:Ljava/util/ArrayList;

    new-instance v2, Lr4/hl3;

    invoke-direct {v2, v1}, Lr4/hl3;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lr4/jl3;->q:[B

    iput-object v0, p0, Lr4/jl3;->k:[B

    :cond_1
    :goto_0
    iget v0, p0, Lr4/jl3;->d:I

    iget v1, p0, Lr4/jl3;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lr4/jl3;->d:I

    iput v3, p0, Lr4/jl3;->p:I

    iget-object v0, p0, Lr4/jl3;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lr4/ll3;->O(Ljava/lang/Iterable;)Lr4/ll3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jl3;->d:I

    iget v1, p0, Lr4/jl3;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(I)V
    .locals 3

    iget-object v0, p0, Lr4/jl3;->b:Ljava/util/ArrayList;

    new-instance v1, Lr4/hl3;

    iget-object v2, p0, Lr4/jl3;->k:[B

    invoke-direct {v1, v2}, Lr4/hl3;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lr4/jl3;->d:I

    iget-object v1, p0, Lr4/jl3;->k:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lr4/jl3;->d:I

    iget v1, p0, Lr4/jl3;->a:I

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/jl3;->k:[B

    const/4 p1, 0x0

    iput p1, p0, Lr4/jl3;->p:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lr4/jl3;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString.Output@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lr4/jl3;->p:I

    iget-object v1, p0, Lr4/jl3;->k:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr4/jl3;->e(I)V

    :cond_0
    iget-object v0, p0, Lr4/jl3;->k:[B

    iget v1, p0, Lr4/jl3;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr4/jl3;->p:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr4/jl3;->k:[B

    array-length v1, v0

    iget v2, p0, Lr4/jl3;->p:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/jl3;->p:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/jl3;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v1

    invoke-virtual {p0, p3}, Lr4/jl3;->e(I)V

    add-int/2addr p2, v1

    iget-object v0, p0, Lr4/jl3;->k:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lr4/jl3;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
