.class public Lcom/esotericsoftware/kryonet/KryoSerialization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/Serialization;


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/Kryo;

.field public final b:Lcom/esotericsoftware/kryo/io/ByteBufferInput;

.field public final c:Lcom/esotericsoftware/kryo/io/ByteBufferOutput;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/kryo/Kryo;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/Kryo;-><init>()V

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryonet/KryoSerialization;-><init>(Lcom/esotericsoftware/kryo/Kryo;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->setReferences(Z)Z

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->setRegistrationRequired(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    const-class v0, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    new-instance p1, Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    new-instance p1, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    return-void
.end method


# virtual methods
.method public getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    return-object v0
.end method

.method public getLengthLength()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public declared-synchronized read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object p2

    const-string v0, "connection"

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readLength(Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method public declared-synchronized write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->setBuffer(Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;

    move-result-object p2

    const-string v0, "connection"

    invoke-virtual {p2, v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->a:Lcom/esotericsoftware/kryo/Kryo;

    iget-object p2, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/KryoSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeLength(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
