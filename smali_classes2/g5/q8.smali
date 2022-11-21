.class public final Lg5/q8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/g3;

.field public final synthetic b:Lg5/v8;


# direct methods
.method public constructor <init>(Lg5/v8;Lg5/g3;)V
    .locals 0

    iput-object p1, p0, Lg5/q8;->b:Lg5/v8;

    iput-object p2, p0, Lg5/q8;->a:Lg5/g3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lg5/q8;->b:Lg5/v8;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg5/q8;->b:Lg5/v8;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lg5/v8;->a(Lg5/v8;Z)V

    iget-object v1, p0, Lg5/q8;->b:Lg5/v8;

    iget-object v1, v1, Lg5/v8;->d:Lg5/w8;

    invoke-virtual {v1}, Lg5/w8;->u()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg5/q8;->b:Lg5/v8;

    iget-object v1, v1, Lg5/v8;->d:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->q()Lg5/o3;

    move-result-object v1

    const-string v2, "Connected to service"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lg5/q8;->b:Lg5/v8;

    iget-object v1, v1, Lg5/v8;->d:Lg5/w8;

    iget-object v2, p0, Lg5/q8;->a:Lg5/g3;

    invoke-virtual {v1, v2}, Lg5/w8;->s(Lg5/g3;)V

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
