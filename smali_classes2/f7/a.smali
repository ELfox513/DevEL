.class public final Lf7/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Ld7/b;

.field public final d:Lj7/h;

.field public k:J

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ld7/b;Lj7/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf7/a;->k:J

    iput-wide v0, p0, Lf7/a;->q:J

    iput-object p3, p0, Lf7/a;->d:Lj7/h;

    iput-object p1, p0, Lf7/a;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {p2}, Ld7/b;->n()J

    move-result-wide p1

    iput-wide p1, p0, Lf7/a;->p:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    iget-object v2, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public close()V
    .locals 7

    iget-object v0, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v0}, Lj7/h;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lf7/a;->q:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lf7/a;->q:J

    :cond_0
    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-wide v0, p0, Lf7/a;->k:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->F(J)Ld7/b;

    :cond_1
    iget-wide v0, p0, Lf7/a;->p:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->K(J)Ld7/b;

    :cond_2
    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    iget-wide v1, p0, Lf7/a;->q:J

    invoke-virtual {v0, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v0}, Ld7/b;->h()Lk7/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    iget-object v2, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v1, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    iget-wide v3, p0, Lf7/a;->p:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iput-wide v1, p0, Lf7/a;->p:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lf7/a;->q:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iput-wide v1, p0, Lf7/a;->q:J

    iget-object v3, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v3, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v1}, Ld7/b;->h()Lk7/h;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lf7/a;->k:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lf7/a;->k:J

    iget-object v3, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v3, v1, v2}, Ld7/b;->F(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    iget-object v2, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public read([B)I
    .locals 7

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    iget-object v0, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v0}, Lj7/h;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lf7/a;->p:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lf7/a;->p:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lf7/a;->q:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lf7/a;->q:J

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v0}, Ld7/b;->h()Lk7/h;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lf7/a;->k:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf7/a;->k:J

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->F(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    iget-object v1, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    invoke-static {v0}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method

.method public read([BII)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget-object p2, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {p2}, Lj7/h;->h()J

    move-result-wide p2

    iget-wide v0, p0, Lf7/a;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iput-wide p2, p0, Lf7/a;->p:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lf7/a;->q:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iput-wide p2, p0, Lf7/a;->q:J

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v0, p2, p3}, Ld7/b;->J(J)Ld7/b;

    iget-object p2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {p2}, Ld7/b;->h()Lk7/h;

    goto :goto_0

    :cond_1
    iget-wide p2, p0, Lf7/a;->k:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf7/a;->k:J

    iget-object v0, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v0, p2, p3}, Ld7/b;->F(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lf7/a;->b:Ld7/b;

    iget-object p3, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    iget-object p2, p0, Lf7/a;->b:Ld7/b;

    invoke-static {p2}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method

.method public reset()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    iget-object v2, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/a;->b:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public skip(J)J
    .locals 7

    :try_start_0
    iget-object v0, p0, Lf7/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget-object v0, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v0}, Lj7/h;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lf7/a;->p:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Lf7/a;->p:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lf7/a;->q:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iput-wide v0, p0, Lf7/a;->q:J

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lf7/a;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lf7/a;->k:J

    iget-object v2, p0, Lf7/a;->b:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->F(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lf7/a;->b:Ld7/b;

    iget-object v0, p0, Lf7/a;->d:Lj7/h;

    invoke-virtual {v0}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    iget-object p2, p0, Lf7/a;->b:Ld7/b;

    invoke-static {p2}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method
