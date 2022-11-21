.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
    }
.end annotation


# static fields
.field public static final s:[B


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

.field public final b:Ljava/util/zip/Deflater;

.field public d:Lcom/badlogic/gdx/utils/ByteArray;

.field public k:Lcom/badlogic/gdx/utils/ByteArray;

.field public p:Lcom/badlogic/gdx/utils/ByteArray;

.field public q:Z

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->s:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->q:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->b:Ljava/util/zip/Deflater;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method

.method public setCompression(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->q:Z

    return-void
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->b:Ljava/util/zip/Deflater;

    invoke-direct {v1, v2, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v2, Ljava/io/DataOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->s:[B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v5, 0x49484452

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v6, 0x49444154    # 803861.25f

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->reset()V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    const/4 v6, 0x4

    mul-int/lit8 v4, v4, 0x4

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->d:Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v7, :cond_0

    new-instance v7, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->d:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    new-instance v8, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->k:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    new-instance v9, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->p:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v9, v9, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v7

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->k:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v8

    iget-object v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->p:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v9

    iget v10, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->r:I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    aput-byte v5, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v4, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->r:I

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v14, 0x1

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_c

    iget-boolean v6, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->q:Z

    if-eqz v6, :cond_3

    sub-int v6, v13, v15

    sub-int/2addr v6, v14

    goto :goto_4

    :cond_3
    move v6, v15

    :goto_4
    if-eqz v12, :cond_5

    mul-int v6, v6, v4

    invoke-virtual {v10, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v10, v8, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_4
    move/from16 v18, v12

    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    if-ge v14, v5, :cond_4

    move-object/from16 v5, p2

    invoke-virtual {v5, v14, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v3

    add-int/lit8 v18, v17, 0x1

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v8, v17

    add-int/lit8 v5, v18, 0x1

    move/from16 v17, v6

    shr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v18

    add-int/lit8 v6, v5, 0x1

    move/from16 v18, v12

    shr-int/lit8 v12, v3, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    add-int/lit8 v5, v6, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v8, v6

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p1

    move/from16 v6, v17

    move/from16 v12, v18

    move/from16 v17, v5

    goto :goto_5

    :goto_6
    aget-byte v5, v8, v3

    aget-byte v6, v9, v3

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    const/4 v3, 0x1

    aget-byte v5, v8, v3

    aget-byte v6, v9, v3

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    const/4 v5, 0x2

    aget-byte v6, v8, v5

    aget-byte v12, v9, v5

    sub-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    const/4 v5, 0x3

    aget-byte v6, v8, v5

    aget-byte v12, v9, v5

    sub-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    const/4 v5, 0x4

    :goto_7
    if-ge v5, v4, :cond_b

    add-int/lit8 v6, v5, -0x4

    aget-byte v12, v8, v6

    and-int/lit16 v12, v12, 0xff

    aget-byte v14, v9, v5

    and-int/lit16 v14, v14, 0xff

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    add-int v16, v12, v14

    sub-int v16, v16, v6

    sub-int v3, v16, v12

    if-gez v3, :cond_6

    neg-int v3, v3

    :cond_6
    move-object/from16 v19, v9

    sub-int v9, v16, v14

    if-gez v9, :cond_7

    neg-int v9, v9

    :cond_7
    move/from16 v20, v12

    sub-int v12, v16, v6

    if-gez v12, :cond_8

    neg-int v12, v12

    :cond_8
    if-gt v3, v9, :cond_9

    if-gt v3, v12, :cond_9

    move/from16 v12, v20

    goto :goto_8

    :cond_9
    if-gt v9, v12, :cond_a

    move v12, v14

    goto :goto_8

    :cond_a
    move v12, v6

    :goto_8
    aget-byte v3, v8, v5

    sub-int/2addr v3, v12

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v19

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v19, v9

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v5, v4}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p1

    move-object v9, v8

    move/from16 v12, v18

    move-object/from16 v8, v19

    const/4 v6, 0x4

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v10, v11}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v3, 0x49454e44    # 808164.25f

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->a:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
