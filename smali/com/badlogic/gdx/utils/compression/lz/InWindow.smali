.class public Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public _blockSize:I

.field public _bufferBase:[B

.field public _bufferOffset:I

.field public _pos:I

.field public _streamPos:I

.field public a:Ljava/io/InputStream;

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Create(III)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->e:I

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->f:I

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    if-eq p3, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->a()V

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->d:I

    return-void
.end method

.method public GetIndexByte(I)B
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public GetMatchLen(III)I
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int v1, v0, p1

    add-int/2addr v1, p3

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    if-le v1, v2, :cond_0

    add-int/2addr v0, p1

    sub-int p3, v2, v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v2, v0, p1

    aget-byte v3, v1, v2

    sub-int/2addr v2, p2

    aget-byte v1, v1, v2

    if-ne v3, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public GetNumAvailableBytes()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public Init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->c:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReadBlock()V

    return-void
.end method

.method public MoveBlock()V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int v4, v1, v2

    aget-byte v4, v3, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    return-void
.end method

.method public MovePos()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->d:I

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MoveBlock()V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->ReadBlock()V

    :cond_1
    return-void
.end method

.method public ReadBlock()V
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    rsub-int/lit8 v1, v0, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_blockSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->d:I

    if-le v0, v2, :cond_2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->c:Z

    return-void

    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->f:I

    add-int/2addr v0, v2

    if-lt v1, v0, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    goto :goto_0
.end method

.method public ReduceOffsets(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferOffset:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->b:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_pos:I

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_streamPos:I

    return-void
.end method

.method public ReleaseStream()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->a:Ljava/io/InputStream;

    return-void
.end method

.method public SetStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->a:Ljava/io/InputStream;

    return-void
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->_bufferBase:[B

    return-void
.end method
