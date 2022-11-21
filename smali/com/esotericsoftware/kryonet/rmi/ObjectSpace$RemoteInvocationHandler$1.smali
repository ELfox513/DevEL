.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;-><init>(Lcom/esotericsoftware/kryonet/Connection;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iput p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->a:I

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a()V

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 1

    instance-of p1, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    iget p1, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->objectID:I

    iget v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->a:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object p1, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->x:Ljava/util/concurrent/ConcurrentHashMap;

    iget-byte v0, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->responseID:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object p1, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object p1, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->w:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object p1, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;->b:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    iget-object p2, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
