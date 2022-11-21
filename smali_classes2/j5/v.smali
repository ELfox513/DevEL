.class public final Lj5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/i;

.field public final synthetic b:Lj5/w;


# direct methods
.method public constructor <init>(Lj5/w;Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/v;->b:Lj5/w;

    iput-object p2, p0, Lj5/v;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj5/v;->b:Lj5/w;

    invoke-static {v0}, Lj5/w;->c(Lj5/w;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj5/v;->b:Lj5/w;

    invoke-static {v1}, Lj5/w;->d(Lj5/w;)Lj5/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj5/v;->b:Lj5/w;

    invoke-static {v1}, Lj5/w;->d(Lj5/w;)Lj5/d;

    move-result-object v1

    iget-object v2, p0, Lj5/v;->a:Lj5/i;

    invoke-interface {v1, v2}, Lj5/d;->a(Lj5/i;)V

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
