.class public Lcom/prineside/tdi2/utils/FastRandom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[F

.field public static b:I

.field public static final random:Lcom/badlogic/gdx/math/RandomXS128;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/RandomXS128;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    const/16 v0, 0x2000

    new-array v1, v0, [F

    sput-object v1, Lcom/prineside/tdi2/utils/FastRandom;->a:[F

    const/4 v1, 0x0

    sput v1, Lcom/prineside/tdi2/utils/FastRandom;->b:I

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/tdi2/utils/FastRandom;->a:[F

    sget-object v3, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateUniqueDistinguishableId()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->distinguishableString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/RandomXS128;->setState(JJ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/prineside/tdi2/utils/FastRandom;->getDistinguishableString(ILcom/badlogic/gdx/math/RandomXS128;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, Lcom/prineside/tdi2/utils/FastRandom;->getDistinguishableString(ILcom/badlogic/gdx/math/RandomXS128;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDistinguishableString(ILcom/badlogic/gdx/math/RandomXS128;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result v2

    const-string v3, "23456789ABCDEFGHJKLMNPQRSTUVWXYZ"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFairFloat()F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static getFairInt(I)I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->random:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static getFloat()F
    .locals 2

    sget v0, Lcom/prineside/tdi2/utils/FastRandom;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/prineside/tdi2/utils/FastRandom;->b:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/prineside/tdi2/utils/FastRandom;->b:I

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/utils/FastRandom;->a:[F

    sget v1, Lcom/prineside/tdi2/utils/FastRandom;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public static getInt(I)I
    .locals 1

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v0

    int-to-float p0, p0

    mul-float v0, v0, p0

    float-to-int p0, v0

    return p0
.end method
