.class public final Lr4/hf;
.super Lr4/cf;
.source "SourceFile"


# instance fields
.field public final b:Lr4/ff;

.field public c:Ljava/nio/ByteBuffer;

.field public d:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lr4/cf;-><init>()V

    new-instance p1, Lr4/ff;

    invoke-direct {p1}, Lr4/ff;-><init>()V

    iput-object p1, p0, Lr4/hf;->b:Lr4/ff;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-super {p0}, Lr4/cf;->a()V

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 3

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lr4/hf;->j(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lr4/hf;->j(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-lez v1, :cond_2

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    iput-object p1, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final i()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lr4/cf;->g(I)Z

    move-result v0

    return v0
.end method

.method public final j(I)Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lr4/hf;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Buffer too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
