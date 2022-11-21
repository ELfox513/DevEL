.class public Lcom/esotericsoftware/kryonet/util/ObjectIntMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static k:Ljava/util/Random;


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field public b:[I

.field public c:I

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->nextPowerOfTwo(I)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e:F

    int-to-float v0, p1

    mul-float v0, v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f:I

    const/4 p1, 0x3

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i:I

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->j:I

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i:I

    add-int/2addr p1, p2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFactor must be > 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialCapacity is too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialCapacity must be >= 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryonet/util/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryonet/util/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    iget v0, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v1, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e:F

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;-><init>(IF)V

    iget v0, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    iget-object v0, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p2, p1, v1

    add-int/2addr p3, p2

    aput p3, p1, v1

    return p2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p3, p2

    invoke-virtual {p0, p1, p3}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    return p2
.end method

.method public final c(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v1, v2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, v0, v2

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    return-void
.end method

.method public clear(I)V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public containsValue(I)Z
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v1, v2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 1

    const v0, -0x4b47d1c7

    mul-int p1, p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr p1, v0

    return p1
.end method

.method public final e(I)I
    .locals 1

    const v0, -0x312e3dbf

    mul-int p1, p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f:I

    ushr-int v0, p1, v0

    xor-int/2addr p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr p1, v0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt v0, p1, :cond_0

    int-to-float p1, v0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->nextPowerOfTwo(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IITK;ITK;ITK;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget v3, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    iget v4, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->j:I

    const/4 v5, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    const/4 v13, 0x0

    :goto_0
    sget-object v14, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k:Ljava/util/Random;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    if-eq v14, v15, :cond_0

    aget v7, v2, v11

    aput-object v5, v1, v11

    aput v6, v2, v11

    move v6, v7

    move-object v5, v12

    goto :goto_1

    :cond_0
    aget v7, v2, v9

    aput-object v5, v1, v9

    aput v6, v2, v9

    move v6, v7

    move-object v5, v10

    goto :goto_1

    :cond_1
    aget v9, v2, v7

    aput-object v5, v1, v7

    aput v6, v2, v7

    move-object v5, v8

    move v6, v9

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    and-int v8, v7, v3

    aget-object v9, v1, v8

    if-nez v9, :cond_3

    aput-object v5, v1, v8

    aput v6, v2, v8

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt v1, v2, :cond_2

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v10

    aget-object v11, v1, v10

    if-nez v11, :cond_5

    aput-object v5, v1, v10

    aput v6, v2, v10

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt v1, v2, :cond_4

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v7

    aget-object v12, v1, v7

    if-nez v12, :cond_7

    aput-object v5, v1, v7

    aput v6, v2, v7

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget v2, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt v1, v2, :cond_6

    iget v1, v0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_6
    return-void

    :cond_7
    add-int/2addr v13, v15

    if-ne v13, v4, :cond_8

    invoke-virtual {v0, v5, v6}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h(Ljava/lang/Object;I)V

    return-void

    :cond_8
    move-object/from16 v16, v11

    move v11, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move-object/from16 v10, v16

    goto/16 :goto_0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v1, v2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    aget v1, v0, v2

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, v2

    return-object p1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g(Ljava/lang/Object;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int v5, v0, v1

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v6, v1, v5

    if-nez v6, :cond_1

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v5

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_0

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v7

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v8, v1, v7

    if-nez v8, :cond_3

    aput-object p1, v1, v7

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v7

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_2

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v9

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v10, v0, v9

    if-nez v10, :cond_5

    aput-object p1, v0, v9

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v9

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_4

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_4
    return-void

    :cond_5
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v1

    return p1
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b(Ljava/lang/Object;II)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p2, p1, v1

    add-int/2addr p3, p2

    aput p3, p1, v1

    return p2
.end method

.method public final h(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    return-void

    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return-void
.end method

.method public i(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->j(I)V

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public j(I)V
    .locals 3

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget v1, v0, v1

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 5

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v0, v1

    iput p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    int-to-float v1, p1

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i:I

    const/16 v3, 0x8

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    div-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->j:I

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget v3, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i:I

    add-int v4, p1, v3

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    add-int/2addr p1, v3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iput v3, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    if-lez p1, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object p1, v1, v3

    if-eqz p1, :cond_0

    aget v4, v2, v3

    invoke-virtual {p0, p1, v4}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int v6, v1, v2

    aget-object v7, v0, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v6

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v8

    aget-object v9, v0, v8

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v8

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v10

    aget-object v11, v0, v10

    invoke-virtual {p1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v10

    return-void

    :cond_2
    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    iget v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d:I

    add-int/2addr v2, v1

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v1

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_6

    aput-object p1, v0, v6

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v6

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_5

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_5
    return-void

    :cond_6
    if-nez v9, :cond_8

    aput-object p1, v0, v8

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v8

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_7

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_7
    return-void

    :cond_8
    if-nez v11, :cond_a

    aput-object p1, v0, v10

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aput p2, p1, v10

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->h:I

    if-lt p1, p2, :cond_9

    iget p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    :cond_9
    return-void

    :cond_a
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v11}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->f(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->g:I

    and-int/2addr v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aput-object v3, p1, v1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v1

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aput-object v3, p1, v1

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v1

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return p1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    iget-object p1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    aget p1, p1, v0

    iget p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->i(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->c:I

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->nextPowerOfTwo(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->k(I)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->a:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/ObjectIntMap;->b:[I

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_2

    aget-object v3, v1, v4

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_4

    aget-object v4, v1, v3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    move v4, v3

    goto :goto_1

    :cond_4
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
