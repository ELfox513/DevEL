.class public final Lr4/mx3;
.super Lr4/j5;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/res/Resources;

.field public final f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Landroid/content/res/AssetFileDescriptor;

.field public i:Ljava/io/InputStream;

.field public j:J

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lr4/j5;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lr4/mx3;->e:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr4/mx3;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 9

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lr4/mx3;->j:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_5

    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v7, p3

    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lr4/mx3;->i:Ljava/io/InputStream;

    sget v1, Lr4/lc;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    iget-wide p1, p0, Lr4/mx3;->j:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_2

    return v4

    :cond_2
    new-instance p1, Lr4/lx3;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_3
    iget-wide p2, p0, Lr4/mx3;->j:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lr4/mx3;->j:J

    :cond_4
    invoke-virtual {p0, p1}, Lr4/j5;->r(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lr4/lx3;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :cond_5
    return v4
.end method

.method public final g(Lr4/vc;)J
    .locals 14

    iget-object v0, p1, Lr4/vc;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/mx3;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawresource"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x7d5

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.resource"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "\\d+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lr4/mx3;->e:Landroid/content/res/Resources;

    iget-object v6, p0, Lr4/mx3;->f:Ljava/lang/String;

    const-string v7, "raw"

    invoke-virtual {v3, v1, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Lr4/lx3;

    const-string v0, "Resource not found."

    invoke-direct {p1, v0, v5, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_5
    new-instance p1, Lr4/lx3;

    const-string v0, "URI must either use scheme rawresource or android.resource"

    invoke-direct {p1, v0, v5, v3}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_6
    :goto_2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_3
    invoke-virtual {p0, p1}, Lr4/j5;->n(Lr4/vc;)V

    :try_start_2
    iget-object v3, p0, Lr4/mx3;->e:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    iput-object v1, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    const/16 v2, 0x7d0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lr4/mx3;->i:Ljava/io/InputStream;

    const/16 v3, 0x7d8

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-eqz v10, :cond_8

    :try_start_3
    iget-wide v10, p1, Lr4/vc;->f:J

    cmp-long v12, v10, v6

    if-gtz v12, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Lr4/lx3;

    invoke-direct {p1, v5, v5, v3}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_8
    :goto_4
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    iget-wide v12, p1, Lr4/vc;->f:J

    add-long/2addr v12, v10

    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    iget-wide v10, p1, Lr4/vc;->f:J

    cmp-long v1, v12, v10

    if-nez v1, :cond_10

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-nez v1, :cond_9

    iput-wide v8, p0, Lr4/mx3;->j:J

    move-wide v6, v8

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v6, v0

    iput-wide v6, p0, Lr4/mx3;->j:J

    cmp-long v0, v6, v10

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Lr4/lx3;

    invoke-direct {p1, v5, v5, v3}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_b
    sub-long/2addr v6, v12

    iput-wide v6, p0, Lr4/mx3;->j:J
    :try_end_3
    .catch Lr4/lx3; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    cmp-long v0, v6, v10

    if-ltz v0, :cond_f

    :goto_5
    iget-wide v0, p1, Lr4/vc;->g:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_d

    cmp-long v2, v6, v8

    if-eqz v2, :cond_c

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_c
    iput-wide v0, p0, Lr4/mx3;->j:J

    :cond_d
    iput-boolean v4, p0, Lr4/mx3;->k:Z

    invoke-virtual {p0, p1}, Lr4/j5;->o(Lr4/vc;)V

    iget-wide v0, p1, Lr4/vc;->g:J

    cmp-long p1, v0, v8

    if-eqz p1, :cond_e

    return-wide v0

    :cond_e
    iget-wide v0, p0, Lr4/mx3;->j:J

    return-wide v0

    :cond_f
    :try_start_4
    new-instance p1, Lr4/p9;

    invoke-direct {p1, v3}, Lr4/p9;-><init>(I)V

    throw p1

    :cond_10
    new-instance p1, Lr4/lx3;

    invoke-direct {p1, v5, v5, v3}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
    :try_end_4
    .catch Lr4/lx3; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lr4/lx3;

    invoke-direct {v0, v5, p1, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    throw p1

    :cond_11
    new-instance p1, Lr4/lx3;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Resource is compressed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v5, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_2
    move-exception p1

    new-instance v0, Lr4/lx3;

    invoke-direct {v0, v5, p1, v2}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_3
    new-instance p1, Lr4/lx3;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0, v5, v3}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public final h()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/mx3;->g:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lr4/mx3;->i:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lr4/mx3;->i:Ljava/io/InputStream;

    :try_start_1
    iget-object v3, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lr4/mx3;->k:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lr4/mx3;->k:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Lr4/lx3;

    invoke-direct {v4, v0, v3, v1}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lr4/mx3;->k:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lr4/mx3;->k:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    new-instance v4, Lr4/lx3;

    invoke-direct {v4, v0, v3, v1}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Lr4/mx3;->i:Ljava/io/InputStream;

    :try_start_4
    iget-object v4, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lr4/mx3;->k:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lr4/mx3;->k:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_5
    new-instance v4, Lr4/lx3;

    invoke-direct {v4, v0, v3, v1}, Lr4/lx3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Lr4/mx3;->h:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lr4/mx3;->k:Z

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iput-boolean v2, p0, Lr4/mx3;->k:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :goto_3
    throw v1
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/mx3;->g:Landroid/net/Uri;

    return-object v0
.end method
