.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;,
        Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">;"
        }
    .end annotation
.end field

.field public capacity:I

.field public size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$IntChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V

    return-object v0

    :cond_1
    new-instance v6, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;

    iget v2, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;IIILjava/lang/Class;)V

    return-object v6
.end method

.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object p1

    return-object p1
.end method

.method public addChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelInitializer;->init(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public varargs addElement([Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    invoke-virtual {v2, v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->add(I[Ljava/lang/Object;)V

    iget v2, v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->strideSize:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Capacity reached, cannot add other elements"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    return-void
.end method

.method public getChannel(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;)Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;",
            ">(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    iget v2, v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->id:I

    iget v3, p1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeArray(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return-void
.end method

.method public removeElement(I)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->swap(II)V

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    return-void
.end method

.method public setCapacity(I)V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->setCapacity(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->capacity:I

    :cond_1
    return-void
.end method
