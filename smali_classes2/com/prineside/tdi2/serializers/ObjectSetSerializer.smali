.class public Lcom/prineside/tdi2/serializers/ObjectSetSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/utils/ObjectSet;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/ObjectSetSerializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectSet;

    iget v0, p2, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object p1
.end method

.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/badlogic/gdx/utils/ObjectSet;)Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/utils/ObjectSet;",
            ">;)",
            "Lcom/badlogic/gdx/utils/ObjectSet;"
        }
    .end annotation

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p3

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0, p3}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 2

    iget v0, p3, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object p3

    :goto_0
    iget-boolean v0, p3, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/ObjectSetSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-void
.end method
