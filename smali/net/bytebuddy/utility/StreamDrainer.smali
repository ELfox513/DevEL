.class public Lnet/bytebuddy/utility/StreamDrainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

.field public static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final END_OF_STREAM:I = -0x1

.field private static final FROM_BEGINNING:I


# instance fields
.field private final bufferSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/bytebuddy/utility/StreamDrainer;

    invoke-direct {v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>()V

    sput-object v0, Lnet/bytebuddy/utility/StreamDrainer;->DEFAULT:Lnet/bytebuddy/utility/StreamDrainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lnet/bytebuddy/utility/StreamDrainer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    return-void
.end method


# virtual methods
.method public drain(Ljava/io/InputStream;)[B
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    iget v4, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v3, v5

    iget v5, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    new-array v1, v1, [B

    const/4 v3, 0x0

    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget v4, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int p1, p1, v4

    add-int/2addr p1, v3

    new-array p1, p1, [B

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int v4, v4, v7

    invoke-static {v5, v2, p1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_0

    :cond_2
    iget v0, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    mul-int v4, v4, v0

    invoke-static {v1, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    check-cast p1, Lnet/bytebuddy/utility/StreamDrainer;

    iget p1, p1, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/utility/StreamDrainer;->bufferSize:I

    add-int/2addr v0, v1

    return v0
.end method
