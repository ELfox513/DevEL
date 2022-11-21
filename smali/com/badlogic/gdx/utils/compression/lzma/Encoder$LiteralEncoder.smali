.class Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/compression/lzma/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiteralEncoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    }
.end annotation


# instance fields
.field public a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->e:Lcom/badlogic/gdx/utils/compression/lzma/Encoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->b:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->c:I

    const/4 v0, 0x1

    shl-int v1, v0, p1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->d:I

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->b:I

    add-int/2addr p2, p1

    shl-int p1, v0, p2

    new-array p2, p1, [Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    new-instance v1, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;-><init>(Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;)V

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public GetSubCoder(IB)Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->d:I

    and-int/2addr p1, v1

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->b:I

    shl-int/2addr p1, v1

    and-int/lit16 p2, p2, 0xff

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr p2, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public Init()V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->c:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder;->a:[Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/compression/lzma/Encoder$LiteralEncoder$Encoder2;->Init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
