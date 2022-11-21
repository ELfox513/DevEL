.class public Lb5/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lb5/k8;


# instance fields
.field public volatile a:Lb5/ea;

.field public volatile b:Lb5/w7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb5/k8;->a()Lb5/k8;

    move-result-object v0

    sput-object v0, Lb5/j9;->c:Lb5/k8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    check-cast v0, Lb5/t7;

    iget-object v0, v0, Lb5/t7;->p:[B

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    invoke-interface {v0}, Lb5/ea;->t0()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lb5/w7;
    .locals 1

    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    if-nez v0, :cond_2

    sget-object v0, Lb5/w7;->b:Lb5/w7;

    iput-object v0, p0, Lb5/j9;->b:Lb5/w7;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    invoke-interface {v0}, Lb5/ea;->j0()Lb5/w7;

    move-result-object v0

    iput-object v0, p0, Lb5/j9;->b:Lb5/w7;

    :goto_0
    iget-object v0, p0, Lb5/j9;->b:Lb5/w7;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Lb5/ea;)V
    .locals 1

    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iput-object p1, p0, Lb5/j9;->a:Lb5/ea;

    sget-object v0, Lb5/w7;->b:Lb5/w7;

    iput-object v0, p0, Lb5/j9;->b:Lb5/w7;
    :try_end_1
    .catch Lb5/h9; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lb5/j9;->a:Lb5/ea;

    sget-object p1, Lb5/w7;->b:Lb5/w7;

    iput-object p1, p0, Lb5/j9;->b:Lb5/w7;

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb5/j9;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb5/j9;

    iget-object v0, p0, Lb5/j9;->a:Lb5/ea;

    iget-object v1, p1, Lb5/j9;->a:Lb5/ea;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb5/j9;->b()Lb5/w7;

    move-result-object v0

    invoke-virtual {p1}, Lb5/j9;->b()Lb5/w7;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb5/w7;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lb5/fa;->a()Lb5/ea;

    move-result-object v1

    invoke-virtual {p1, v1}, Lb5/j9;->c(Lb5/ea;)V

    iget-object p1, p1, Lb5/j9;->a:Lb5/ea;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {v1}, Lb5/fa;->a()Lb5/ea;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb5/j9;->c(Lb5/ea;)V

    iget-object p1, p0, Lb5/j9;->a:Lb5/ea;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
