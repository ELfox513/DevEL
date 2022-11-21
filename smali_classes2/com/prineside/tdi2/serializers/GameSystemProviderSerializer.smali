.class public Lcom/prineside/tdi2/serializers/GameSystemProviderSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/prineside/tdi2/GameSystemProvider;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/prineside/tdi2/GameSystemProvider;",
            ">;)",
            "Lcom/prineside/tdi2/GameSystemProvider;"
        }
    .end annotation

    new-instance p3, Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    sget-object v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;->GAME:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V

    invoke-direct {p3, v0}, Lcom/prineside/tdi2/GameSystemProvider;-><init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/GameSystem;

    invoke-virtual {p3, v2}, Lcom/prineside/tdi2/GameSystemProvider;->addSystem(Lcom/prineside/tdi2/GameSystem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/GameSystemProviderSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 4

    invoke-virtual {p3}, Lcom/prineside/tdi2/GameSystemProvider;->getSystemsOrdered()Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v3, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/GameSystem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    :goto_1
    iget v1, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_3

    iget-object v1, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameSystem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/GameSystem;->affectsGameState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/serializers/GameSystemProviderSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method
