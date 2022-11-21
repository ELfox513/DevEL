.class public Lcom/prineside/tdi2/utils/StringFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/StringFormatter$MeasureUnits;
    }
.end annotation


# static fields
.field public static final DISTINGUISHABLE_STRING_CHARS:Ljava/lang/String; = "23456789ABCDEFGHJKLMNPQRSTUVWXYZ"

.field public static final VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

.field public static final a:[Ljava/lang/String;

.field public static final b:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final c:[B

.field public static final d:Ljava/io/ByteArrayOutputStream;

.field public static e:[B

.field public static final f:Ljava/util/zip/Deflater;

.field public static final g:Ljava/util/zip/Inflater;

.field public static h:Lcom/badlogic/gdx/utils/ByteArray;

.field public static i:Ljava/security/MessageDigest;

.field public static j:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->VALID_EMAIL_ADDRESS_REGEX:Ljava/util/regex/Pattern;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    const-string v3, "\u0000"

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    new-array v5, v1, [C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "I"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "IV"

    aput-object v4, v1, v2

    const/4 v1, 0x5

    :goto_1
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x5

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string v4, "IX"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "X"

    aput-object v4, v1, v2

    const/16 v1, 0xb

    :goto_2
    const/16 v2, 0x27

    if-gt v1, v2, :cond_2

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    div-int/lit8 v7, v1, 0xa

    new-array v7, v7, [C

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v6, v1, 0xa

    aget-object v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x400

    new-array v2, v1, [B

    sput-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->c:[B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x20

    new-array v2, v2, [B

    sput-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2, v0, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    sput-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->f:Ljava/util/zip/Deflater;

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    sput-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    new-instance v0, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->h:Lcom/badlogic/gdx/utils/ByteArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DIDC)V
    .locals 7

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double/2addr p3, v0

    div-double v2, p0, p3

    double-to-int v2, v2

    sget-object v3, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-ne p2, v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, p3

    sub-double/2addr p0, v5

    div-double/2addr p3, v0

    div-double v5, p0, p3

    double-to-int v2, v5

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, p3

    sub-double/2addr p0, v4

    div-double/2addr p3, v0

    div-double/2addr p0, p3

    double-to-int p0, p0

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3, p5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public static b()Ljava/security/MessageDigest;
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->i:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->i:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get MD5 digest"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->i:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public static commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 18

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    const-wide v2, 0xde0b6b3a7640000L

    move-wide v4, v2

    move-wide/from16 v2, p0

    :cond_0
    const-wide/16 v6, 0x0

    const/16 v8, 0x30

    const-string v9, "00"

    const-wide/16 v10, 0x64

    const-wide/16 v12, 0xa

    cmp-long v14, v4, v6

    if-lez v14, :cond_6

    const/16 v6, 0x2c

    cmp-long v7, v2, v4

    if-ltz v7, :cond_4

    div-long v14, v2, v4

    mul-long v16, v14, v4

    sub-long v2, v2, v16

    if-eqz v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v14, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_1
    cmp-long v0, v14, v12

    if-gez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_2
    cmp-long v0, v14, v10

    if-gez v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    :goto_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v14, v15}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    sget-object v7, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const-string v14, "000"

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_5
    :goto_2
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1

    cmp-long v14, v4, v6

    if-nez v14, :cond_0

    :cond_6
    if-nez v0, :cond_8

    cmp-long v0, v2, v12

    if-gez v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    :cond_7
    cmp-long v0, v2, v10

    if-gez v0, :cond_8

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_8
    :goto_3
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static compactBytes([BII)Lcom/badlogic/gdx/utils/ByteArray;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    array-length v0, v0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    array-length v0, p0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->f:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    sget-object p1, Lcom/prineside/tdi2/utils/StringFormatter;->h:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ByteArray;->clear()V

    sget-object p1, Lcom/prineside/tdi2/utils/StringFormatter;->h:Lcom/badlogic/gdx/utils/ByteArray;

    sget-object p2, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lcom/badlogic/gdx/utils/ByteArray;->addAll([BII)V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->h:Lcom/badlogic/gdx/utils/ByteArray;

    return-object p0
.end method

.method public static compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 11

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    if-eqz p3, :cond_0

    double-to-int p3, p0

    int-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double p3, p0, v2

    if-gez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    neg-double p0, p0

    :cond_2
    move-wide v2, p0

    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v6, v2, p0

    if-gez v6, :cond_3

    if-eqz p2, :cond_3

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v4

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p2, p2, 0x2

    iget p0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p0, p2, :cond_13

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    :cond_3
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const-wide v8, 0x408f400000000000L    # 1000.0

    cmpg-double v10, v2, v6

    if-gez v10, :cond_4

    if-eqz p2, :cond_4

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v8

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p2, p2, 0x3

    iget p0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p0, p2, :cond_13

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    :cond_4
    cmpg-double p2, v2, v8

    if-gez p2, :cond_5

    invoke-static {v2, v3}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    :cond_5
    cmpg-double p2, v2, v4

    if-gez p2, :cond_6

    const/4 v4, 0x1

    const-wide v5, 0x40c3880000000000L    # 10000.0

    const/16 v7, 0x4b

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_6
    const-wide v4, 0x40f86a0000000000L    # 100000.0

    cmpg-double p2, v2, v4

    if-gez p2, :cond_7

    const/4 v4, 0x2

    const-wide v5, 0x40f86a0000000000L    # 100000.0

    const/16 v7, 0x4b

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_7
    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpg-double p2, v2, v4

    if-gez p2, :cond_8

    const/4 v4, 0x0

    const-wide v5, 0x412e848000000000L    # 1000000.0

    const/16 v7, 0x4b

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_8
    const-wide v4, 0x416312d000000000L    # 1.0E7

    cmpg-double p2, v2, v4

    if-gez p2, :cond_9

    const/4 v4, 0x1

    const-wide v5, 0x416312d000000000L    # 1.0E7

    const/16 v7, 0x4d

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_9
    const-wide v4, 0x4197d78400000000L    # 1.0E8

    cmpg-double p2, v2, v4

    if-gez p2, :cond_a

    const/4 v4, 0x2

    const-wide v5, 0x4197d78400000000L    # 1.0E8

    const/16 v7, 0x4d

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_a
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double p2, v2, v4

    if-gez p2, :cond_b

    const/4 v4, 0x0

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    const/16 v7, 0x4d

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_b
    const-wide v4, 0x4202a05f20000000L    # 1.0E10

    cmpg-double p2, v2, v4

    if-gez p2, :cond_c

    const/4 v4, 0x1

    const-wide v5, 0x4202a05f20000000L    # 1.0E10

    const/16 v7, 0x42

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_c
    const-wide v4, 0x42374876e8000000L    # 1.0E11

    cmpg-double p2, v2, v4

    if-gez p2, :cond_d

    const/4 v4, 0x2

    const-wide v5, 0x42374876e8000000L    # 1.0E11

    const/16 v7, 0x42

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_d
    const-wide v4, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double p2, v2, v4

    if-gez p2, :cond_e

    const/4 v4, 0x0

    const-wide v5, 0x426d1a94a2000000L    # 1.0E12

    const/16 v7, 0x42

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_e
    const-wide v4, 0x42a2309ce5400000L    # 1.0E13

    cmpg-double p2, v2, v4

    if-gez p2, :cond_f

    const/4 v4, 0x1

    const-wide v5, 0x42a2309ce5400000L    # 1.0E13

    const/16 v7, 0x54

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_f
    const-wide v4, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double p2, v2, v4

    if-gez p2, :cond_10

    const/4 v4, 0x2

    const-wide v5, 0x42d6bcc41e900000L    # 1.0E14

    const/16 v7, 0x54

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_10
    const-wide v4, 0x430c6bf526340000L    # 1.0E15

    cmpg-double p2, v2, v4

    if-gez p2, :cond_11

    const/4 v4, 0x0

    const-wide v5, 0x430c6bf526340000L    # 1.0E15

    const/16 v7, 0x54

    invoke-static/range {v2 .. v7}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_11
    const/4 p2, 0x0

    :goto_1
    cmpl-double v0, v2, v8

    if-ltz v0, :cond_12

    div-double/2addr v2, p0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_12
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    double-to-int p1, v2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_13
    :goto_2
    if-eqz p3, :cond_14

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_14
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method

.method public static compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    neg-double p0, p0

    :cond_1
    move-wide v3, p0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpg-double v7, v3, p0

    if-gez v7, :cond_2

    if-eqz p2, :cond_2

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v5

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    iget p0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 p1, 0x5

    if-le p0, p1, :cond_12

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    :cond_2
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    cmpg-double v7, v3, p0

    if-gez v7, :cond_3

    if-eqz p2, :cond_3

    mul-double v3, v3, v5

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v5

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    iget p0, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 p1, 0x4

    if-le p0, p1, :cond_12

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    :cond_3
    cmpg-double p0, v3, v5

    if-gez p0, :cond_4

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->round(D)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_2

    :cond_4
    const-wide p0, 0x40c3880000000000L    # 10000.0

    cmpg-double p2, v3, p0

    if-gez p2, :cond_5

    const/4 v5, 0x1

    const-wide v6, 0x40c3880000000000L    # 10000.0

    const/16 v8, 0x4b

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_5
    const-wide p0, 0x40f86a0000000000L    # 100000.0

    cmpg-double p2, v3, p0

    if-gez p2, :cond_6

    const/4 v5, 0x2

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    const/16 v8, 0x4b

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_6
    const-wide p0, 0x412e848000000000L    # 1000000.0

    cmpg-double p2, v3, p0

    if-gez p2, :cond_7

    const/4 v5, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/16 v8, 0x4b

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_7
    const-wide p0, 0x416312d000000000L    # 1.0E7

    cmpg-double p2, v3, p0

    if-gez p2, :cond_8

    const/4 v5, 0x1

    const-wide v6, 0x416312d000000000L    # 1.0E7

    const/16 v8, 0x4d

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_8
    const-wide p0, 0x4197d78400000000L    # 1.0E8

    cmpg-double p2, v3, p0

    if-gez p2, :cond_9

    const/4 v5, 0x2

    const-wide v6, 0x4197d78400000000L    # 1.0E8

    const/16 v8, 0x4d

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_9
    const-wide p0, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double p2, v3, p0

    if-gez p2, :cond_a

    const/4 v5, 0x0

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    const/16 v8, 0x4d

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_a
    const-wide p0, 0x4202a05f20000000L    # 1.0E10

    cmpg-double p2, v3, p0

    if-gez p2, :cond_b

    const/4 v5, 0x1

    const-wide v6, 0x4202a05f20000000L    # 1.0E10

    const/16 v8, 0x42

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_b
    const-wide p0, 0x42374876e8000000L    # 1.0E11

    cmpg-double p2, v3, p0

    if-gez p2, :cond_c

    const/4 v5, 0x2

    const-wide v6, 0x42374876e8000000L    # 1.0E11

    const/16 v8, 0x42

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto/16 :goto_2

    :cond_c
    const-wide p0, 0x426d1a94a2000000L    # 1.0E12

    cmpg-double p2, v3, p0

    if-gez p2, :cond_d

    const/4 v5, 0x0

    const-wide v6, 0x426d1a94a2000000L    # 1.0E12

    const/16 v8, 0x42

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_d
    const-wide p0, 0x42a2309ce5400000L    # 1.0E13

    cmpg-double p2, v3, p0

    if-gez p2, :cond_e

    const/4 v5, 0x1

    const-wide v6, 0x42a2309ce5400000L    # 1.0E13

    const/16 v8, 0x54

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_e
    const-wide p0, 0x42d6bcc41e900000L    # 1.0E14

    cmpg-double p2, v3, p0

    if-gez p2, :cond_f

    const/4 v5, 0x2

    const-wide v6, 0x42d6bcc41e900000L    # 1.0E14

    const/16 v8, 0x54

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_f
    const-wide p0, 0x430c6bf526340000L    # 1.0E15

    cmpg-double p2, v3, p0

    if-gez p2, :cond_10

    const/4 v5, 0x0

    const-wide v6, 0x430c6bf526340000L    # 1.0E15

    const/16 v8, 0x54

    invoke-static/range {v3 .. v8}, Lcom/prineside/tdi2/utils/StringFormatter;->a(DIDC)V

    goto :goto_2

    :cond_10
    const/4 p0, 0x0

    :goto_1
    cmpl-double p1, v3, v5

    if-ltz p1, :cond_11

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    div-double/2addr v3, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_11
    sget-object p1, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    double-to-int p2, v3

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_12
    :goto_2
    if-eqz v2, :cond_13

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_13
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method

.method public static digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static digestTime(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    div-int/lit8 v1, p0, 0x3c

    div-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v2, v1, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    sub-int v2, p0, v2

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    const/16 v3, 0x3a

    const/16 v4, 0x30

    const/16 v5, 0xa

    if-nez p1, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-ge v1, v5, :cond_1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_2
    if-ge v2, v5, :cond_3

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    if-ge p0, v5, :cond_4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static distinguishableString(I)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x21

    new-array v0, v0, [C

    if-gez p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-nez v1, :cond_1

    neg-int p0, p0

    :cond_1
    :goto_1
    const/16 v3, -0x20

    const-string v4, "23456789ABCDEFGHJKLMNPQRSTUVWXYZ"

    if-gt p0, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    rem-int/lit8 v5, p0, 0x20

    neg-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v2

    div-int/lit8 p0, p0, 0x20

    move v2, v3

    goto :goto_1

    :cond_2
    neg-int p0, p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    aput-char p0, v0, v2

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, -0x1

    const/16 p0, 0x2d

    aput-char p0, v0, v2

    :cond_3
    new-instance p0, Ljava/lang/String;

    rsub-int/lit8 v1, v2, 0x21

    invoke-direct {p0, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static fitToWidth(Ljava/lang/CharSequence;FLcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->j:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    const-string v1, ""

    invoke-direct {v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->j:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->j:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_1

    return-object p0

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    sget-object v4, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, p2, v4}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-object p1, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {p1, p0, v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p1
.end method

.method public static fromBase64(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read base64"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static fromCompactBase64(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->c:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read compact base64"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static fromCompactBytes([BII)Ljava/io/ByteArrayOutputStream;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->finished()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/prineside/tdi2/utils/StringFormatter;->c:[B

    invoke-virtual {p0, p1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to read compact base64"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x3fbf9adbb8f8da72L    # 0.1234567

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x3ff1f9adbb8f8da7L    # 1.1234567

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x40243f35b771f1b5L    # 10.1234567

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v1, 0x405907e6b6ee3e37L    # 100.1234567

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static md5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/prineside/tdi2/utils/StringFormatter;->b()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static romanNumber(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->a:[Ljava/lang/String;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static stringFromCompactBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->g:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->c:[B

    invoke-virtual {p0, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->reset()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to read compact base64"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static stringToCompactBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    array-length v0, v0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    array-length v0, p0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->f:Ljava/util/zip/Deflater;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    sget-object v3, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    invoke-static {v1, v2, p0, v3}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static timePassed(IZZ)Ljava/lang/String;
    .locals 6

    if-gtz p0, :cond_0

    const-string p0, "-"

    return-object p0

    :cond_0
    div-int/lit8 v0, p0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    div-int/lit8 v0, v0, 0x18

    if-eqz p2, :cond_1

    mul-int/lit8 v1, v0, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x18

    sub-int/2addr p0, v1

    :cond_1
    div-int/lit8 v1, p0, 0x3c

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit16 v2, p0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    const-string v3, " "

    const-string v4, ""

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "TIME_CHAR_DAY"

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v4

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "TIME_CHAR_HOUR"

    invoke-virtual {p2, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    if-gtz v1, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "TIME_CHAR_MINUTE"

    invoke-virtual {p2, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_6
    if-nez p0, :cond_7

    if-eqz p1, :cond_8

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p0, p0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p0, p0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string p2, "TIME_CHAR_SECOND"

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBase64([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    invoke-static {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toCompactBase64([BII)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    array-length v0, v0

    array-length v1, p0

    if-ge v0, v1, :cond_0

    array-length v0, p0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->f:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/Deflater;->setInput([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    new-instance p1, Ljava/lang/String;

    sget-object p2, Lcom/prineside/tdi2/utils/StringFormatter;->e:[B

    const/4 v0, 0x0

    sget-object v1, Lcom/badlogic/gdx/utils/Base64Coder;->regularMap:Lcom/badlogic/gdx/utils/Base64Coder$CharMap;

    invoke-static {p2, v0, p0, v1}, Lcom/badlogic/gdx/utils/Base64Coder;->encode([BIILcom/badlogic/gdx/utils/Base64Coder$CharMap;)[C

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public static toLowerCase(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method

.method public static toRGB(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    iget p0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float p0, p0, v1

    float-to-int p0, p0

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method

.method public static toUpperCase(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/tdi2/utils/StringFormatter;->b:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object p0
.end method
