.class public final Lj5/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lj5/a0;


# direct methods
.method public constructor <init>(Lj5/a0;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/z;->b:Lj5/a0;

    iput-object p2, p0, Lj5/z;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj5/z;->b:Lj5/a0;

    invoke-static {v0}, Lj5/a0;->c(Lj5/a0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/z;->b:Lj5/a0;

    invoke-static {v1}, Lj5/a0;->d(Lj5/a0;)Lj5/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj5/z;->b:Lj5/a0;

    invoke-static {v1}, Lj5/a0;->d(Lj5/a0;)Lj5/f;

    move-result-object v1

    iget-object v2, p0, Lj5/z;->a:Lj5/i;

    invoke-virtual {v2}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lj5/f;->c(Ljava/lang/Object;)V

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
