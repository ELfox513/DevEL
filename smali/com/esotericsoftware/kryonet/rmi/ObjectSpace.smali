.class public Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteObjectSerializer;,
        Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;,
        Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;,
        Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;,
        Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;

.field public static h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "[",
            "Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/util/IntMap;

.field public final b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

.field public c:[Lcom/esotericsoftware/kryonet/Connection;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/esotericsoftware/kryonet/Listener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    sput-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->i:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    new-instance v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->d:Ljava/lang/Object;

    new-instance v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;

    invoke-direct {v1, p0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;-><init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;)V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->f:Lcom/esotericsoftware/kryonet/Listener;

    sget-object v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    aput-object p0, v3, v0

    array-length v5, v2

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;-><init>()V

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->addConnection(Lcom/esotericsoftware/kryonet/Connection;)V

    return-void
.end method

.method public static a(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;
    .locals 11

    sget-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_2
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$2;

    invoke-direct {v3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$2;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    new-array v2, v0, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_9

    new-instance v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;

    invoke-direct {v5}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;-><init>()V

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    iput-object v6, v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [Lcom/esotericsoftware/kryo/Serializer;

    iput-object v7, v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;->b:[Lcom/esotericsoftware/kryo/Serializer;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$CachedMethod;->b:[Lcom/esotericsoftware/kryo/Serializer;

    aget-object v10, v6, v8

    invoke-virtual {p0, v10}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v10

    aput-object v10, v9, v8

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    sget-object p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static b(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)I
    .locals 9

    sget-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const v4, 0x7fffffff

    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    iget-object v6, v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v7, 0x0

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    if-eq v8, p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v8, v5, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    invoke-virtual {v8, p1, v4}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    if-eq v8, v4, :cond_1

    return v8

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static c(Lcom/esotericsoftware/kryonet/Connection;I)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v6, 0x0

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-object v7, v5, v6

    if-eq v7, p0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v7, v4, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v7, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    return-object v7

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs getRemoteObject(Lcom/esotericsoftware/kryonet/Connection;I[Ljava/lang/Class;)Lcom/esotericsoftware/kryonet/rmi/RemoteObject;
    .locals 4

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Lcom/esotericsoftware/kryonet/rmi/RemoteObject;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-class p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    new-instance v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;

    invoke-direct {v1, p0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$RemoteInvocationHandler;-><init>(Lcom/esotericsoftware/kryonet/Connection;I)V

    invoke-static {p2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/esotericsoftware/kryonet/rmi/RemoteObject;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ifaces cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connection cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRemoteObject(Lcom/esotericsoftware/kryonet/Connection;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryonet/Connection;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->getRemoteObject(Lcom/esotericsoftware/kryonet/Connection;I[Ljava/lang/Class;)Lcom/esotericsoftware/kryonet/rmi/RemoteObject;

    move-result-object p0

    return-object p0
.end method

.method public static registerClasses(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 3

    const-class v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    const-class v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    new-instance v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$3;

    invoke-direct {v1, p0, v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$3;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    const-string v2, "objectID"

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->removeField(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Ljava/lang/reflect/InvocationHandler;

    new-instance v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$4;

    invoke-direct {v1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    return-void
.end method


# virtual methods
.method public addConnection(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/esotericsoftware/kryonet/Connection;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->f:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->addListener(Lcom/esotericsoftware/kryonet/Listener;)V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added connection to ObjectSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->f:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {v2, v3}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    sput-object v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->h:[Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    const-string v0, "kryonet"

    const-string v1, "Closed ObjectSpace."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public invoke(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V
    .locals 10

    const-string v0, "."

    const-string v1, "Error invoking method: "

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    const-string v3, ")"

    const-string v4, "kryonet"

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->args:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-byte v2, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->responseID:B

    and-int/lit8 v6, v2, -0x80

    const/4 v7, 0x0

    const/16 v8, -0x80

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    and-int/lit8 v8, v2, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget-object v7, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->method:Ljava/lang/reflect/Method;

    :try_start_0
    iget-object v8, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->args:[Ljava/lang/Object;

    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    if-eqz v5, :cond_7

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :goto_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    new-instance v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    invoke-direct {v0}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;-><init>()V

    iget v1, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    iput v1, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->objectID:I

    iput-byte v2, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->responseID:B

    if-nez v6, :cond_5

    iget-object p3, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->result:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iput-object p2, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->result:Ljava/lang/Object;

    :goto_4
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->sendTCP(Ljava/lang/Object;)I

    move-result p3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " sent: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    new-instance p1, Lcom/esotericsoftware/kryonet/KryoNetException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public register(ILjava/lang/Object;)V
    .locals 2

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    invoke-virtual {v0, p2, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object registered with ObjectSpace as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kryonet"

    invoke-static {p2, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "objectID cannot be Integer.MAX_VALUE."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(I)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->remove(Ljava/lang/Object;I)I

    :cond_0
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " removed from ObjectSpace: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryonet"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->containsValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/esotericsoftware/kryo/util/IntMap;->findKey(Ljava/lang/Object;ZI)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->b:Lcom/esotericsoftware/kryonet/util/ObjectIntMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->remove(Ljava/lang/Object;I)I

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " removed from ObjectSpace: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryonet"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeConnection(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->f:Lcom/esotericsoftware/kryonet/Listener;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryonet/Connection;->removeListener(Lcom/esotericsoftware/kryonet/Listener;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/esotericsoftware/kryonet/Connection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/esotericsoftware/kryonet/Connection;

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "kryonet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed connection from ObjectSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->e:Ljava/util/concurrent/Executor;

    return-void
.end method
