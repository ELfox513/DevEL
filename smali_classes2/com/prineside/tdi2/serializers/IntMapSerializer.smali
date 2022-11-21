.class public Lcom/prineside/tdi2/serializers/IntMapSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/IntMap;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

.field public static final c:Ljava/util/Comparator;
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
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/IntMapSerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntMapSerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntMapSerializer;->c:Ljava/util/Comparator;

    new-instance v0, Lcom/prineside/tdi2/serializers/IntMapSerializer$2;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntMapSerializer$2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntMapSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntMap;)Lcom/badlogic/gdx/utils/IntMap;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p2, Lcom/badlogic/gdx/utils/IntMap;->size:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/IntMap;->putAll(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0
.end method

.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/IntMapSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntMap;)Lcom/badlogic/gdx/utils/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/IntMap;",
            ">;)",
            "Lcom/badlogic/gdx/utils/IntMap;"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/utils/IntMap;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntMapSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntMap;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 2

    iget v0, p3, Lcom/badlogic/gdx/utils/IntMap;->size:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntMap;->keys()Lcom/badlogic/gdx/utils/IntMap$Keys;

    move-result-object v0

    :goto_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->next()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntMapSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntMap;)V

    return-void
.end method
