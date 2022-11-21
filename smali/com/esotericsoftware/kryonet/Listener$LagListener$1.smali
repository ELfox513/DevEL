.class Lcom/esotericsoftware/kryonet/Listener$LagListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/Listener$LagListener;->queue(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/Listener$LagListener;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Listener$LagListener;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->a:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->a:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/Listener$LagListener;->e:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/Listener$LagListener$1;->a:Lcom/esotericsoftware/kryonet/Listener$LagListener;

    iget-object v1, v1, Lcom/esotericsoftware/kryonet/Listener$LagListener;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
