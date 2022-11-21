.class public Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitBitModels([S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/16 v1, 0x400

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public DecodeBit([SI)I
    .locals 7

    aget-short v0, p1, p2

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    ushr-int/lit8 v2, v1, 0xb

    mul-int v2, v2, v0

    iget v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    const/high16 v4, -0x80000000

    xor-int v5, v3, v4

    xor-int/2addr v4, v2

    const/high16 v6, -0x1000000

    if-ge v5, v4, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    rsub-int v1, v0, 0x800

    ushr-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p1, p2

    and-int p1, v2, v6

    if-nez p1, :cond_0

    shl-int/lit8 p1, v3, 0x8

    iget-object p2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    ushr-int/lit8 v2, v0, 0x5

    sub-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p1, p2

    and-int p1, v1, v6

    if-nez p1, :cond_2

    shl-int/lit8 p1, v3, 0x8

    iget-object p2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    shl-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final DecodeDirectBits(I)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    sub-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v1

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    shl-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    or-int/2addr v0, v3

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    shl-int/lit8 v1, v2, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final Init()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->a:I

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final ReleaseStream()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    return-void
.end method

.method public final SetStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/rangecoder/Decoder;->c:Ljava/io/InputStream;

    return-void
.end method
