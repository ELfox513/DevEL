.class public Lcom/esotericsoftware/kryo/util/MapReferenceResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/ReferenceResolver;


# instance fields
.field public final a:I

.field public kryo:Lcom/esotericsoftware/kryo/Kryo;

.field public final readObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final writtenObjects:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->writtenObjects:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    iput p1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->a:I

    return-void
.end method


# virtual methods
.method public addWrittenObject(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->writtenObjects:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    iget v1, v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    return v1
.end method

.method public getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWrittenId(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->writtenObjects:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public nextReadId(Ljava/lang/Class;)I
    .locals 2

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget v1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->a:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->writtenObjects:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    iget v1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->a:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->clear(I)V

    return-void
.end method

.method public setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method

.method public setReadObject(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public useReferences(Ljava/lang/Class;)Z
    .locals 1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isWrapperClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isEnum(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
