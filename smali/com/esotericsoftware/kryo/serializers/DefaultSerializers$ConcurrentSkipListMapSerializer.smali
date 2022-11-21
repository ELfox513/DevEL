.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;
.super Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConcurrentSkipListMapSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/MapSerializer<",
        "Ljava/util/concurrent/ConcurrentSkipListMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/concurrent/ConcurrentSkipListMap;",
            ">;",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/concurrent/ConcurrentSkipListMap;"
        }
    .end annotation

    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/Comparator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_1
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentSkipListMap;
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
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method

.method public bridge synthetic create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object p1

    return-object p1
.end method

.method public create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/concurrent/ConcurrentSkipListMap;",
            ">;I)",
            "Ljava/util/concurrent/ConcurrentSkipListMap;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-virtual {p0, p3, p1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;->a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    check-cast p2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/concurrent/ConcurrentSkipListMap;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object p1

    return-object p1
.end method

.method public createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/concurrent/ConcurrentSkipListMap;)Ljava/util/concurrent/ConcurrentSkipListMap;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;->a(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .locals 0

    check-cast p3, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/concurrent/ConcurrentSkipListMap;)V

    return-void
.end method

.method public writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/concurrent/ConcurrentSkipListMap;)V
    .locals 0

    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
