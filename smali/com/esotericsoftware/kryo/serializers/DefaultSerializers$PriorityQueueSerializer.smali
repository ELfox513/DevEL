.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;
.super Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityQueueSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<",
        "Ljava/util/PriorityQueue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;I",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/PriorityQueue;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const-class v1, Ljava/util/PriorityQueue;

    if-eq p1, v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/Comparator;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    aput-object p3, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/PriorityQueue;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1, p2, p3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/PriorityQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/PriorityQueue;",
            ">;I)",
            "Ljava/util/PriorityQueue;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-virtual {p0, p3, p4, p1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;->a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    check-cast p2, Ljava/util/PriorityQueue;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/PriorityQueue;)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/PriorityQueue;)Ljava/util/PriorityQueue;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;->a(Ljava/lang/Class;ILjava/util/Comparator;)Ljava/util/PriorityQueue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V
    .locals 0

    check-cast p3, Ljava/util/PriorityQueue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/PriorityQueue;)V

    return-void
.end method

.method public writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/PriorityQueue;)V
    .locals 0

    invoke-virtual {p3}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
