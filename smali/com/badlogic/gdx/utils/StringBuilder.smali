.class public Lcom/badlogic/gdx/utils/StringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field public static final a:[C


# instance fields
.field public chars:[C

.field public length:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NegativeArraySizeException;

    invoke-direct {p1}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v1, v0, 0x10

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public static numChars(II)I
    .locals 1

    if-gez p0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    div-int/2addr p0, p1

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static numChars(JI)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-long v3, p2

    div-long/2addr p0, v3

    cmp-long v3, p0, v0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final a(C)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char p1, v0, v1

    return-void
.end method

.method public append(C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    return-object p0
.end method

.method public append(D)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(F)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(IIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 6

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    neg-int p1, p1

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xa

    if-le p2, v0, :cond_2

    invoke-static {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(II)I

    move-result v0

    sub-int/2addr p2, v0

    :goto_0
    if-lez p2, :cond_2

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x2710

    if-lt p1, p2, :cond_8

    const p3, 0x3b9aca00

    if-lt p1, p3, :cond_3

    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    int-to-long v2, p1

    const-wide v4, 0x2540be400L

    rem-long/2addr v2, v4

    const-wide/32 v4, 0x3b9aca00

    div-long/2addr v2, v4

    long-to-int v3, v2

    aget-char v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_3
    const v0, 0x5f5e100

    if-lt p1, v0, :cond_4

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int p3, p1, p3

    div-int/2addr p3, v0

    aget-char p3, v2, p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_4
    const p3, 0x989680

    if-lt p1, p3, :cond_5

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int v0, p1, v0

    div-int/2addr v0, p3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_5
    const v0, 0xf4240

    if-lt p1, v0, :cond_6

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int p3, p1, p3

    div-int/2addr p3, v0

    aget-char p3, v2, p3

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_6
    const p3, 0x186a0

    if-lt p1, p3, :cond_7

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int v0, p1, v0

    div-int/2addr v0, p3

    aget-char v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_7
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int p3, p1, p3

    div-int/2addr p3, p2

    aget-char p2, v0, p3

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_8
    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_9

    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int/lit16 v0, p1, 0x2710

    div-int/2addr v0, p2

    aget-char p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_9
    const/16 p2, 0x64

    if-lt p1, p2, :cond_a

    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int/lit16 v0, p1, 0x3e8

    div-int/2addr v0, p2

    aget-char p2, p3, v0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_a
    if-lt p1, v1, :cond_b

    sget-object p2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int/lit8 p3, p1, 0x64

    div-int/2addr p3, v1

    aget-char p2, p2, p3

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_b
    sget-object p2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-int/2addr p1, v1

    aget-char p1, p2, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    return-object p0
.end method

.method public append(J)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JI)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(JI)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    const/16 v0, 0x30

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(JIC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-string p1, "-9223372036854775808"

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    neg-long p1, p1

    :cond_1
    const/4 v0, 0x1

    if-le p3, v0, :cond_2

    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->numChars(JI)I

    move-result v0

    sub-int/2addr p3, v0

    :goto_0
    if-lez p3, :cond_2

    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    const-wide/16 p3, 0x2710

    cmp-long v0, p1, p3

    if-ltz v0, :cond_11

    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    long-to-double v3, p1

    const-wide v5, 0x43e158e460913d00L    # 1.0E19

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v3, v5

    const-wide v5, 0x43abc16d674ec800L    # 1.0E18

    div-double/2addr v3, v5

    double-to-int v3, v3

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_3
    const-wide v2, 0x16345785d8a0000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_4

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_4
    const-wide v0, 0x2386f26fc10000L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_5

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_5
    const-wide v2, 0x38d7ea4c68000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_6

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_6
    const-wide v0, 0x5af3107a4000L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_7
    const-wide v2, 0x9184e72a000L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_8

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_8
    const-wide v0, 0xe8d4a51000L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_9

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_9
    const-wide v2, 0x174876e800L

    cmp-long v4, p1, v2

    if-ltz v4, :cond_a

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_a
    const-wide v0, 0x2540be400L

    cmp-long v4, p1, v0

    if-ltz v4, :cond_b

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_b
    const-wide/32 v2, 0x3b9aca00

    cmp-long v4, p1, v2

    if-ltz v4, :cond_c

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_c
    const-wide/32 v0, 0x5f5e100

    cmp-long v4, p1, v0

    if-ltz v4, :cond_d

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_d
    const-wide/32 v2, 0x989680

    cmp-long v4, p1, v2

    if-ltz v4, :cond_e

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_e
    const-wide/32 v0, 0xf4240

    cmp-long v4, p1, v0

    if-ltz v4, :cond_f

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v2, p1, v2

    div-long/2addr v2, v0

    long-to-int v3, v2

    aget-char v2, v4, v3

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_f
    const-wide/32 v2, 0x186a0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_10

    sget-object v4, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    aget-char v0, v4, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_10
    sget-object v0, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v1, p1, v2

    div-long/2addr v1, p3

    long-to-int v2, v1

    aget-char v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_11
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_12

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long p3, p1, p3

    div-long/2addr p3, v0

    long-to-int p4, p3

    aget-char p3, v2, p4

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_12
    const-wide/16 p3, 0x64

    cmp-long v2, p1, p3

    if-ltz v2, :cond_13

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long v0, p1, v0

    div-long/2addr v0, p3

    long-to-int v1, v0

    aget-char v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_13
    const-wide/16 v0, 0xa

    cmp-long v2, p1, v0

    if-ltz v2, :cond_14

    sget-object v2, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long p3, p1, p3

    div-long/2addr p3, v0

    long-to-int p4, p3

    aget-char p3, v2, p4

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    :cond_14
    sget-object p3, Lcom/badlogic/gdx/utils/StringBuilder;->a:[C

    rem-long/2addr p1, v0

    long-to-int p2, p1

    aget-char p1, p3, p2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->e([CII)V

    :goto_0
    return-object p0
.end method

.method public append(Lcom/badlogic/gdx/utils/StringBuilder;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->f()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->e([CII)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->f()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v1, 0x0

    iget p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->e([CII)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->b(Ljava/lang/CharSequence;II)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public append(Z)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public append([C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->d([C)V

    return-object p0
.end method

.method public append([CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->e([CII)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendCodePoint(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->d([C)V

    return-object p0
.end method

.method public appendLine(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->a(C)V

    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;II)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->f()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method public capacity()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method public codePointAt(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p1, v0}, Ljava/lang/Character;->codePointAt([CII)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointBefore(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public codePointCount(II)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsIgnoreCase(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOfIgnoreCase(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final d([C)V
    .locals 5

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void
.end method

.method public delete(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->g(II)V

    return-object p0
.end method

.method public deleteCharAt(I)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->h(I)V

    return-object p0
.end method

.method public final e([CII)V
    .locals 3

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length out of bounds: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Offset out of bounds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_1

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/utils/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget-char v5, v3, v4

    aget-char v6, p1, v4

    if-eq v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public equalsIgnoreCase(Lcom/badlogic/gdx/utils/StringBuilder;)Z
    .locals 7
    .param p1    # Lcom/badlogic/gdx/utils/StringBuilder;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget v3, p1, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget-object p1, p1, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-char v5, v3, v4

    aget-char v6, p1, v4

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-char v4, v2, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final f()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x6e

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    aput-char v3, v0, v2

    return-void
.end method

.method public final g(II)V
    .locals 2

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    if-le p2, p1, :cond_3

    sub-int/2addr v0, p2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChars(II[CI)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final h(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final i(I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array p1, p1, [C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 10

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :cond_2
    :goto_0
    return p2

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-le p2, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/4 v5, 0x1

    if-gt p2, v2, :cond_6

    iget-object v6, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v6, v6, p2

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_7

    return v3

    :cond_7
    move v7, p2

    const/4 v6, 0x0

    :goto_3
    add-int/2addr v6, v5

    if-ge v6, v1, :cond_8

    iget-object v8, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v7, v5

    aget-char v8, v8, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_8

    goto :goto_3

    :cond_8
    if-ne v6, v1, :cond_5

    return p2
.end method

.method public indexOfIgnoreCase(Ljava/lang/String;I)I
    .locals 11

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-lt p2, p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    :cond_2
    :goto_0
    return p2

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, v1

    const/4 v3, -0x1

    if-le p2, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    :goto_1
    const/4 v6, 0x1

    if-gt p2, v2, :cond_7

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v7, v7, p2

    if-eq v7, v4, :cond_6

    if-ne v7, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_8

    return v3

    :cond_8
    move v8, p2

    const/4 v7, 0x0

    :cond_9
    add-int/2addr v7, v6

    if-ge v7, v1, :cond_a

    iget-object v9, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v8, v6

    aget-char v9, v9, v8

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    if-eq v9, v10, :cond_9

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    if-eq v9, v10, :cond_9

    :cond_a
    if-ne v7, v1, :cond_5

    return p2
.end method

.method public insert(IC)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->j(IC)V

    return-object p0
.end method

.method public insert(ID)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IF)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IJ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;II)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->k(ILjava/lang/CharSequence;II)V

    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(ILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(IZ)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-object p0
.end method

.method public insert(I[C)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->m(I[C)V

    return-object p0
.end method

.method public insert(I[CII)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/StringBuilder;->n(I[CII)V

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(IC)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->o(II)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v1, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public final k(ILjava/lang/CharSequence;II)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    if-gt p3, p4, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p4, v0, :cond_1

    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final l(ILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_2

    if-nez p2, :cond_0

    const-string p2, "null"

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->o(II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_1
    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, -0x1

    if-gt v0, v1, :cond_8

    if-ltz p2, :cond_8

    if-lez v0, :cond_6

    sub-int v3, v1, v0

    if-le p2, v3, :cond_0

    sub-int p2, v1, v0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    const/4 v1, 0x1

    if-ltz p2, :cond_2

    iget-object v5, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v5, v5, p2

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    return v2

    :cond_3
    move v6, p2

    const/4 v5, 0x0

    :goto_2
    add-int/2addr v5, v1

    if-ge v5, v0, :cond_4

    iget-object v7, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr v6, v1

    aget-char v7, v7, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    if-ne v5, v0, :cond_5

    return p2

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_6
    if-ge p2, v1, :cond_7

    goto :goto_3

    :cond_7
    move p2, v1

    :goto_3
    return p2

    :cond_8
    return v2
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return v0
.end method

.method public final m(I[C)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->o(II)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public final n(I[CII)V
    .locals 2

    if-ltz p1, :cond_2

    if-gt p1, p4, :cond_2

    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p3

    if-gt p4, v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->o(II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", char[].length "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(II)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    add-int/2addr p1, p2

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    add-int/2addr v2, p1

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    new-array v1, v2, [C

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/2addr p1, p2

    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    return-void
.end method

.method public offsetByCodePoints(II)I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result p1

    return p1
.end method

.method public final p(IILjava/lang/String;)V
    .locals 5

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-le p2, p1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int v3, p1, v0

    iget v4, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr v4, p2

    invoke-static {v2, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    neg-int v2, v1

    invoke-virtual {p0, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->o(II)V

    :cond_2
    :goto_0
    const/4 p2, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    invoke-virtual {p3, p2, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_3
    if-ne p1, p2, :cond_4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->l(ILjava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final q()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v1, -0x1

    iget-object v4, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v5, 0x0

    aget-char v6, v4, v5

    aget-char v4, v4, v3

    div-int/2addr v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    :goto_0
    if-ge v7, v1, :cond_7

    iget-object v10, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    add-int/lit8 v11, v7, 0x1

    aget-char v12, v10, v11

    add-int/lit8 v13, v3, -0x1

    aget-char v14, v10, v13

    const v5, 0xd800

    const v2, 0xdfff

    const v15, 0xdc00

    if-eqz v8, :cond_1

    if-lt v12, v15, :cond_1

    if-gt v12, v2, :cond_1

    if-lt v6, v5, :cond_1

    const v8, 0xdbff

    if-gt v6, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    iget v2, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    const/4 v15, 0x3

    if-ge v2, v15, :cond_2

    return-void

    :cond_2
    if-eqz v9, :cond_3

    if-lt v14, v5, :cond_3

    const v2, 0xdbff

    if-gt v14, v2, :cond_3

    const v2, 0xdc00

    if-lt v4, v2, :cond_3

    const v2, 0xdfff

    if-gt v4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ne v8, v2, :cond_5

    if-eqz v8, :cond_4

    aput-char v12, v10, v3

    aput-char v6, v10, v13

    aput-char v14, v10, v7

    aput-char v4, v10, v11

    add-int/lit8 v7, v7, 0x2

    aget-char v2, v10, v7

    add-int/lit8 v4, v3, -0x2

    aget-char v4, v10, v4

    add-int/lit8 v3, v3, -0x1

    move v6, v2

    move v7, v11

    goto :goto_3

    :cond_4
    aput-char v6, v10, v3

    aput-char v4, v10, v7

    move v6, v12

    move v4, v14

    :goto_3
    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    if-eqz v8, :cond_6

    aput-char v12, v10, v3

    aput-char v4, v10, v7

    move v4, v14

    const/4 v2, 0x1

    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    aput-char v6, v10, v3

    aput-char v14, v10, v7

    move v6, v12

    const/4 v2, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_5
    add-int/2addr v7, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    iget v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    if-eqz v8, :cond_8

    if-nez v9, :cond_a

    :cond_8
    iget-object v1, v0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move v4, v6

    :goto_6
    aput-char v4, v1, v3

    :cond_a
    return-void
.end method

.method public replace(CLjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->p(IILjava/lang/String;)V

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public replace(IILjava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/StringBuilder;->p(IILjava/lang/String;)V

    return-object p0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return-object p0

    :cond_0
    add-int v3, v2, v0

    invoke-virtual {p0, v2, v3, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->p(IILjava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public reverse()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->q()V

    return-object p0
.end method

.method public setCharAt(IC)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    aput-char p2, v0, p1

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setLength(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->i(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-ge v1, p1, :cond_1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(I)Ljava/lang/String;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-gt p2, v0, :cond_1

    if-ne p1, p2, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public toStringAndClear()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/StringBuilder;->clear()V

    return-object v0
.end method

.method public trimToSize()V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-array v2, v0, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/badlogic/gdx/utils/StringBuilder;->chars:[C

    :cond_0
    return-void
.end method
