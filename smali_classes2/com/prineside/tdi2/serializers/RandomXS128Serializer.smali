.class public Lcom/prineside/tdi2/serializers/RandomXS128Serializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/badlogic/gdx/math/RandomXS128;",
        ">;"
    }
.end annotation


# static fields
.field public static CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/serializers/RandomXS128Serializer$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/serializers/RandomXS128Serializer$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;->CLASS_COMPARATOR:Lcom/prineside/tdi2/utils/PMath$ClassComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Serializer;->setAcceptsNull(Z)V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/math/RandomXS128;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/badlogic/gdx/math/RandomXS128;",
            ">;)",
            "Lcom/badlogic/gdx/math/RandomXS128;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide p2

    new-instance v2, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(JJ)V

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/badlogic/gdx/math/RandomXS128;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/math/RandomXS128;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/RandomXS128;->getState(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeLong(J)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/RandomXS128Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/badlogic/gdx/math/RandomXS128;)V

    return-void
.end method
