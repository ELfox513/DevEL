.class public Lcom/esotericsoftware/kryonet/JsonSerialization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryonet/Serialization;


# instance fields
.field public final a:Lcom/esotericsoftware/jsonbeans/Json;

.field public final b:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

.field public final c:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

.field public final d:Ljava/io/OutputStreamWriter;

.field public e:Z

.field public f:Z

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/jsonbeans/Json;

    invoke-direct {v0}, Lcom/esotericsoftware/jsonbeans/Json;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->a:Lcom/esotericsoftware/jsonbeans/Json;

    new-instance v1, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    new-instance v1, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->d:Ljava/io/OutputStreamWriter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->e:Z

    iput-boolean v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->f:Z

    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->g:[B

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterTCP;

    const-string v3, "RegisterTCP"

    invoke-virtual {v0, v3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$RegisterUDP;

    const-string v3, "RegisterUDP"

    invoke-virtual {v0, v3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$KeepAlive;

    const-string v3, "KeepAlive"

    invoke-virtual {v0, v3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$DiscoverHost;

    const-string v3, "DiscoverHost"

    invoke-virtual {v0, v3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Lcom/esotericsoftware/kryonet/FrameworkMessage$Ping;

    const-string v3, "Ping"

    invoke-virtual {v0, v3, v1}, Lcom/esotericsoftware/jsonbeans/Json;->addClassTag(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/jsonbeans/Json;->setWriter(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public getLengthLength()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->a:Lcom/esotericsoftware/jsonbeans/Json;

    const-class p2, Ljava/lang/Object;

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->b:Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/jsonbeans/Json;->fromJson(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readLength(Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method public setLogging(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->e:Z

    iput-boolean p2, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->f:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryonet/Connection;Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->c:Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p1

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->a:Lcom/esotericsoftware/jsonbeans/Json;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, v2}, Lcom/esotericsoftware/jsonbeans/Json;->writeValue(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->d:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->INFO:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->e:Z

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result p3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int p1, p3, p1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->g:[B

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->g:[B

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->g:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->g:[B

    invoke-direct {p2, p3, v1, p1}, Ljava/lang/String;-><init>([BII)V

    iget-boolean p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/JsonSerialization;->a:Lcom/esotericsoftware/jsonbeans/Json;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/jsonbeans/Json;->prettyPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wrote: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/esotericsoftware/minlog/Log;->info(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/jsonbeans/JsonException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error writing object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/esotericsoftware/jsonbeans/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeLength(Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
