.class public abstract Lx3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1081

.field public static final b:Ljava/lang/Object;

.field public static c:Lx3/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx3/h;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lx3/h;->a:I

    return v0
.end method

.method public static b(Landroid/content/Context;)Lx3/h;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    sget-object v0, Lx3/h;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx3/h;->c:Lx3/h;

    if-nez v1, :cond_0

    new-instance v1, Lx3/p1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lx3/p1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lx3/h;->c:Lx3/h;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lx3/h;->c:Lx3/h;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance v0, Lx3/l1;

    invoke-direct {v0, p1, p2, p3, p6}, Lx3/l1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Lx3/h;->e(Lx3/l1;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public abstract d(Lx3/l1;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method public abstract e(Lx3/l1;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
