.class public Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final d:Lq0/c$a;

.field public final k:Z

.field public final p:Ljava/lang/Object;

.field public q:Lr0/b$a;

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lq0/c$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lr0/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lr0/b;->d:Lq0/c$a;

    iput-boolean p4, p0, Lr0/b;->k:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Lr0/b$a;
    .locals 6

    iget-object v0, p0, Lr0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/b;->q:Lr0/b$a;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lr0/a;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lr0/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lr0/b;->k:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lr0/b;->a:Landroid/content/Context;

    invoke-static {v3}, Ls/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lr0/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lr0/b$a;

    iget-object v4, p0, Lr0/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lr0/b;->d:Lq0/c$a;

    invoke-direct {v3, v4, v2, v1, v5}, Lr0/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lr0/a;Lq0/c$a;)V

    iput-object v3, p0, Lr0/b;->q:Lr0/b$a;

    goto :goto_0

    :cond_0
    new-instance v2, Lr0/b$a;

    iget-object v3, p0, Lr0/b;->a:Landroid/content/Context;

    iget-object v4, p0, Lr0/b;->b:Ljava/lang/String;

    iget-object v5, p0, Lr0/b;->d:Lq0/c$a;

    invoke-direct {v2, v3, v4, v1, v5}, Lr0/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Lr0/a;Lq0/c$a;)V

    iput-object v2, p0, Lr0/b;->q:Lr0/b$a;

    :goto_0
    iget-object v1, p0, Lr0/b;->q:Lr0/b$a;

    iget-boolean v2, p0, Lr0/b;->r:Z

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lr0/b;->q:Lr0/b$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lr0/b;->c()Lr0/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lr0/b$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr0/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n0()Lq0/b;
    .locals 1

    invoke-virtual {p0}, Lr0/b;->c()Lr0/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lr0/b$a;->e()Lq0/b;

    move-result-object v0

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lr0/b;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/b;->q:Lr0/b$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lr0/b;->r:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
