.class public Lcom/prineside/tdi2/Path$Connection$Serializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Path$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "Lcom/prineside/tdi2/Path$Connection;",
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
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/prineside/tdi2/Path$Connection;)Lcom/prineside/tdi2/Path$Connection;
    .locals 6

    const-class v0, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    iget-object v1, p2, Lcom/prineside/tdi2/Path$Connection;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/Map;

    new-instance p1, Lcom/prineside/tdi2/Path$Connection;

    iget v2, p2, Lcom/prineside/tdi2/Path$Connection;->fromIdx:I

    iget v3, p2, Lcom/prineside/tdi2/Path$Connection;->toIdx:I

    iget-boolean v4, p2, Lcom/prineside/tdi2/Path$Connection;->isTeleport:Z

    iget v5, p2, Lcom/prineside/tdi2/Path$Connection;->cost:F

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/Path$Connection;-><init>(Lcom/prineside/tdi2/Map;IIZF)V

    return-object p1
.end method

.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/prineside/tdi2/Path$Connection;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/tdi2/Path$Connection$Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Lcom/prineside/tdi2/Path$Connection;)Lcom/prineside/tdi2/Path$Connection;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/Path$Connection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/prineside/tdi2/Path$Connection;",
            ">;)",
            "Lcom/prineside/tdi2/Path$Connection;"
        }
    .end annotation

    const-class p3, Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/prineside/tdi2/Map;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v4

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v5

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v3

    new-instance p1, Lcom/prineside/tdi2/Path$Connection;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/Path$Connection;-><init>(Lcom/prineside/tdi2/Map;IIZF)V

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/Path$Connection$Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/prineside/tdi2/Path$Connection;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/Path$Connection;)V
    .locals 1

    iget-object v0, p3, Lcom/prineside/tdi2/Path$Connection;->map:Lcom/prineside/tdi2/Map;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p3, Lcom/prineside/tdi2/Path$Connection;->isTeleport:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p3, Lcom/prineside/tdi2/Path$Connection;->cost:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p3, Lcom/prineside/tdi2/Path$Connection;->fromIdx:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p3, Lcom/prineside/tdi2/Path$Connection;->toIdx:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/prineside/tdi2/Path$Connection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/Path$Connection$Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/tdi2/Path$Connection;)V

    return-void
.end method
