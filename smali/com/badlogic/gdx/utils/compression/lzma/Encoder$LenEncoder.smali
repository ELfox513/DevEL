.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LenEncoder"
.end annotation


# instance fields
.field public a:[S

.field public b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field public c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field public d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

.field public final synthetic e:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 4

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->e:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [S

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    const/16 p1, 0x10

    new-array v0, p1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-array v0, p1, [Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v0, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    new-instance v2, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    invoke-virtual {p1, v0, v1, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    invoke-virtual {p1, v0, v3, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    invoke-virtual {p1, p3, v3, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->Encode([SII)V

    iget-object p3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    sub-int/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;I)V

    :goto_0
    return-void
.end method

.method public Init(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->InitBitModels([S)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->Init()V

    return-void
.end method

.method public SetPrices(II[II)V
    .locals 7

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    const/4 v4, 0x1

    aget-short v3, v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice0(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->a:[S

    aget-short v4, v5, v4

    invoke-static {v4}, Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;->GetPrice1(I)I

    move-result v4

    add-int/2addr v2, v4

    :goto_0
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    add-int v4, p4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->b:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v5, v5, p1

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v5

    add-int/2addr v5, v0

    aput v5, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x10

    if-ge v1, v0, :cond_3

    if-lt v1, p2, :cond_2

    return-void

    :cond_2
    add-int v0, p4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->c:[Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    aget-object v5, v5, p1

    add-int/lit8 v6, v1, -0x8

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v5

    add-int/2addr v5, v3

    aput v5, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v1, p2, :cond_4

    add-int p1, p4, v1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->d:Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;

    add-int/lit8 v3, v1, -0x8

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/compression/rangecoder/BitTreeEncoder;->GetPrice(I)I

    move-result v0

    add-int/2addr v0, v2

    aput v0, p3, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
