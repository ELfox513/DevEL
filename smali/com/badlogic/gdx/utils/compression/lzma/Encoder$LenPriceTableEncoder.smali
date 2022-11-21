.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;
.super Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LenPriceTableEncoder"
.end annotation


# instance fields
.field public f:[I

.field public g:I

.field public h:[I

.field public final synthetic i:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->i:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V

    const/16 p1, 0x1100

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->f:[I

    const/16 p1, 0x10

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->h:[I

    return-void
.end method


# virtual methods
.method public Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->Encode(Lcom/badlogic/gdx/utils/compression/rangecoder/Encoder;II)V

    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->h:[I

    aget p2, p1, p3

    add-int/lit8 p2, p2, -0x1

    aput p2, p1, p3

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->a(I)V

    :cond_0
    return-void
.end method

.method public GetPrice(II)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->f:[I

    mul-int/lit16 p2, p2, 0x110

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public SetTableSize(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->g:I

    return-void
.end method

.method public UpdateTables(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->g:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->f:[I

    mul-int/lit16 v2, p1, 0x110

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenEncoder;->SetPrices(II[II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->h:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LenPriceTableEncoder;->g:I

    aput v1, v0, p1

    return-void
.end method
