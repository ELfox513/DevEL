.class public Lcom/badlogic/gdx/utils/DataOutput;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;II)V
    .locals 2

    :goto_0
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x7ff

    if-le v0, v1, :cond_1

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xf

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x1f

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeInt(IZ)I
    .locals 1

    if-nez p2, :cond_0

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    :cond_0
    ushr-int/lit8 p2, p1, 0x7

    if-nez p2, :cond_1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v0, p1, 0xe

    if-nez v0, :cond_2

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x2

    return p1

    :cond_2
    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p2, p1, 0x15

    if-nez p2, :cond_3

    int-to-byte p1, v0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x3

    return p1

    :cond_3
    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x1c

    if-nez p1, :cond_4

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x4

    return p1

    :cond_4
    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x5

    return p1
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/badlogic/gdx/utils/DataOutput;->writeInt(IZ)I

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v0, v1, :cond_4

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/DataOutput;->c(Ljava/lang/String;II)V

    :cond_4
    return-void
.end method
