.class Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LenDecoder"
.end annotation


# instance fields
.field public a:[S

.field public b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field public c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field public d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

.field public e:I

.field public final synthetic f:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Decoder;)V
    .locals 1

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->f:Lcom/badlogic/gdx/utils/compression/lzma/Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->a:[S

    const/16 p1, 0x10

    new-array v0, p1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-array p1, p1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-instance p1, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    return-void
.end method


# virtual methods
.method public Create(I)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;-><init>(I)V

    aput-object v2, v0, v1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;I)I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->a:[S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->a:[S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->DecodeBit([SI)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Decode(Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    :goto_0
    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public Init()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->a:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->InitBitModels([S)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Decoder$LenDecoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeDecoder;->Init()V

    return-void
.end method
