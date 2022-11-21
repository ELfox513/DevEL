.class public Lcom/prineside/tdi2/items/BlueprintItem$Serializer;
.super Lcom/prineside/tdi2/serializers/SingletonSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/items/BlueprintItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/serializers/SingletonSerializer<",
        "Lcom/prineside/tdi2/items/BlueprintItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/serializers/SingletonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public read()Lcom/prineside/tdi2/items/BlueprintItem;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do not use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/BlueprintItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/prineside/tdi2/items/BlueprintItem;",
            ">;)",
            "Lcom/prineside/tdi2/items/BlueprintItem;"
        }
    .end annotation

    sget-object p3, Lcom/prineside/tdi2/Item$D;->F_BLUEPRINT:Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;

    const-class v0, Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/BlueprintType;

    invoke-virtual {p3, p1}, Lcom/prineside/tdi2/items/BlueprintItem$BlueprintItemFactory;->create(Lcom/prineside/tdi2/enums/BlueprintType;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/items/BlueprintItem$Serializer;->read()Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/BlueprintItem$Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/items/BlueprintItem;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/BlueprintItem;)V
    .locals 0

    invoke-static {p3}, Lcom/prineside/tdi2/items/BlueprintItem;->b(Lcom/prineside/tdi2/items/BlueprintItem;)Lcom/prineside/tdi2/enums/BlueprintType;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/prineside/tdi2/items/BlueprintItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/items/BlueprintItem$Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/items/BlueprintItem;)V

    return-void
.end method
