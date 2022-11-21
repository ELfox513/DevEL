.class public Lcom/prineside/tdi2/serializers/IntIntMapSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/IntIntMap;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

.field public static final c:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->c:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->d:Lcom/badlogic/gdx/utils/Pool;

    new-instance v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$2;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$3;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer$3;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntIntMap;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, p2, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->putAll(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0
.end method

.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntIntMap;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntIntMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            ">;)",
            "Lcom/badlogic/gdx/utils/IntIntMap;"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntIntMap;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 3

    iget p1, p3, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->c:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntIntMap;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    sget-object v1, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->d:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    iput v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    iget v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    iput v0, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    sget-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->c:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->c:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->e:Ljava/util/Comparator;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    :goto_2
    sget-object p3, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->c:Lcom/badlogic/gdx/utils/Array;

    iget v0, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v0, :cond_3

    iget-object p3, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p3, [Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    aget-object p3, p3, p1

    iget v0, p3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p3, p3, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntIntMapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-void
.end method
