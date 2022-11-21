.class public final Lr4/ez1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/ps2<",
        "Lr4/cz1;",
        "Lr4/dz1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lr4/ah0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lr4/ah0;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ez1;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/ez1;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/ez1;->c:Lr4/ah0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "Received error HTTP response code: "

    move-object/from16 v2, p1

    check-cast v2, Lr4/cz1;

    iget-object v3, v2, Lr4/cz1;->a:Ljava/lang/String;

    iget v11, v2, Lr4/cz1;->b:I

    iget-object v12, v2, Lr4/cz1;->c:Ljava/util/Map;

    iget-object v2, v2, Lr4/cz1;->d:Ljava/lang/String;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->b()J

    move-result-wide v13

    const/4 v15, 0x1

    :try_start_0
    new-instance v10, Lr4/dz1;

    invoke-direct {v10}, Lr4/dz1;-><init>()V

    const-string v4, "SDK version: "

    iget-object v5, v1, Lr4/ez1;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v4}, Lr4/cm0;->e(Ljava/lang/String;)V

    const-string v4, "AdRequestServiceImpl: Sending request: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_1
    invoke-static {v4}, Lr4/cm0;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v4

    iget-object v5, v1, Lr4/ez1;->a:Landroid/content/Context;

    iget-object v6, v1, Lr4/ez1;->b:Ljava/lang/String;
    :try_end_1
    .catch Lr4/sv1; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v8

    move/from16 v9, v17

    move-object/from16 v18, v10

    move v10, v11

    :try_start_2
    invoke-virtual/range {v4 .. v10}, Lb3/k2;->M(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Lr4/sv1; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v7, p1

    :try_start_3
    invoke-virtual {v7, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 p1, v7

    goto :goto_3

    :cond_2
    move-object/from16 v7, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_3

    sget-object v4, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v7, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    array-length v6, v4

    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_3
    .catch Lr4/sv1; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v6}, Lc4/m;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v6

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    invoke-static {v5}, Lc4/m;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    :goto_5
    new-instance v4, Lr4/bm0;

    invoke-direct {v4, v5}, Lr4/bm0;-><init>(Ljava/lang/String;)V

    sget-object v6, Lr4/n03;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lr4/bm0;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v7}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_6

    :cond_5
    invoke-virtual {v4, v7, v6}, Lr4/bm0;->c(Ljava/net/HttpURLConnection;I)V
    :try_end_6
    .catch Lr4/sv1; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v5, v18

    :try_start_7
    iput v6, v5, Lr4/dz1;->a:I

    iput-object v3, v5, Lr4/dz1;->b:Ljava/util/Map;

    const-string v8, ""

    iput-object v8, v5, Lr4/dz1;->c:Ljava/lang/String;
    :try_end_7
    .catch Lr4/sv1; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/16 v8, 0xc8

    const/16 v9, 0x12c

    if-lt v6, v8, :cond_9

    if-ge v6, v9, :cond_9

    :try_start_8
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x2000

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x800

    new-array v3, v3, [C

    :goto_7
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {v2}, Lc4/m;->a(Ljava/io/Closeable;)V

    invoke-virtual {v4, v0}, Lr4/bm0;->e(Ljava/lang/String;)V

    iput-object v0, v5, Lr4/dz1;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lr4/rz;->N3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    new-instance v0, Lr4/sv1;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lr4/sv1;-><init>(I)V

    throw v0

    :cond_8
    :goto_8
    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v13

    iput-wide v2, v5, Lr4/dz1;->d:J
    :try_end_a
    .catch Lr4/sv1; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_9
    :try_start_b
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    :goto_a
    :try_start_c
    invoke-static {v2}, Lc4/m;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_9
    const/4 v8, 0x0

    if-lt v6, v9, :cond_c

    const/16 v4, 0x190

    if-ge v6, v4, :cond_c

    const-string v4, "Location"

    invoke-virtual {v7, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v16, 0x1

    sget-object v9, Lr4/rz;->t3:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v10

    invoke-virtual {v10, v9}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_c
    .catch Lr4/sv1; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-gt v4, v9, :cond_a

    :try_start_d
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move/from16 v16, v4

    move-object v10, v5

    move-object v4, v6

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    :try_start_e
    const-string v0, "Too many redirects."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v0, Lr4/sv1;

    const-string v2, "Too many redirects"

    invoke-direct {v0, v15, v2}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v0, Lr4/sv1;

    const-string v2, "No location header to follow redirect"

    invoke-direct {v0, v15, v2}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v2, Lr4/sv1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v15, v0}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_e
    .catch Lr4/sv1; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_e

    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    :goto_b
    move-object/from16 v5, v18

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v7, v8

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v7, v8

    move-object v5, v10

    :goto_c
    :try_start_f
    sget-object v2, Lr4/rz;->W5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->b()J

    move-result-wide v2

    sub-long/2addr v2, v13

    iput-wide v2, v5, Lr4/dz1;->d:J

    goto/16 :goto_9

    :goto_d
    return-object v5

    :cond_d
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    :goto_e
    :try_start_10
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while connecting to ad server: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_f
    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    new-instance v3, Lr4/sv1;

    invoke-direct {v3, v15, v2, v0}, Lr4/sv1;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    throw v3

    :goto_11
    goto :goto_10
.end method
