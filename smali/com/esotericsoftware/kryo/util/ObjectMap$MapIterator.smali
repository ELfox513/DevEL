.class abstract Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/util/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public d:I

.field public hasNext:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->k:Z

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v0, v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->a:[Ljava/lang/Object;

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    if-ge v2, v1, :cond_1

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 8

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->d:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget-object v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->a:[Ljava/lang/Object;

    iget-object v3, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->b:[Ljava/lang/Object;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v1

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v1

    sub-int v6, v0, v6

    and-int/2addr v6, v1

    if-le v7, v6, :cond_0

    aput-object v5, v2, v0

    aget-object v5, v3, v4

    aput-object v5, v3, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aput-object v1, v2, v0

    aput-object v1, v3, v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->a:Lcom/esotericsoftware/kryo/util/ObjectMap;

    iget v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->d:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->d:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->d:I

    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->b:I

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;->e()V

    return-void
.end method
