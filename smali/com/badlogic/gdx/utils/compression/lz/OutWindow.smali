.class public Lcom/badlogic/gdx/utils/compression/lz/OutWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    return-void
.end method


# virtual methods
.method public CopyBlock(II)V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    add-int/2addr v0, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    if-lt v0, p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    aput-byte v0, v1, v2

    if-lt v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    :cond_2
    add-int/lit8 p2, p2, -0x1

    move v0, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public Create(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    if-eq v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->d:I

    return-void
.end method

.method public Flush()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->d:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->e:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->d:I

    return-void
.end method

.method public GetByte(I)B
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    add-int/2addr v0, p1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public Init(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->d:I

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    :cond_0
    return-void
.end method

.method public PutByte(B)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->a:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->b:I

    aput-byte p1, v0, v1

    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->c:I

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    :cond_0
    return-void
.end method

.method public ReleaseStream()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->Flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->e:Ljava/io/OutputStream;

    return-void
.end method

.method public SetStream(Ljava/io/OutputStream;)V
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->ReleaseStream()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/OutWindow;->e:Ljava/io/OutputStream;

    return-void
.end method
