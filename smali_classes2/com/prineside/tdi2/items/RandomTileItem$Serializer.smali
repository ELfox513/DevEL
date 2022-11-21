.class public Lcom/prineside/tdi2/items/RandomTileItem$Serializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/RandomTileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/prineside/tdi2/items/RandomTileItem;",
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
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/RandomTileItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/prineside/tdi2/items/RandomTileItem;",
            ">;)",
            "Lcom/prineside/tdi2/items/RandomTileItem;"
        }
    .end annotation

    sget-object p1, Lcom/prineside/tdi2/Item$D;->F_RANDOM_TILE:Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/items/RandomTileItem$RandomTileItemFactory;->create(F)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/RandomTileItem$Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/RandomTileItem;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/RandomTileItem;)V
    .locals 0

    iget p1, p3, Lcom/prineside/tdi2/items/RandomTileItem;->quality:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/prineside/tdi2/items/RandomTileItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/RandomTileItem$Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/RandomTileItem;)V

    return-void
.end method
