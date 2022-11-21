.class Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;
.super Lcom/esotericsoftware/kryonet/Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnected(Lcom/esotericsoftware/kryonet/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->removeConnection(Lcom/esotericsoftware/kryonet/Connection;)V

    return-void
.end method

.method public received(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v2, v2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->c:[Lcom/esotericsoftware/kryonet/Connection;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    check-cast p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v0, v0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->a:Lcom/esotericsoftware/kryo/util/IntMap;

    iget v1, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    sget-boolean p1, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring remote invocation request for unknown object ID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;->objectID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "kryonet"

    invoke-static {p2, p1}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;->a:Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;

    iget-object v2, v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->e:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_6

    invoke-virtual {v1, p1, v0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->invoke(Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1$1;-><init>(Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$1;Lcom/esotericsoftware/kryonet/Connection;Ljava/lang/Object;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethod;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
