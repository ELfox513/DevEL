.class public Lcom/prineside/tdi2/utils/IntRectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public maxX:I

.field public maxY:I

.field public minX:I

.field public minY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iput p2, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iput p3, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iput p4, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    if-gt p1, p2, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public extendToContain(II)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    if-ge p2, v0, :cond_1

    iput p2, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    if-le p1, v0, :cond_2

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    :cond_2
    iget p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    if-le p2, p1, :cond_3

    iput p2, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    :cond_3
    return-void
.end method

.method public extendToContain(Lcom/prineside/tdi2/utils/IntRectangle;)V
    .locals 2

    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iget v1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    if-ge v0, v1, :cond_0

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    :cond_0
    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iget v1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    if-ge v0, v1, :cond_1

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    :cond_1
    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget v1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    if-le v0, v1, :cond_2

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    :cond_2
    iget p1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    if-le p1, v0, :cond_3

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    :cond_3
    return-void
.end method

.method public overlaps(IIII)Z
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    if-ge v0, p3, :cond_0

    iget p3, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    if-le p3, p1, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    if-ge p1, p4, :cond_0

    iget p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public overlaps(Lcom/prineside/tdi2/utils/IntRectangle;)Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iget v1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget v1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iget v1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iget p1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public set(IIII)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iput p2, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iput p3, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iput p4, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    return-void
.end method

.method public set(Lcom/prineside/tdi2/utils/IntRectangle;)V
    .locals 1

    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minX:I

    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxX:I

    iget v0, p1, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iput v0, p0, Lcom/prineside/tdi2/utils/IntRectangle;->minY:I

    iget p1, p1, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    iput p1, p0, Lcom/prineside/tdi2/utils/IntRectangle;->maxY:I

    return-void
.end method
