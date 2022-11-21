.class public final Lr4/u90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Lr4/ea0;

.field public d:Lr4/ea0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/u90;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr4/u90;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final c(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lr4/im0;)Lr4/ea0;
    .locals 3

    iget-object v0, p0, Lr4/u90;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/u90;->d:Lr4/ea0;

    if-nez v1, :cond_0

    new-instance v1, Lr4/ea0;

    invoke-static {p1}, Lr4/u90;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lr4/o10;->b:Lr4/u00;

    invoke-virtual {v2}, Lr4/u00;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lr4/ea0;-><init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;)V

    iput-object v1, p0, Lr4/u90;->d:Lr4/ea0;

    :cond_0
    iget-object p1, p0, Lr4/u90;->d:Lr4/ea0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Landroid/content/Context;Lr4/im0;)Lr4/ea0;
    .locals 4

    iget-object v0, p0, Lr4/u90;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/u90;->c:Lr4/ea0;

    if-nez v1, :cond_0

    new-instance v1, Lr4/ea0;

    invoke-static {p1}, Lr4/u90;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lr4/rz;->a:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lr4/ea0;-><init>(Landroid/content/Context;Lr4/im0;Ljava/lang/String;)V

    iput-object v1, p0, Lr4/u90;->c:Lr4/ea0;

    :cond_0
    iget-object p1, p0, Lr4/u90;->c:Lr4/ea0;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
