.class Lcom/badlogic/gdx/net/NetJavaImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/net/NetJavaImpl;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/badlogic/gdx/Net$HttpRequest;

.field public final synthetic d:Ljava/net/HttpURLConnection;

.field public final synthetic k:Lcom/badlogic/gdx/Net$HttpResponseListener;

.field public final synthetic p:Lcom/badlogic/gdx/net/NetJavaImpl;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/net/NetJavaImpl;ZLcom/badlogic/gdx/Net$HttpRequest;Ljava/net/HttpURLConnection;Lcom/badlogic/gdx/Net$HttpResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->p:Lcom/badlogic/gdx/net/NetJavaImpl;

    iput-boolean p2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->a:Z

    iput-object p3, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    iput-object p4, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    iput-object p5, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->k:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0}, Lcom/badlogic/gdx/Net$HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0}, Lcom/badlogic/gdx/Net$HttpRequest;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    new-instance v0, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/net/NetJavaImpl$HttpClientResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->p:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/net/NetJavaImpl;->b(Lcom/badlogic/gdx/Net$HttpRequest;)Lcom/badlogic/gdx/Net$HttpResponseListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->p:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/net/NetJavaImpl;->d(Lcom/badlogic/gdx/Net$HttpRequest;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :try_start_7
    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->k:Lcom/badlogic/gdx/Net$HttpResponseListener;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Net$HttpResponseListener;->failed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->p:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/net/NetJavaImpl;->d(Lcom/badlogic/gdx/Net$HttpRequest;)V

    :goto_1
    return-void

    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->p:Lcom/badlogic/gdx/net/NetJavaImpl;

    iget-object v2, p0, Lcom/badlogic/gdx/net/NetJavaImpl$2;->b:Lcom/badlogic/gdx/Net$HttpRequest;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/net/NetJavaImpl;->d(Lcom/badlogic/gdx/Net$HttpRequest;)V

    throw v0
.end method
