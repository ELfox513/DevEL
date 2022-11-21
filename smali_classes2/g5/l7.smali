.class public final Lg5/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Ljava/lang/String;

.field public final synthetic d:Lg5/m7;

.field public final k:Lg5/z4;


# direct methods
.method public constructor <init>(Lg5/m7;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lg5/z4;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lg5/z4;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lg5/l7;->d:Lg5/m7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lg5/l7;->a:Ljava/net/URL;

    iput-object p6, p0, Lg5/l7;->k:Lg5/z4;

    iput-object p2, p0, Lg5/l7;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 7

    iget-object v0, p0, Lg5/l7;->k:Lg5/z4;

    iget-object v2, p0, Lg5/l7;->b:Ljava/lang/String;

    iget-object v1, v0, Lg5/z4;->a:Lg5/b5;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lg5/b5;->c(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

.method public final b(ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lg5/l7;->d:Lg5/m7;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->P()Lg5/y4;

    move-result-object v0

    new-instance v7, Lg5/k7;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lg5/k7;-><init>(Lg5/l7;ILjava/lang/Exception;[BLjava/util/Map;)V

    invoke-virtual {v0, v7}, Lg5/y4;->u(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lg5/l7;->d:Lg5/m7;

    invoke-virtual {v0}, Lg5/v5;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg5/l7;->d:Lg5/m7;

    iget-object v3, p0, Lg5/l7;->a:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lg5/m7;->j(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {v2}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v7, 0x400

    :try_start_4
    new-array v7, v7, [B

    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v5, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p0, v3, v1, v0, v4}, Lg5/l7;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catchall_4
    move-exception v3

    move-object v4, v1

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v0, v3

    const/4 v3, 0x0

    goto :goto_3

    :catchall_5
    move-exception v2

    move-object v4, v1

    move-object v0, v2

    const/4 v3, 0x0

    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    invoke-virtual {p0, v3, v1, v1, v4}, Lg5/l7;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    throw v0

    :catch_3
    move-exception v2

    move-object v4, v1

    move-object v0, v2

    const/4 v3, 0x0

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    invoke-virtual {p0, v3, v0, v1, v4}, Lg5/l7;->b(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
