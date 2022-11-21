.class public Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field public static final GDX2D_BLEND_NONE:I = 0x0

.field public static final GDX2D_BLEND_SRC_OVER:I = 0x1

.field public static final GDX2D_FORMAT_ALPHA:I = 0x1

.field public static final GDX2D_FORMAT_LUMINANCE_ALPHA:I = 0x2

.field public static final GDX2D_FORMAT_RGB565:I = 0x5

.field public static final GDX2D_FORMAT_RGB888:I = 0x3

.field public static final GDX2D_FORMAT_RGBA4444:I = 0x6

.field public static final GDX2D_FORMAT_RGBA8888:I = 0x4

.field public static final GDX2D_SCALE_LINEAR:I = 0x1

.field public static final GDX2D_SCALE_NEAREST:I


# instance fields
.field public a:J

.field public b:I

.field public d:I

.field public k:I

.field public p:Ljava/nio/ByteBuffer;

.field public q:[J


# direct methods
.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->newPixmap([JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 p2, 0x1

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 p2, 0x2

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 p2, 0x3

    aget-wide p2, p1, p2

    long-to-int p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to allocate memory for pixmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    array-length v1, p1

    invoke-static {v0, p1, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->load([J[BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    aget-wide v0, p1, v4

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    long-to-int v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 v0, 0x2

    aget-wide v0, p1, v0

    long-to-int v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 v0, 0x3

    aget-wide v0, p1, v0

    long-to-int p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error loading pixmap: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->loadByteBuffer([JLjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 p2, 0x1

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 p2, 0x2

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 p2, 0x3

    aget-wide p2, p1, p2

    long-to-int p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    if-eqz p4, :cond_0

    if-eq p4, p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading pixmap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    aget-wide v0, p2, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 p1, 0x1

    aget-wide v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 p1, 0x2

    aget-wide v0, p2, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 p1, 0x3

    aget-wide p1, p2, p1

    long-to-int p2, p1

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    invoke-static {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->load([J[BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    const/4 p2, 0x1

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    const/4 p2, 0x2

    aget-wide p2, p1, p2

    long-to-int p3, p2

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 p2, 0x3

    aget-wide p2, p1, p2

    long-to-int p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    if-eqz p4, :cond_0

    if-eq p4, p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error loading pixmap: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFailureReason()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "rgba4444"

    return-object p0

    :pswitch_1
    const-string p0, "rgb565"

    return-object p0

    :pswitch_2
    const-string p0, "rgba8888"

    return-object p0

    :pswitch_3
    const-string p0, "rgb888"

    return-object p0

    :pswitch_4
    const-string p0, "luminance alpha"

    return-object p0

    :pswitch_5
    const-string p0, "alpha"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static native clear(JI)V
.end method

.method private static native drawCircle(JIIII)V
.end method

.method private static native drawLine(JIIIII)V
.end method

.method private static native drawPixmap(JJIIIIIIII)V
.end method

.method private static native drawRect(JIIIII)V
.end method

.method private static native fillCircle(JIIII)V
.end method

.method private static native fillRect(JIIIII)V
.end method

.method private static native fillTriangle(JIIIIIII)V
.end method

.method private static native free(J)V
.end method

.method public static native getFailureReason()Ljava/lang/String;
.end method

.method private static native getPixel(JII)I
.end method

.method private static native load([J[BII)Ljava/nio/ByteBuffer;
.end method

.method private static native loadByteBuffer([JLjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method public static newPixmap(III)Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newPixmap(Ljava/io/InputStream;I)Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native newPixmap([JIII)Ljava/nio/ByteBuffer;
.end method

.method private static native setBlend(JI)V
.end method

.method private static native setPixel(JIII)V
.end method

.method private static native setScale(JI)V
.end method

.method public static toGlFormat(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p0, 0x1908

    return p0

    :pswitch_1
    const/16 p0, 0x1907

    return p0

    :pswitch_2
    const/16 p0, 0x190a

    return p0

    :pswitch_3
    const/16 p0, 0x1906

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toGlType(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p0, 0x8033

    return p0

    :pswitch_1
    const p0, 0x8363

    return p0

    :pswitch_2
    const/16 p0, 0x1401

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    new-instance v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    invoke-direct {v8, v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    const/4 p1, 0x0

    invoke-virtual {v8, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    iget v6, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    iget-wide v0, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    iput-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    iget p1, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    iget p1, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    iget-object p1, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->q:[J

    iget-object p1, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    iget p1, v8, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    return-void
.end method

.method public clear(I)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(JI)V

    return-void
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->free(J)V

    return-void
.end method

.method public drawCircle(IIII)V
    .locals 6

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(JIIII)V

    return-void
.end method

.method public drawLine(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(JIIIII)V

    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V
    .locals 13

    move-object v0, p1

    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move-object v12, p0

    iget-wide v2, v12, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V
    .locals 13

    move-object v0, p1

    iget-wide v0, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move-object v12, p0

    iget-wide v2, v12, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(JJIIIIIIII)V

    return-void
.end method

.method public drawRect(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(JIIIII)V

    return-void
.end method

.method public fillCircle(IIII)V
    .locals 6

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(JIIII)V

    return-void
.end method

.method public fillRect(IIIII)V
    .locals 7

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(JIIIII)V

    return-void
.end method

.method public fillTriangle(IIIIIII)V
    .locals 10

    move-object v0, p0

    iget-wide v1, v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillTriangle(JIIIIIII)V

    return-void
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGLFormat()I
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlFormat(I)I

    move-result v0

    return v0
.end method

.method public getGLType()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->k:I

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlType(I)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->d:I

    return v0
.end method

.method public getPixel(II)I
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(JII)I

    move-result p1

    return p1
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->p:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->b:I

    return v0
.end method

.method public setBlend(I)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(JI)V

    return-void
.end method

.method public setPixel(III)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(JIII)V

    return-void
.end method

.method public setScale(I)V
    .locals 2

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->a:J

    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(JI)V

    return-void
.end method
