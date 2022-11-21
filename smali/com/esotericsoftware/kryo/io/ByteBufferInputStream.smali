.class public Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->c(Ljava/nio/Buffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final c(Ljava/nio/Buffer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInputStream;->a:Ljava/nio/ByteBuffer;

    return-void
.end method
