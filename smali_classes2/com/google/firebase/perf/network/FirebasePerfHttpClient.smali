.class public Lcom/google/firebase/perf/network/FirebasePerfHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lj7/h;Li7/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lj7/h;",
            "Li7/k;",
            ")TT;"
        }
    .end annotation

    invoke-static {p5}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p2}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p4}, Lj7/h;->n()V

    invoke-virtual {p4}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->D(J)Ld7/b;

    new-instance v0, Lf7/i;

    invoke-direct {v0, p3, p4, p5}, Lf7/i;-><init>(Lorg/apache/http/client/ResponseHandler;Lj7/h;Ld7/b;)V

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p5}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lj7/h;",
            "Li7/k;",
            ")TT;"
        }
    .end annotation

    invoke-static {p6}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p2}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p5}, Lj7/h;->n()V

    invoke-virtual {p5}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Ld7/b;->D(J)Ld7/b;

    new-instance v0, Lf7/i;

    invoke-direct {v0, p3, p5, p6}, Lf7/i;-><init>(Lorg/apache/http/client/ResponseHandler;Lj7/h;Ld7/b;)V

    invoke-interface {p0, p1, p2, v0, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p5}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p6, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p6}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lj7/h;Li7/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lj7/h;",
            "Li7/k;",
            ")TT;"
        }
    .end annotation

    invoke-static {p4}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p4

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p3}, Lj7/h;->n()V

    invoke-virtual {p3}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->D(J)Ld7/b;

    new-instance v0, Lf7/i;

    invoke-direct {v0, p2, p3, p4}, Lf7/i;-><init>(Lorg/apache/http/client/ResponseHandler;Lj7/h;Ld7/b;)V

    invoke-interface {p0, p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p4}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Lj7/h;",
            "Li7/k;",
            ")TT;"
        }
    .end annotation

    invoke-static {p5}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p5

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p4}, Lj7/h;->n()V

    invoke-virtual {p4}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->D(J)Ld7/b;

    new-instance v0, Lf7/i;

    invoke-direct {v0, p2, p4, p5}, Lf7/i;-><init>(Lorg/apache/http/client/ResponseHandler;Lj7/h;Ld7/b;)V

    invoke-interface {p0, p1, v0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p5}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p4}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p2}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p3}, Lj7/h;->n()V

    invoke-virtual {p3}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ld7/b;->A(I)Ld7/b;

    invoke-static {p0}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->F(J)Ld7/b;

    :cond_1
    invoke-static {p0}, Lf7/k;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p4, p1}, Ld7/b;->E(Ljava/lang/String;)Ld7/b;

    :cond_2
    invoke-virtual {p4}, Ld7/b;->h()Lk7/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p4}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    new-instance v4, Lj7/h;

    invoke-direct {v4}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lj7/h;Li7/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    new-instance v5, Lj7/h;

    invoke-direct {v5}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->b(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lj7/h;

    invoke-direct {v0}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->c(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lj7/h;Li7/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler<",
            "TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    new-instance v4, Lj7/h;

    invoke-direct {v4}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->d(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/h;

    invoke-direct {v0}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->e(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v4, Lj7/h;

    invoke-direct {v4}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/h;

    invoke-direct {v0}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/h;

    invoke-direct {v0}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfHttpClient;->h(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p5}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p2}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p4}, Lj7/h;->n()V

    invoke-virtual {p4}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p4}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p5, p1}, Ld7/b;->A(I)Ld7/b;

    invoke-static {p0}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ld7/b;->F(J)Ld7/b;

    :cond_1
    invoke-static {p0}, Lf7/k;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p5, p1}, Ld7/b;->E(Ljava/lang/String;)Ld7/b;

    :cond_2
    invoke-virtual {p5}, Ld7/b;->h()Lk7/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p4}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p5}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static g(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p3}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p3

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p2}, Lj7/h;->n()V

    invoke-virtual {p2}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-interface {p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p2}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ld7/b;->J(J)Ld7/b;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p3, p1}, Ld7/b;->A(I)Ld7/b;

    invoke-static {p0}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ld7/b;->F(J)Ld7/b;

    :cond_1
    invoke-static {p0}, Lf7/k;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Ld7/b;->E(Ljava/lang/String;)Ld7/b;

    :cond_2
    invoke-virtual {p3}, Ld7/b;->h()Lk7/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p2}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p3}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method

.method public static h(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;Lj7/h;Li7/k;)Lorg/apache/http/HttpResponse;
    .locals 2

    invoke-static {p4}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p4

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld7/b;->z(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    invoke-virtual {p3}, Lj7/h;->n()V

    invoke-virtual {p3}, Lj7/h;->l()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-interface {p0, p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-virtual {p4, p1}, Ld7/b;->A(I)Ld7/b;

    invoke-static {p0}, Lf7/k;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->F(J)Ld7/b;

    :cond_1
    invoke-static {p0}, Lf7/k;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p4, p1}, Ld7/b;->E(Ljava/lang/String;)Ld7/b;

    :cond_2
    invoke-virtual {p4}, Ld7/b;->h()Lk7/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Ld7/b;->J(J)Ld7/b;

    invoke-static {p4}, Lf7/k;->d(Ld7/b;)V

    throw p0
.end method
