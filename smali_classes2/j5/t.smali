.class public final Lj5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/u;


# direct methods
.method public constructor <init>(Lj5/u;)V
    .locals 0

    iput-object p1, p0, Lj5/t;->a:Lj5/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj5/t;->a:Lj5/u;

    invoke-static {v0}, Lj5/u;->c(Lj5/u;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/t;->a:Lj5/u;

    invoke-static {v1}, Lj5/u;->d(Lj5/u;)Lj5/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj5/t;->a:Lj5/u;

    invoke-static {v1}, Lj5/u;->d(Lj5/u;)Lj5/c;

    move-result-object v1

    invoke-interface {v1}, Lj5/c;->d()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
