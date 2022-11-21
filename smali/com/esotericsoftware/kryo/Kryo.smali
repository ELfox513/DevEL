.class public Lcom/esotericsoftware/kryo/Kryo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    }
.end annotation


# static fields
.field public static final NOT_NULL:B = 0x1t

.field public static final NULL:B


# instance fields
.field public a:Lcom/esotericsoftware/kryo/SerializerFactory;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lcom/esotericsoftware/kryo/ClassResolver;

.field public e:I

.field public f:Ljava/lang/ClassLoader;

.field public g:Lv7/a;

.field public h:Z

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public volatile m:Ljava/lang/Thread;

.field public n:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field public o:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field public p:Lcom/esotericsoftware/kryo/ReferenceResolver;

.field public final q:Lcom/esotericsoftware/kryo/util/IntArray;

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/Object;

.field public u:I

.field public v:Z

.field public w:Lcom/esotericsoftware/kryo/util/IdentityMap;

.field public x:Ljava/lang/Object;

.field public y:Lcom/esotericsoftware/kryo/util/Generics;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V

    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$FieldSerializerFactory;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/SerializerFactory$FieldSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->a:Lcom/esotericsoftware/kryo/SerializerFactory;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->f:Ljava/lang/ClassLoader;

    new-instance v1, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->g:Lv7/a;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->h:Z

    const v2, 0x7fffffff

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->k:I

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    new-instance v2, Lcom/esotericsoftware/kryo/util/IntArray;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(I)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    new-instance v2, Lcom/esotericsoftware/kryo/util/DefaultGenerics;

    invoke-direct {v2, p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;-><init>(Lcom/esotericsoftware/kryo/Kryo;)V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->y:Lcom/esotericsoftware/kryo/util/Generics;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/ClassResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    iput-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    :cond_0
    const-class p1, [B

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ByteArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [C

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$CharArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [S

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ShortArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [I

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$IntArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [J

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [F

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$FloatArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [D

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$DoubleArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [Z

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$BooleanArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [Ljava/lang/String;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, [Ljava/lang/Object;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/math/BigInteger;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/math/BigDecimal;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/lang/Class;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Date;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/lang/Enum;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/EnumSet;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSetSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Currency;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/lang/StringBuffer;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBufferSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/lang/StringBuilder;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyListSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyMapSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptySetSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonListSerializer;

    invoke-virtual {p0, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonMapSerializer;

    invoke-virtual {p0, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonSetSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/TreeSet;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Collection;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/TreeMap;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Map;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/TimeZone;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Calendar;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/util/Locale;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/nio/charset/Charset;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharsetSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    const-class p1, Ljava/net/URL;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$URLSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ArraysAsListSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    const-class p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    const-class p1, Ljava/util/BitSet;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BitSetSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BitSetSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    const-class p1, Lcom/esotericsoftware/kryo/KryoSerializable;

    const-class p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    const-string p1, "java.lang.Record"

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-class p2, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->a(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->c:I

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    const-class p1, Ljava/lang/String;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance p2, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;

    invoke-direct {p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "classResolver cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 1

    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default serializer cannot be added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;-><init>(Lcom/esotericsoftware/kryo/Serializer;)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->c(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->c(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializerFactory cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->c(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializerClass cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 3

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->m:Ljava/lang/Thread;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->m:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Kryo must not be accessed concurrently by multiple threads."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->k:I

    if-eq v0, v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    return-void

    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max depth exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I
    .locals 4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->c:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->a:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    invoke-direct {v1, p1, p2}, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2
.end method

.method public copy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_3
    return-object v0

    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    :cond_5
    instance-of v0, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    :cond_7
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v0, "Copy"

    const/4 v2, -0x1

    invoke-static {v0, p1, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1
.end method

.method public copy(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    :cond_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_3
    return-object v0

    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    :cond_5
    instance-of v0, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    :cond_7
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p2, :cond_8

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-ne p2, v1, :cond_9

    :cond_8
    const-string p2, "Copy"

    const/4 v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-object p1

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1
.end method

.method public copyShallow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_1

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    return-object v2

    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    if-eqz v2, :cond_4

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    :cond_4
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    if-eqz v2, :cond_6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    :cond_6
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-ne v2, v1, :cond_8

    :cond_7
    const-string v2, "Shallow copy"

    const/4 v3, -0x1

    invoke-static {v2, p1, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    throw p1
.end method

.method public copyShallow(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_1

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    :cond_1
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    return-object v2

    :cond_3
    :try_start_1
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    if-eqz v2, :cond_4

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    :cond_4
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    :cond_6
    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p2, :cond_7

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-ne p2, v1, :cond_8

    :cond_7
    const-string p2, "Shallow copy"

    const/4 v2, -0x1

    invoke-static {p2, p1, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->v:Z

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    throw p1
.end method

.method public d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v0, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    if-nez p3, :cond_3

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 p3, 0x0

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p2, v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    const-string p2, "Read"

    invoke-static {p2, p3, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_2
    iput-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;

    return v1

    :cond_3
    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget p1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return p1

    :cond_4
    if-nez v0, :cond_5

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget p1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return p1

    :cond_5
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    :cond_6
    const-string v0, ": "

    const-string v4, "kryo"

    if-ne p3, v3, :cond_9

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read: <not null>"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {p3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->nextReadId(Ljava/lang/Class;)I

    move-result p3

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read initial reference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget p1, p1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return p1

    :cond_9
    add-int/2addr p3, v2

    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v2, p2, p3}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read reference "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;

    invoke-static {p3}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve reference for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p3

    const-string v2, "Write"

    invoke-static {v2, p2, p3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return v1

    :cond_2
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "Write: <not null>"

    const-string v4, "kryo"

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p3

    invoke-static {p3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    :cond_4
    return v0

    :cond_5
    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {p3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getWrittenId(Ljava/lang/Object;)I

    move-result p3

    const/4 v2, -0x1

    const-string v5, ": "

    if-eq p3, v2, :cond_7

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write reference "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p3, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return v1

    :cond_7
    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {p3, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->addWrittenObject(Ljava/lang/Object;)I

    move-result p3

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write initial reference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->f:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    return-object v0
.end method

.method public getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->n:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->n:Lcom/esotericsoftware/kryo/util/ObjectMap;

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->n:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializerForAnnotatedType(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    iget-object v3, v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->a:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->b:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v3, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->b:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDefaultSerializerForAnnotatedType(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 2

    const-class v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/DefaultSerializer;->serializerFactory()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/DefaultSerializer;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/esotericsoftware/kryo/util/Util;->newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/SerializerFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    return v0
.end method

.method public getGenerics()Lcom/esotericsoftware/kryo/util/Generics;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->y:Lcom/esotericsoftware/kryo/util/Generics;

    return-object v0
.end method

.method public getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->o:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->o:Lcom/esotericsoftware/kryo/util/ObjectMap;

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->o:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getInstantiatorStrategy()Lv7/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->g:Lv7/a;

    return-object v0
.end method

.method public getNextRegistrationId()I
    .locals 2

    :goto_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->e:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, v0}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->e:I

    return v0

    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->e:I

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "No registration IDs are available."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getOriginalToCopyMap()Lcom/esotericsoftware/kryo/util/IdentityMap;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    return-object v0
.end method

.method public getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    return-object v0
.end method

.method public getReferences()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    return v0
.end method

.method public getRegistration(I)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 3

    const-class v0, Ljava/lang/Enum;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p1, v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    const-class v1, Ljava/util/EnumSet;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->isClosure(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/ClosureSerializer$Closure;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    :cond_5
    :goto_0
    if-nez v1, :cond_8

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->h:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->i:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->registerImplicit(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    return-object v1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1
.end method

.method public getWarnUnregisteredClasses()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->i:Z

    return v0
.end method

.method public isClosure(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFinal(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isRegistrationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->h:Z

    return v0
.end method

.method public newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->a:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getInstantiator()Lu7/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newInstantiator(Ljava/lang/Class;)Lu7/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Registration;->setInstantiator(Lu7/a;)V

    :cond_0
    invoke-interface {v1}, Lu7/a;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newInstantiator(Ljava/lang/Class;)Lu7/a;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->g:Lv7/a;

    invoke-interface {v0, p1}, Lv7/a;->newInstantiatorOf(Ljava/lang/Class;)Lu7/a;

    move-result-object p1

    return-object p1
.end method

.method public readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_1
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 p1, 0x0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v1, :cond_0

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    return-object p1

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v3, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v2, v0, :cond_7

    :cond_6
    const-string v2, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_8
    return-object v1

    :catchall_0
    move-exception p1

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez v1, :cond_9

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_9
    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    :goto_0
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_5

    :cond_4
    const-string v1, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v1, p2, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_a

    if-eqz p2, :cond_9

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget p3, p3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    :goto_0
    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p3, :cond_4

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p3, :cond_5

    iget p3, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p3, v0, :cond_5

    :cond_4
    const-string p3, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p3, p2, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_d

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Read"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v3, :cond_7

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v3

    if-nez v3, :cond_6

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v1, 0x0

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_5
    return-object v1

    :cond_6
    :try_start_3
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_7
    :goto_0
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v2, p2, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_e

    if-eqz p2, :cond_d

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Read"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->d(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    iget-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    iget p3, p3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, p3, :cond_7

    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    if-nez v1, :cond_6

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 p3, 0x0

    if-nez p2, :cond_3

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p2, v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v2, p3, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_5
    return-object p3

    :cond_6
    :try_start_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_7
    :goto_0
    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p3, :cond_8

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p3, :cond_9

    iget p3, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p3, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {v2, p2, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-object p2

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reference(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v1, v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->x:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->q:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/IntArray;->pop()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1, v0, p1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setReadObject(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;
    .locals 3

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, v0}, Lcom/esotericsoftware/kryo/ClassResolver;->unregister(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration overwritten: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;I)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;
    .locals 3

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/Registration;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    new-instance v1, Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getNextRegistrationId()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    if-ltz p3, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/Registration;

    invoke-direct {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id must be >= 0: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->o:Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/16 v2, 0x800

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear(I)V

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/ClassResolver;->reset()V

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->reset()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;

    :cond_1
    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->u:I

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->w:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear(I)V

    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    const-string v0, "kryo"

    const-string v1, "Object graph complete."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public setAutoReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->f:Ljava/lang/ClassLoader;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "classLoader cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCopyReferences(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->s:Z

    return-void
.end method

.method public setDefaultSerializer(Lcom/esotericsoftware/kryo/SerializerFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->a:Lcom/esotericsoftware/kryo/SerializerFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serializer cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDefaultSerializer(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->a:Lcom/esotericsoftware/kryo/SerializerFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serializer cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInstantiatorStrategy(Lv7/a;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->g:Lv7/a;

    return-void
.end method

.method public setMaxDepth(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->k:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxDepth must be > 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOptimizedGenerics(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/esotericsoftware/kryo/util/DefaultGenerics;

    invoke-direct {p1, p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;-><init>(Lcom/esotericsoftware/kryo/Kryo;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/esotericsoftware/kryo/util/NoGenerics;->INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;

    :goto_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->y:Lcom/esotericsoftware/kryo/util/Generics;

    return-void
.end method

.method public setReferenceResolver(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "referenceResolver cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReferences(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->t:Ljava/lang/Object;

    :cond_1
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->p:Lcom/esotericsoftware/kryo/ReferenceResolver;

    :cond_2
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "References: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setRegistrationRequired(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->h:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setWarnUnregisteredClasses(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->i:Z

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warn unregistered classes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kryo"

    invoke-static {v0, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class is not registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nNote: To register this class use: kryo.register("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->canonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->d:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/ClassResolver;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_1
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v2, v0, :cond_5

    :cond_4
    const-string v2, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_5
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_7
    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 3

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "object cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .locals 5

    if-eqz p1, :cond_d

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Write"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_5

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p3

    invoke-static {v2, p2, p3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_6

    const-string v1, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write: <not null>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v4

    invoke-static {v4}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    :cond_7
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v1

    invoke-static {v2, p2, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_9
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serializer cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->b()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object p3

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Write"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->e(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p2, :cond_5

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez p3, :cond_2

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p3, :cond_3

    iget p3, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne p3, v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p3

    invoke-static {v2, p2, p3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_6

    const-string v1, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write: <not null>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v4

    invoke-static {v4}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    :cond_7
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-ne v1, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v1

    invoke-static {v2, p2, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_9
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/esotericsoftware/kryo/Kryo;->j:I

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/esotericsoftware/kryo/Kryo;->l:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    :cond_b
    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "output cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
