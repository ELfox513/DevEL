.class public Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/MapSerializer$BindMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Map;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Class;

.field public d:Ljava/lang/Class;

.field public e:Lcom/esotericsoftware/kryo/Serializer;

.field public f:Lcom/esotericsoftware/kryo/Serializer;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->g:Z

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->h:Z

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Serializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;I)TT;"
        }
    .end annotation

    const-class p2, Ljava/util/HashMap;

    if-ne p3, p2, :cond_2

    const/4 p1, 0x3

    if-ge p4, p1, :cond_0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    if-ge p4, p1, :cond_1

    int-to-float p1, p4

    const/high16 p2, 0x3f400000    # 0.75f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-int p4, p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(I)V

    return-object p1

    :cond_2
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public getKeySerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->e:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueSerializer()Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->f:Lcom/esotericsoftware/kryo/Serializer;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->d:Ljava/lang/Class;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->e:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->f:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-interface {v6}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    aget-object v8, v6, v7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p1, v8}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    move-object v2, v8

    :cond_2
    if-nez v5, :cond_3

    aget-object v0, v6, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v5

    move-object v3, v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_a

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-interface {v8, v9}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    :cond_4
    if-eqz v4, :cond_6

    iget-boolean v8, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->g:Z

    if-eqz v8, :cond_5

    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_5
    invoke-virtual {p1, p2, v2, v4}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_6
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v9

    invoke-interface {v9}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    :cond_7
    if-eqz v5, :cond_9

    iget-boolean v9, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->h:Z

    if-eqz v9, :cond_8

    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :cond_8
    invoke-virtual {p1, p2, v3, v5}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    :cond_9
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v9

    :goto_2
    invoke-interface {p3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    return-object p3
.end method

.method public setKeyClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->c:Ljava/lang/Class;

    return-void
.end method

.method public setKeyClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->c:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->e:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setKeySerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->e:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setKeysCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->g:Z

    return-void
.end method

.method public setValueClass(Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->d:Ljava/lang/Class;

    return-void
.end method

.method public setValueClass(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->d:Ljava/lang/Class;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->f:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setValueSerializer(Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->f:Lcom/esotericsoftware/kryo/Serializer;

    return-void
.end method

.method public setValuesCanBeNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->h:Z

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    return-void

    :cond_1
    add-int/2addr v1, v2

    invoke-virtual {p2, v1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->e:Lcom/esotericsoftware/kryo/Serializer;

    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->f:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v4

    invoke-interface {v4}, Lcom/esotericsoftware/kryo/util/Generics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    aget-object v5, v4, v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    :cond_2
    if-nez v3, :cond_3

    aget-object v2, v4, v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Lcom/esotericsoftware/kryo/util/Generics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    :cond_4
    if-eqz v1, :cond_6

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->g:Z

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object v5

    invoke-interface {v5}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    :cond_7
    if-eqz v3, :cond_9

    iget-boolean v5, p0, Lcom/esotericsoftware/kryo/serializers/MapSerializer;->h:Z

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    goto :goto_0

    :cond_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Kryo;->getGenerics()Lcom/esotericsoftware/kryo/util/Generics;

    move-result-object p1

    invoke-interface {p1}, Lcom/esotericsoftware/kryo/util/Generics;->popGenericType()V

    return-void
.end method

.method public writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method
