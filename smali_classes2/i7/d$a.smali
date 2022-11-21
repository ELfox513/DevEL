.class public Li7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final k:Lc7/a;

.field public static final l:J


# instance fields
.field public final a:Lj7/a;

.field public final b:Z

.field public c:Lj7/h;

.field public d:Lj7/f;

.field public e:J

.field public f:J

.field public g:Lj7/f;

.field public h:Lj7/f;

.field public i:J

.field public j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Li7/d$a;->k:Lc7/a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Li7/d$a;->l:J

    return-void
.end method

.method public constructor <init>(Lj7/f;JLj7/a;Lz6/a;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Li7/d$a;->a:Lj7/a;

    iput-wide p2, p0, Li7/d$a;->e:J

    iput-object p1, p0, Li7/d$a;->d:Lj7/f;

    iput-wide p2, p0, Li7/d$a;->f:J

    invoke-virtual {p4}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iput-object p1, p0, Li7/d$a;->c:Lj7/h;

    invoke-virtual {p0, p5, p6, p7}, Li7/d$a;->g(Lz6/a;Ljava/lang/String;Z)V

    iput-boolean p7, p0, Li7/d$a;->b:Z

    return-void
.end method

.method public static c(Lz6/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz6/a;->C()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lz6/a;->o()J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Lz6/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz6/a;->r()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lz6/a;->r()J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Lz6/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz6/a;->D()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lz6/a;->p()J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Lz6/a;Ljava/lang/String;)J
    .locals 1

    const-string v0, "Trace"

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lz6/a;->r()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Lz6/a;->r()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Li7/d$a;->g:Lj7/f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li7/d$a;->h:Lj7/f;

    :goto_0
    iput-object v0, p0, Li7/d$a;->d:Lj7/f;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Li7/d$a;->i:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Li7/d$a;->j:J

    :goto_1
    iput-wide v0, p0, Li7/d$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lk7/i;)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Li7/d$a;->a:Lj7/a;

    invoke-virtual {p1}, Lj7/a;->a()Lj7/h;

    move-result-object p1

    iget-object v0, p0, Li7/d$a;->c:Lj7/h;

    invoke-virtual {v0, p1}, Lj7/h;->j(Lj7/h;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object p1, p0, Li7/d$a;->d:Lj7/f;

    invoke-virtual {p1}, Lj7/f;->a()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    :try_start_1
    sget-wide v2, Li7/d$a;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x0

    :try_start_2
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v6, p0, Li7/d$a;->f:J

    add-long/2addr v6, v0

    iget-wide v8, p0, Li7/d$a;->e:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Li7/d$a;->f:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    new-instance p1, Lj7/h;

    iget-object v6, p0, Li7/d$a;->c:Lj7/h;

    invoke-virtual {v6}, Lj7/h;->l()J

    move-result-wide v6

    mul-long v0, v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Li7/d$a;->d:Lj7/f;

    invoke-virtual {v2}, Lj7/f;->a()D

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v6, v0

    :try_start_3
    invoke-direct {p1, v6, v7}, Lj7/h;-><init>(J)V

    iput-object p1, p0, Li7/d$a;->c:Lj7/h;

    :cond_0
    iget-wide v0, p0, Li7/d$a;->f:J

    cmp-long p1, v0, v4

    if-lez p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Li7/d$a;->f:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    :try_start_4
    iget-boolean p1, p0, Li7/d$a;->b:Z

    if-eqz p1, :cond_2

    sget-object p1, Li7/d$a;->k:Lc7/a;

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-virtual {p1, v0}, Lc7/a;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Lz6/a;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p2}, Li7/d$a;->f(Lz6/a;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static/range {p1 .. p2}, Li7/d$a;->e(Lz6/a;Ljava/lang/String;)J

    move-result-wide v7

    new-instance v9, Lj7/f;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v9

    move-wide v2, v7

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lj7/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v9, v0, Li7/d$a;->g:Lj7/f;

    iput-wide v7, v0, Li7/d$a;->i:J

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz p3, :cond_0

    sget-object v5, Li7/d$a;->k:Lc7/a;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object v9, v6, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "Foreground %s logging rate:%f, burst capacity:%d"

    invoke-virtual {v5, v7, v6}, Lc7/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static/range {p1 .. p2}, Li7/d$a;->d(Lz6/a;Ljava/lang/String;)J

    move-result-wide v13

    invoke-static/range {p1 .. p2}, Li7/d$a;->c(Lz6/a;Ljava/lang/String;)J

    move-result-wide v5

    new-instance v7, Lj7/f;

    move-object v10, v7

    move-wide v11, v5

    invoke-direct/range {v10 .. v15}, Lj7/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    iput-object v7, v0, Li7/d$a;->h:Lj7/f;

    iput-wide v5, v0, Li7/d$a;->j:J

    if-eqz p3, :cond_1

    sget-object v8, Li7/d$a;->k:Lc7/a;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v3

    aput-object v7, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "Background %s logging rate:%f, capacity:%d"

    invoke-virtual {v8, v1, v4}, Lc7/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
