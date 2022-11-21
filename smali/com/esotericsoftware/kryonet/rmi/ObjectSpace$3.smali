.class final Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$3;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esotericsoftware/kryonet/rmi/ObjectSpace;->registerClasses(Lcom/esotericsoftware/kryo/Kryo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/FieldSerializer<",
        "Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;-><init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;",
            ">;)",
            "Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result p2

    iput p2, p1, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->objectID:I

    return-object p1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$3;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;->objectID:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$3;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/esotericsoftware/kryonet/rmi/ObjectSpace$InvokeMethodResult;)V

    return-void
.end method
