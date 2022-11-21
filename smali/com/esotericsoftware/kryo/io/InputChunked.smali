.class public Lcom/esotericsoftware/kryo/io/InputChunked;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method


# virtual methods
.method public fill([BII)I
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result p1

    iget p2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->j()Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method public final j()Z
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    return v1

    :cond_0
    and-int/lit8 v5, v4, 0x7f

    shl-int/2addr v5, v2

    or-int/2addr v3, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1

    if-lez v3, :cond_1

    const-string v0, "kryo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Unable to read chunk size: malformed integer"

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    const-string v2, "Unable to read chunk size."

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public nextChunk()V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/InputChunked;->j()Z

    :cond_0
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    const-string v0, "kryo"

    const-string v1, "Next chunk."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/Input;->reset()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method

.method public setBuffer([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->setInputStream(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/io/InputChunked;->a:I

    return-void
.end method
