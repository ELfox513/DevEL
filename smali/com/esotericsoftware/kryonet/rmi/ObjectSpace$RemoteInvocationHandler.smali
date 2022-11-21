.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteInvocationHandler"
.end annotation


# instance fields
.field public final a:Lcom/esotericsoftware/kryonet/Connection;

.field public final b:I

.field public d:I

.field public k:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/Byte;

.field public t:B

.field public u:Lcom/esotericsoftware/kryonet/Listener;

.field public final v:Ljava/util/concurrent/locks/ReentrantLock;

.field public final w:Ljava/util/concurrent/locks/Condition;

.field public final x:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Byte;",
            "Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/Connection;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->p:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->q:Z

    iput-byte v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->t:B

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->w:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->x:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    iput p2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->b:I

    new-instance v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler$1;-><init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->u:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->u:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    return-void
.end method

.method public final b(B)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryonet/Connection;->getEndPoint()Lcom/esotericsoftware/kryonet/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/esotericsoftware/kryonet/EndPoint;->getUpdateThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->s:Ljava/lang/Byte;

    iget-object p1, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->result:Ljava/lang/Object;

    return-object p1

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->w:Ljava/util/concurrent/locks/Condition;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/esotericsoftware/kryonet/KryoNetException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->v:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;

    const-string v0, "Response timed out."

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot wait for an RMI response on the connection\'s update thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/esotericsoftware/kryonet/rmi/RemoteObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_e

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "close"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a()V

    return-object v1

    :cond_0
    const-string p2, "setResponseTimeout"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->d:I

    return-object v1

    :cond_1
    const-string p2, "setNonBlocking"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->k:Z

    return-object v1

    :cond_2
    const-string p2, "setTransmitReturnValue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->p:Z

    return-object v1

    :cond_3
    const-string p2, "setTransmitExceptions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->q:Z

    return-object v1

    :cond_4
    const-string p2, "setRemoteToString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->r:Z

    return-object v1

    :cond_5
    const-string p2, "waitForLastResponse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->s:Ljava/lang/Byte;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->b(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is no last response to wait for."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p2, "getLastResponseID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->s:Ljava/lang/Byte;

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is no last response ID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string p2, "waitForResponse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->p:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->q:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->k:Z

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This RemoteObject is currently set to ignore all responses."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_0
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->b(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p2, "getConnection"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    return-object p1

    :cond_d
    new-instance p1, Lcom/esotericsoftware/kryonet/KryoNetException;

    const-string p2, "Invocation handler could not find RemoteObject method. Check ObjectSpace.java"

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->r:Z

    if-nez v0, :cond_f

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "<proxy>"

    return-object p1

    :cond_f
    new-instance p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-direct {p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;-><init>()V

    iget v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->b:I

    iput v0, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    iput-object p2, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->method:Ljava/lang/reflect/Method;

    iput-object p3, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->args:[Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->p:Z

    const/4 v3, 0x1

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->q:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->k:Z

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    const/4 v0, 0x0

    goto :goto_2

    :cond_11
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_15

    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->t:B

    add-int/lit8 v4, v0, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->t:B

    const/16 v5, 0x40

    if-ne v4, v5, :cond_12

    iput-byte v3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->t:B

    :cond_12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->p:Z

    if-eqz v4, :cond_13

    or-int/lit8 v0, v0, -0x80

    int-to-byte v0, v0

    :cond_13
    iget-boolean v4, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->q:Z

    if-eqz v4, :cond_14

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_14
    iput-byte v0, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_15
    iput-byte v2, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    :goto_3
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    move-result v0

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, ""

    if-eqz p3, :cond_16

    invoke-static {p3}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_16
    const-string p3, "kryonet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->a:Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sent: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-byte p3, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    if-eqz p3, :cond_18

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    iput-object p3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->s:Ljava/lang/Byte;

    :cond_18
    iget-boolean p3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->k:Z

    if-eqz p3, :cond_21

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_20

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_19
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1a

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1a
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1b

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_1b
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_1c
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1d

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1d
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1e

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_1e
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_1f
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_20

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_20
    return-object v1

    :cond_21
    :try_start_2
    iget-byte p1, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;->b(B)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_23

    instance-of p3, p1, Ljava/lang/Exception;

    if-nez p3, :cond_22

    goto :goto_4

    :cond_22
    check-cast p1, Ljava/lang/Exception;

    throw p1
    :try_end_2
    .catch Lcom/esotericsoftware/kryonet/rmi/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_23
    :goto_4
    return-object p1

    :catch_0
    new-instance p1, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response timed out: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryonet/rmi/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
