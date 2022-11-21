.class public final Lr4/zw3;
.super Lr4/j5;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/RandomAccessFile;

.field public f:Landroid/net/Uri;

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr4/j5;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lr4/zw3;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    sget v3, Lr4/lc;->a:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lr4/zw3;->g:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lr4/zw3;->g:J

    invoke-virtual {p0, p1}, Lr4/j5;->r(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lr4/yw3;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final g(Lr4/vc;)J
    .locals 7

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/zw3;->f:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lr4/j5;->n(Lr4/vc;)V

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    const/16 v3, 0x7d6

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    iput-object v4, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    :try_start_2
    iget-wide v5, p1, Lr4/vc;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v3, p1, Lr4/vc;->g:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v5, p1, Lr4/vc;->f:J

    sub-long/2addr v3, v5

    :cond_0
    iput-wide v3, p0, Lr4/zw3;->g:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Lr4/zw3;->h:Z

    invoke-virtual {p0, p1}, Lr4/j5;->o(Lr4/vc;)V

    iget-wide v0, p0, Lr4/zw3;->g:J

    return-wide v0

    :cond_1
    new-instance p1, Lr4/yw3;

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lr4/yw3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_0
    move-exception p1

    new-instance v0, Lr4/yw3;

    invoke-direct {v0, p1, v2}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lr4/yw3;

    invoke-direct {v0, p1, v2}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lr4/yw3;

    invoke-direct {v0, p1, v3}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_3
    move-exception p1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lr4/yw3;

    sget v1, Lr4/lc;->a:I

    const/16 v2, 0x15

    const/16 v4, 0x7d5

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lr4/xw3;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x7d5

    :goto_0
    invoke-direct {v0, p1, v3}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_3
    new-instance v2, Lr4/yw3;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {v2, v0, p1, v1}, Lr4/yw3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final h()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/zw3;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lr4/zw3;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lr4/zw3;->h:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lr4/yw3;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lr4/yw3;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lr4/zw3;->e:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lr4/zw3;->h:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lr4/zw3;->h:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :goto_1
    throw v2
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/zw3;->f:Landroid/net/Uri;

    return-object v0
.end method
