.class public Lz4/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lz4/b0;


# instance fields
.field public a:Lz4/i;

.field public volatile b:Lz4/r1;

.field public volatile c:Lz4/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lz4/b0;->b()Lz4/b0;

    move-result-object v0

    sput-object v0, Lz4/y0;->d:Lz4/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lz4/i;
    .locals 1

    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    if-nez v0, :cond_2

    sget-object v0, Lz4/i;->b:Lz4/i;

    iput-object v0, p0, Lz4/y0;->c:Lz4/i;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    invoke-interface {v0}, Lz4/r1;->c()Lz4/i;

    move-result-object v0

    iput-object v0, p0, Lz4/y0;->c:Lz4/i;

    :goto_0
    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/y0;->c:Lz4/i;

    invoke-virtual {v0}, Lz4/i;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    invoke-interface {v0}, Lz4/r1;->h()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lz4/r1;)Lz4/r1;
    .locals 1

    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lz4/y0;->b:Lz4/r1;

    sget-object v0, Lz4/i;->b:Lz4/i;

    iput-object v0, p0, Lz4/y0;->c:Lz4/i;
    :try_end_1
    .catch Lz4/r0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lz4/y0;->b:Lz4/r1;

    sget-object p1, Lz4/i;->b:Lz4/i;

    iput-object p1, p0, Lz4/y0;->c:Lz4/i;

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lz4/y0;->b:Lz4/r1;

    return-object p1
.end method

.method public final d(Lz4/r1;)Lz4/r1;
    .locals 2

    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    const/4 v1, 0x0

    iput-object v1, p0, Lz4/y0;->a:Lz4/i;

    iput-object v1, p0, Lz4/y0;->c:Lz4/i;

    iput-object p1, p0, Lz4/y0;->b:Lz4/r1;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lz4/y0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lz4/y0;

    iget-object v0, p0, Lz4/y0;->b:Lz4/r1;

    iget-object v1, p1, Lz4/y0;->b:Lz4/r1;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lz4/y0;->a()Lz4/i;

    move-result-object v0

    invoke-virtual {p1}, Lz4/y0;->a()Lz4/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz4/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lz4/t1;->f()Lz4/r1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz4/y0;->c(Lz4/r1;)Lz4/r1;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lz4/t1;->f()Lz4/r1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz4/y0;->c(Lz4/r1;)Lz4/r1;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
