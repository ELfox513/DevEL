.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$PackStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuillotineStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;
    .locals 9

    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->full:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v4, v2, v3

    if-nez v4, :cond_3

    iget v4, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_3

    return-object p1

    :cond_3
    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;-><init>()V

    iput-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rightChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v3, v2

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v4

    sub-int/2addr v3, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v5

    iget v7, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v8, v7

    sub-int/2addr v6, v8

    if-le v3, v6, :cond_5

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v4, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v5, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_0

    :cond_5
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v2, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v7, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    :goto_0
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->leftChild:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public pack(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Ljava/lang/String;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .locals 4

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->w:Lcom/badlogic/gdx/utils/Array;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->q:I

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v0

    iput v1, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v1, p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;->f:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-virtual {p0, v1, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->w:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$GuillotinePage;->f:Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    invoke-virtual {p0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;

    move-result-object v1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->full:Z

    iget-object p1, v1, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$Node;->rect:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v0

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr p1, v0

    invoke-virtual {p3, v1, v2, v3, p1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    return-object p2
.end method

.method public sort(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a:Ljava/util/Comparator;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$GuillotineStrategy;->a:Ljava/util/Comparator;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-void
.end method
