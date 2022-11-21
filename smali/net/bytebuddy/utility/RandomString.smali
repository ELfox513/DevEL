.class public Lnet/bytebuddy/utility/RandomString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_LENGTH:I = 0x8

.field private static final KEY_BITS:I

.field private static final SYMBOL:[C


# instance fields
.field private final length:I

.field private final random:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    sub-int/2addr v1, v0

    sput v1, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/utility/RandomString;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    iput-object p2, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A random string\'s length cannot be zero or negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static hashOf(I)Ljava/lang/String;
    .locals 8

    sget v0, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    const/16 v1, 0x20

    div-int v2, v1, v0

    rem-int v0, v1, v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    add-int/2addr v2, v0

    new-array v0, v2, [C

    :goto_1
    if-ge v3, v2, :cond_1

    sget-object v4, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    sget v5, Lnet/bytebuddy/utility/RandomString;->KEY_BITS:I

    mul-int v6, v3, v5

    ushr-int v6, p0, v6

    const/4 v7, -0x1

    rsub-int/lit8 v5, v5, 0x20

    ushr-int v5, v7, v5

    and-int/2addr v5, v6

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static hashOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    :goto_0
    invoke-static {p0}, Lnet/bytebuddy/utility/RandomString;->hashOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static make()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lnet/bytebuddy/utility/RandomString;->make(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static make(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v0, p0}, Lnet/bytebuddy/utility/RandomString;-><init>(I)V

    invoke-virtual {v0}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public nextString()Ljava/lang/String;
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Random value is used on each invocation."
        value = {
            "DMI_RANDOM_USED_ONLY_ONCE"
        }
    .end annotation

    iget v0, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/bytebuddy/utility/RandomString;->length:I

    if-ge v1, v2, :cond_0

    sget-object v2, Lnet/bytebuddy/utility/RandomString;->SYMBOL:[C

    iget-object v3, p0, Lnet/bytebuddy/utility/RandomString;->random:Ljava/util/Random;

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
