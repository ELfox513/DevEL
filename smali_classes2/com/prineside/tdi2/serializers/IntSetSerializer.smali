.class public Lcom/prineside/tdi2/serializers/IntSetSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/IntSet;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

.field public static final c:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/IntSetSerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/IntSetSerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntSetSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/IntSetSerializer;->c:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntSet;)Lcom/badlogic/gdx/utils/IntSet;
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/IntSet;

    iget v0, p2, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/IntSet;->addAll(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object p1
.end method

.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/IntSetSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/IntSet;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/IntSet;",
            ">;)",
            "Lcom/badlogic/gdx/utils/IntSet;"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/utils/IntSet;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntSetSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 1

    iget p1, p3, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object p1

    sget-object p3, Lcom/prineside/tdi2/serializers/IntSetSerializer;->c:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    :goto_0
    iget-boolean p3, p1, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz p3, :cond_0

    sget-object p3, Lcom/prineside/tdi2/serializers/IntSetSerializer;->c:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/serializers/IntSetSerializer;->c:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->sort()V

    const/4 p1, 0x0

    :goto_1
    sget-object p3, Lcom/prineside/tdi2/serializers/IntSetSerializer;->c:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, p3, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_1

    iget-object p3, p3, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/IntSetSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/IntSet;)V

    return-void
.end method
