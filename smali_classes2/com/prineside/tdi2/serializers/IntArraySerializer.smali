.class public Lcom/prineside/tdi2/serializers/IntArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/IntArray;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/IntArraySerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntArraySerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntArraySerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/IntArray;",
            ">;)",
            "Lcom/badlogic/gdx/utils/IntArray;"
        }
    .end annotation

    :try_start_0
    new-instance p3, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {p3}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Can\'t create object instance"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 2

    iget p1, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntArray;)V

    return-void
.end method
