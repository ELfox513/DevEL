.class public Lcom/prineside/tdi2/items/GameValueGlobalItem$Serializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/GameValueGlobalItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/prineside/tdi2/items/GameValueGlobalItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/GameValueGlobalItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/prineside/tdi2/items/GameValueGlobalItem;",
            ">;)",
            "Lcom/prineside/tdi2/items/GameValueGlobalItem;"
        }
    .end annotation

    const-class p3, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide p2

    sget-object v0, Lcom/prineside/tdi2/Item$D;->F_GAME_VALUE_GLOBAL:Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/tdi2/items/GameValueGlobalItem$GameValueGlobalItemFactory;->create(Lcom/prineside/tdi2/enums/GameValueType;D)Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/GameValueGlobalItem$Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/GameValueGlobalItem;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/GameValueGlobalItem;)V
    .locals 2

    iget-object v0, p3, Lcom/prineside/tdi2/items/GameValueGlobalItem;->gameValueType:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-wide v0, p3, Lcom/prineside/tdi2/items/GameValueGlobalItem;->delta:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/prineside/tdi2/items/GameValueGlobalItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/GameValueGlobalItem$Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/GameValueGlobalItem;)V

    return-void
.end method
