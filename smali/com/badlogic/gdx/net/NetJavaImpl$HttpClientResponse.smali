.class Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpClientResponse"
.end annotation


# instance fields
.field public final a:Ljava/net/HttpURLConnection;

.field public b:Lcom/badlogic/gdx/net/HttpStatus;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/net/HttpStatus;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->b:Lcom/badlogic/gdx/net/HttpStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/badlogic/gdx/net/HttpStatus;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/net/HttpStatus;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->b:Lcom/badlogic/gdx/net/HttpStatus;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResult()[B
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getResultAsStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResultAsString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    const-string v3, "UTF8"

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public getStatus()Lcom/badlogic/gdx/net/HttpStatus;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;->b:Lcom/badlogic/gdx/net/HttpStatus;

    return-object v0
.end method
