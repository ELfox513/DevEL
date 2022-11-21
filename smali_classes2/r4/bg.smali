.class public final Lr4/bg;
.super Lr4/j5;
.source "SourceFile"

# interfaces
.implements Lr4/jm;


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lr4/gl;

.field public final j:Lr4/gl;

.field public k:Lr4/vc;

.field public l:Ljava/net/HttpURLConnection;

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public o:I

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLr4/gl;Lr4/a13;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lr4/gl;",
            "Lr4/a13<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 p6, 0x1

    invoke-direct {p0, p6}, Lr4/j5;-><init>(Z)V

    iput-object p1, p0, Lr4/bg;->h:Ljava/lang/String;

    iput p2, p0, Lr4/bg;->f:I

    iput p3, p0, Lr4/bg;->g:I

    iput-boolean p4, p0, Lr4/bg;->e:Z

    iput-object p5, p0, Lr4/bg;->i:Lr4/gl;

    new-instance p1, Lr4/gl;

    invoke-direct {p1}, Lr4/gl;-><init>()V

    iput-object p1, p0, Lr4/bg;->j:Lr4/gl;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZLr4/gl;Lr4/a13;ZLr4/af;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lr4/gl;",
            "Lr4/a13<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lr4/bg;-><init>(Ljava/lang/String;IIZLr4/gl;Lr4/a13;Z)V

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 6

    const/4 v0, -0x1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-wide v1, p0, Lr4/bg;->p:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iget-wide v3, p0, Lr4/bg;->q:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    int-to-long v3, p3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    :cond_2
    iget-object v1, p0, Lr4/bg;->m:Ljava/io/InputStream;

    sget v2, Lr4/lc;->a:I

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-wide p2, p0, Lr4/bg;->q:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lr4/bg;->q:J

    invoke-virtual {p0, p1}, Lr4/j5;->r(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    :goto_0
    return v0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lr4/bg;->k:Lr4/vc;

    sget p3, Lr4/lc;->a:I

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lr4/fj;->a(Ljava/io/IOException;Lr4/vc;I)Lr4/fj;

    move-result-object p1

    throw p1
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final g(Lr4/vc;)J
    .locals 24

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iput-object v13, v12, Lr4/bg;->k:Lr4/vc;

    const-wide/16 v14, 0x0

    iput-wide v14, v12, Lr4/bg;->q:J

    iput-wide v14, v12, Lr4/bg;->p:J

    invoke-virtual/range {p0 .. p1}, Lr4/j5;->n(Lr4/vc;)V

    const/4 v11, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, v13, Lr4/vc;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v9, v13, Lr4/vc;->f:J

    iget-wide v7, v13, Lr4/vc;->g:J

    invoke-virtual {v13, v11}, Lr4/vc;->b(I)Z

    move-result v0

    iget-boolean v1, v12, Lr4/bg;->e:Z

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x1

    iget-object v6, v13, Lr4/vc;->d:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v17, v6

    move-wide v5, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lr4/bg;->t(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v11, v2

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    const/16 v1, 0x14

    if-gt v5, v1, :cond_14

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x0

    iget-object v5, v13, Lr4/vc;->d:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide v5, v9

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v23, v11

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lr4/bg;->t(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12c

    if-eq v2, v4, :cond_13

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_13

    const/16 v4, 0x12e

    if-eq v2, v4, :cond_13

    const/16 v4, 0x12f

    if-eq v2, v4, :cond_13

    const/16 v4, 0x133

    if-eq v2, v4, :cond_13

    const/16 v4, 0x134

    if-ne v2, v4, :cond_1

    goto/16 :goto_a

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, v12, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v12, Lr4/bg;->o:I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    iget v1, v12, Lr4/bg;->o:I

    const/16 v2, 0x7d8

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v6, -0x1

    if-lt v1, v5, :cond_d

    const/16 v8, 0x12b

    if-le v1, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v1, v12, Lr4/bg;->o:I

    if-ne v1, v5, :cond_3

    iget-wide v8, v13, Lr4/vc;->f:J

    cmp-long v1, v8, v14

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v8, v14

    :goto_2
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gzip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-wide v10, v13, Lr4/vc;->g:J

    cmp-long v3, v10, v6

    if-eqz v3, :cond_4

    iput-wide v10, v12, Lr4/bg;->p:J

    goto :goto_3

    :cond_4
    const-string v3, "Content-Length"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lr4/kn;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-eqz v5, :cond_5

    sub-long v6, v3, v8

    :cond_5
    iput-wide v6, v12, Lr4/bg;->p:J

    goto :goto_3

    :cond_6
    iget-wide v3, v13, Lr4/vc;->g:J

    iput-wide v3, v12, Lr4/bg;->p:J

    :goto_3
    const/16 v3, 0x7d0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v12, Lr4/bg;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v12, Lr4/bg;->m:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v12, Lr4/bg;->m:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    const/4 v5, 0x1

    iput-boolean v5, v12, Lr4/bg;->n:Z

    invoke-virtual/range {p0 .. p1}, Lr4/j5;->o(Lr4/vc;)V

    cmp-long v0, v8, v14

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    :goto_4
    cmp-long v1, v8, v14

    if-lez v1, :cond_b

    const-wide/16 v6, 0x1000

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    iget-object v4, v12, Lr4/bg;->m:Ljava/io/InputStream;

    sget v6, Lr4/lc;->a:I

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-virtual {v12, v1}, Lr4/j5;->r(I)V

    goto :goto_4

    :cond_9
    new-instance v0, Lr4/fj;

    invoke-direct {v0, v13, v2, v5}, Lr4/fj;-><init>(Lr4/vc;II)V

    throw v0

    :cond_a
    new-instance v0, Lr4/fj;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-direct {v0, v1, v13, v3, v5}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    :goto_5
    iget-wide v0, v12, Lr4/bg;->p:J

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lr4/bg;->v()V

    instance-of v1, v0, Lr4/fj;

    if-eqz v1, :cond_c

    check-cast v0, Lr4/fj;

    throw v0

    :cond_c
    new-instance v1, Lr4/fj;

    invoke-direct {v1, v0, v13, v3, v5}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw v1

    :catch_1
    move-exception v0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lr4/bg;->v()V

    new-instance v1, Lr4/fj;

    invoke-direct {v1, v0, v13, v3, v5}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw v1

    :cond_d
    :goto_6
    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    iget v1, v12, Lr4/bg;->o:I

    const/16 v9, 0x1a0

    if-ne v1, v9, :cond_f

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lr4/kn;->a(Ljava/lang/String;)J

    move-result-wide v10

    move-object v4, v3

    iget-wide v2, v13, Lr4/vc;->f:J

    cmp-long v16, v2, v10

    if-nez v16, :cond_10

    iput-boolean v5, v12, Lr4/bg;->n:Z

    invoke-virtual/range {p0 .. p1}, Lr4/j5;->o(Lr4/vc;)V

    iget-wide v0, v13, Lr4/vc;->g:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_e

    return-wide v0

    :cond_e
    return-wide v14

    :cond_f
    move-object v4, v3

    :cond_10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_3
    invoke-static {v0}, Lr4/lc;->A(Ljava/io/InputStream;)[B

    move-result-object v0

    goto :goto_7

    :cond_11
    sget-object v0, Lr4/lc;->f:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_7
    move-object v7, v0

    goto :goto_8

    :catch_2
    sget-object v0, Lr4/lc;->f:[B

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lr4/bg;->v()V

    iget v0, v12, Lr4/bg;->o:I

    if-ne v0, v9, :cond_12

    new-instance v0, Lr4/p9;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lr4/p9;-><init>(I)V

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    new-instance v9, Lr4/gk;

    iget v2, v12, Lr4/bg;->o:I

    move-object v1, v9

    move-object v3, v4

    move-object v4, v0

    move-object v5, v8

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lr4/gk;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lr4/vc;[B)V

    throw v9

    :cond_13
    :goto_a
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v2, v23

    invoke-virtual {v12, v2, v3, v13}, Lr4/bg;->u(Ljava/net/URL;Ljava/lang/String;Lr4/vc;)Ljava/net/URL;

    move-result-object v11

    move/from16 v5, v18

    move-wide/from16 v7, v19

    move-wide/from16 v9, v21

    goto/16 :goto_0

    :cond_14
    move/from16 v18, v6

    const/4 v5, 0x1

    new-instance v0, Lr4/fj;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many redirects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v13, v2, v5}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    const/4 v5, 0x1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lr4/bg;->v()V

    invoke-static {v0, v13, v5}, Lr4/fj;->a(Ljava/io/IOException;Lr4/vc;I)Lr4/fj;

    move-result-object v0

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method

.method public final h()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lr4/bg;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-wide v3, p0, Lr4/bg;->p:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    move-wide v3, v5

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lr4/bg;->q:J

    sub-long/2addr v3, v7

    :goto_0
    iget-object v7, p0, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_5

    sget v8, Lr4/lc;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v9, 0x13

    if-lt v8, v9, :cond_5

    const/16 v9, 0x14

    if-le v8, v9, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    cmp-long v8, v3, v5

    if-nez v8, :cond_2

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v8, v3, v5

    if-gtz v8, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_4
    new-instance v3, Lr4/fj;

    iget-object v4, p0, Lr4/bg;->k:Lr4/vc;

    sget v5, Lr4/lc;->a:I

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_3
    iput-object v0, p0, Lr4/bg;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Lr4/bg;->v()V

    iget-boolean v0, p0, Lr4/bg;->n:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lr4/bg;->n:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    iput-object v0, p0, Lr4/bg;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Lr4/bg;->v()V

    iget-boolean v0, p0, Lr4/bg;->n:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lr4/bg;->n:Z

    invoke-virtual {p0}, Lr4/j5;->s()V

    :cond_8
    throw v2
.end method

.method public final j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final t(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I[BJJZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget p2, p0, Lr4/bg;->f:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p2, p0, Lr4/bg;->g:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lr4/bg;->i:Lr4/gl;

    invoke-virtual {p3}, Lr4/gl;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p3, p0, Lr4/bg;->j:Lr4/gl;

    invoke-virtual {p3}, Lr4/gl;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p10, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    const-wide/16 v0, -0x1

    cmp-long p10, p4, p2

    if-nez p10, :cond_1

    cmp-long p2, p6, v0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p3, p6, v0

    if-eqz p3, :cond_2

    add-long/2addr p4, p6

    add-long/2addr p4, v0

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_3

    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lr4/bg;->h:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p3, "User-Agent"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x1

    if-eq p2, p8, :cond_5

    const-string p3, "identity"

    goto :goto_2

    :cond_5
    const-string p3, "gzip"

    :goto_2
    const-string p4, "Accept-Encoding"

    invoke-virtual {p1, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {p2}, Lr4/vc;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public final u(Ljava/net/URL;Ljava/lang/String;Lr4/vc;)Ljava/net/URL;
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance p1, Lr4/fj;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Unsupported protocol redirect: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2, p3, v1, v0}, Lr4/fj;-><init>(Ljava/lang/String;Lr4/vc;II)V

    throw p1

    :cond_1
    iget-boolean v3, p0, Lr4/bg;->e:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lr4/fj;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x29

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Disallowed cross-protocol redirect ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lr4/fj;-><init>(Ljava/lang/String;Lr4/vc;II)V

    throw v2

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    new-instance p2, Lr4/fj;

    invoke-direct {p2, p1, p3, v1, v0}, Lr4/fj;-><init>(Ljava/io/IOException;Lr4/vc;II)V

    throw p2

    :cond_4
    new-instance p1, Lr4/fj;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lr4/fj;-><init>(Ljava/lang/String;Lr4/vc;II)V

    throw p1
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr4/bg;->l:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method
