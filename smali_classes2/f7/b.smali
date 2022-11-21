.class public final Lf7/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Lj7/h;

.field public d:Ld7/b;

.field public k:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ld7/b;Lj7/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf7/b;->k:J

    iput-object p1, p0, Lf7/b;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lf7/b;->d:Ld7/b;

    iput-object p3, p0, Lf7/b;->b:Lj7/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lf7/b;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lf7/b;->d:Ld7/b;

    invoke-virtual {v2, v0, v1}, Ld7/b;->C(J)Ld7/b;

    :cond_0
    iget-object v0, p0, Lf7/b;->d:Ld7/b;

    iget-object v1, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld7/b;->I(J)Ld7/b;

    :try_start_0
    iget-object v0, p0, Lf7/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/b;->d:Ld7/b;

    iget-object v2, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/b;->d:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public flush()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf7/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lf7/b;->d:Ld7/b;

    iget-object v2, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {v2}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ld7/b;->J(J)Ld7/b;

    iget-object v1, p0, Lf7/b;->d:Ld7/b;

    invoke-static {v1}, Lf7/k;->d(Ld7/b;)V

    throw v0
.end method

.method public write(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf7/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lf7/b;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf7/b;->k:J

    iget-object p1, p0, Lf7/b;->d:Ld7/b;

    invoke-virtual {p1, v0, v1}, Ld7/b;->C(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lf7/b;->d:Ld7/b;

    iget-object v1, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/b;->d:Ld7/b;

    invoke-static {v0}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method

.method public write([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lf7/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lf7/b;->k:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lf7/b;->k:J

    iget-object p1, p0, Lf7/b;->d:Ld7/b;

    invoke-virtual {p1, v0, v1}, Ld7/b;->C(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lf7/b;->d:Ld7/b;

    iget-object v1, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {v1}, Lj7/h;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld7/b;->J(J)Ld7/b;

    iget-object v0, p0, Lf7/b;->d:Ld7/b;

    invoke-static {v0}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method

.method public write([BII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lf7/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lf7/b;->k:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lf7/b;->k:J

    iget-object p3, p0, Lf7/b;->d:Ld7/b;

    invoke-virtual {p3, p1, p2}, Ld7/b;->C(J)Ld7/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lf7/b;->d:Ld7/b;

    iget-object p3, p0, Lf7/b;->b:Lj7/h;

    invoke-virtual {p3}, Lj7/h;->h()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ld7/b;->J(J)Ld7/b;

    iget-object p2, p0, Lf7/b;->d:Ld7/b;

    invoke-static {p2}, Lf7/k;->d(Ld7/b;)V

    throw p1
.end method
