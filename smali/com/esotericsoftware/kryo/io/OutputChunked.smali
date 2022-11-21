.class public Lcom/esotericsoftware/kryo/io/OutputChunked;
.super Lcom/esotericsoftware/kryo/io/Output;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Output;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v0

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_3
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_4
    and-int/lit8 v2, v0, 0x7f

    or-int/lit16 v2, v2, 0x80

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public endChunk()V
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->flush()V

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    const-string v0, "kryo"

    const-string v1, "End chunk."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/OutputChunked;->e()V

    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    :goto_0
    return-void
.end method
