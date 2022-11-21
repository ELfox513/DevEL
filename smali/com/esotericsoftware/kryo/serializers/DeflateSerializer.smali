.class public Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# instance fields
.field public final c:Lcom/esotericsoftware/kryo/Serializer;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->d:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->e:I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->c:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->c:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ljava/util/zip/Inflater;

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->d:Z

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Lcom/esotericsoftware/kryo/io/InputChunked;

    const/16 v3, 0x100

    invoke-direct {v2, p2, v3}, Lcom/esotericsoftware/kryo/io/InputChunked;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iget-object p2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->c:Lcom/esotericsoftware/kryo/Serializer;

    new-instance v2, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v2, v1, v3}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p2, p1, v2, p3}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    throw p1
.end method

.method public setCompressionLevel(I)V
    .locals 0

    iput p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->e:I

    return-void
.end method

.method public setNoHeaders(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->d:Z

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Lcom/esotericsoftware/kryo/io/OutputChunked;

    const/16 v1, 0x100

    invoke-direct {v0, p2, v1}, Lcom/esotericsoftware/kryo/io/OutputChunked;-><init>(Ljava/io/OutputStream;I)V

    new-instance p2, Ljava/util/zip/Deflater;

    iget v2, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->e:I

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->d:Z

    invoke-direct {p2, v2, v3}, Ljava/util/zip/Deflater;-><init>(IZ)V

    :try_start_0
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v0, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v3, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v3, v2, v1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/DeflateSerializer;->c:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v1, p1, v3, p3}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->endChunk()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p3, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p3, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    throw p1
.end method
