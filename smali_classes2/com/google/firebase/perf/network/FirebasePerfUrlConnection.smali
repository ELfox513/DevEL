.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lj7/j;Li7/k;Lj7/h;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p2}, Lj7/h;->n()V

    invoke-virtual {p2}, Lj7/h;->l()J

    move-result-wide v0

    invoke-static {p1}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lj7/j;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lf7/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lf7/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3}, Lf7/d;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lf7/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lf7/c;-><init>(Ljava/net/HttpURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3}, Lf7/c;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-virtual {p2}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ld7/b;->J(J)Ld7/b;

    invoke-virtual {p0}, Lj7/j;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->d(Ld7/b;)V

    throw v2
.end method

.method public static b(Lj7/j;[Ljava/lang/Class;Li7/k;Lj7/h;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p3}, Lj7/h;->n()V

    invoke-virtual {p3}, Lj7/h;->l()J

    move-result-wide v0

    invoke-static {p2}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lj7/j;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lf7/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lf7/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3, p1}, Lf7/d;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lf7/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lf7/c;-><init>(Ljava/net/HttpURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3, p1}, Lf7/c;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p2, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    invoke-virtual {p0}, Lj7/j;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    invoke-static {p2}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method

.method public static c(Lj7/j;Li7/k;Lj7/h;)Ljava/io/InputStream;
    .locals 4

    invoke-virtual {p2}, Lj7/h;->n()V

    invoke-virtual {p2}, Lj7/h;->l()J

    move-result-wide v0

    invoke-static {p1}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lj7/j;->a()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-instance v3, Lf7/d;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lf7/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3}, Lf7/d;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    new-instance v3, Lf7/c;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lf7/c;-><init>(Ljava/net/HttpURLConnection;Lj7/h;Ld7/b;)V

    invoke-virtual {v3}, Lf7/c;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    invoke-virtual {p1, v0, v1}, Ld7/b;->D(J)Ld7/b;

    invoke-virtual {p2}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ld7/b;->J(J)Ld7/b;

    invoke-virtual {p0}, Lj7/j;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld7/b;->L(Ljava/lang/String;)Ld7/b;

    invoke-static {p1}, Lf7/k;->d(Ld7/b;)V

    throw v2
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/j;

    invoke-direct {v0, p0}, Lj7/j;-><init>(Ljava/net/URL;)V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object p0

    new-instance v1, Lj7/h;

    invoke-direct {v1}, Lj7/h;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->a(Lj7/j;Li7/k;Lj7/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/j;

    invoke-direct {v0, p0}, Lj7/j;-><init>(Ljava/net/URL;)V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object p0

    new-instance v1, Lj7/h;

    invoke-direct {v1}, Lj7/h;-><init>()V

    invoke-static {v0, p1, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->b(Lj7/j;[Ljava/lang/Class;Li7/k;Lj7/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lf7/d;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lj7/h;

    invoke-direct {v1}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v2

    invoke-static {v2}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lf7/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lj7/h;Ld7/b;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    new-instance v0, Lf7/c;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lj7/h;

    invoke-direct {v1}, Lj7/h;-><init>()V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v2

    invoke-static {v2}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lf7/c;-><init>(Ljava/net/HttpURLConnection;Lj7/h;Ld7/b;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lj7/j;

    invoke-direct {v0, p0}, Lj7/j;-><init>(Ljava/net/URL;)V

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object p0

    new-instance v1, Lj7/h;

    invoke-direct {v1}, Lj7/h;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->c(Lj7/j;Li7/k;Lj7/h;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
