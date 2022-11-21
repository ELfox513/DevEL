.class public Lcom/badlogic/gdx/ai/utils/CircularBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    iput p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    array-length v1, v0

    iget v3, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    iput-object p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    :goto_0
    add-int/lit8 v5, v2, 0x1

    aput-object v3, v0, v2

    if-lt v5, v1, :cond_0

    goto :goto_3

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    if-lez v1, :cond_3

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iput v4, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    iput v4, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    iput v4, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    array-length p1, p1

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a(I)V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    iget-object v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResizable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->b:Z

    return v0
.end method

.method public read()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    aget-object v3, v0, v2

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    array-length v0, v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->c:I

    :cond_0
    return-object v3

    :cond_1
    return-object v1
.end method

.method public setResizable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->b:Z

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    return v0
.end method

.method public store(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    iget-object v1, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->b:Z

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/16 v0, 0x8

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a(I)V

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->e:I

    iget-object v0, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    aput-object p1, v0, v2

    array-length p1, v0

    if-ne v4, p1, :cond_2

    iput v3, p0, Lcom/badlogic/gdx/ai/utils/CircularBuffer;->d:I

    :cond_2
    return v1
.end method
