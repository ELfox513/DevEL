.class public Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferOutputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method
