.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatChannel"
.end annotation


# instance fields
.field public final synthetic b:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

.field public data:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->b:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    mul-int p4, p4, p3

    new-array p4, p4, [F

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 4

    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->b:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int v0, v0, p1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget-object v3, p2, v1

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int v0, v0, p1

    new-array p1, v0, [F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    return-void
.end method

.method public swap(II)V
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    mul-int p1, p1, v0

    mul-int p2, p2, v0

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v2, v1, p1

    aget v3, v1, p2

    aput v3, v1, p1

    aput v2, v1, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
