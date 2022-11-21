.class public final Lx3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lx3/r;

.field public static final c:Lx3/s;


# instance fields
.field public a:Lx3/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Lx3/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lx3/s;-><init>(IZZII)V

    sput-object v6, Lx3/r;->c:Lx3/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lx3/r;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-class v0, Lx3/r;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx3/r;->b:Lx3/r;

    if-nez v1, :cond_0

    new-instance v1, Lx3/r;

    invoke-direct {v1}, Lx3/r;-><init>()V

    sput-object v1, Lx3/r;->b:Lx3/r;

    :cond_0
    sget-object v1, Lx3/r;->b:Lx3/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Lx3/s;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lx3/r;->a:Lx3/s;

    return-object v0
.end method

.method public final declared-synchronized c(Lx3/s;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lx3/r;->c:Lx3/s;

    iput-object p1, p0, Lx3/r;->a:Lx3/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lx3/r;->a:Lx3/s;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lx3/s;->b1()I

    move-result v0

    invoke-virtual {p1}, Lx3/s;->b1()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iput-object p1, p0, Lx3/r;->a:Lx3/s;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
