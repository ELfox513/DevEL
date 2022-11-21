.class public final Lcom/prineside/luaj/UpValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# instance fields
.field public a:[Lcom/prineside/luaj/LuaValue;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/prineside/luaj/LuaValue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    iput p2, p0, Lcom/prineside/luaj/UpValue;->b:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/prineside/luaj/LuaValue;

    iget v2, p0, Lcom/prineside/luaj/UpValue;->b:I

    aget-object v3, v0, v2

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iput-object v1, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    iput v4, p0, Lcom/prineside/luaj/UpValue;->b:I

    return-void
.end method

.method public final getValue()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    iget v1, p0, Lcom/prineside/luaj/UpValue;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/UpValue;->b:I

    return-void
.end method

.method public final setValue(Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    iget v1, p0, Lcom/prineside/luaj/UpValue;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/prineside/luaj/UpValue;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    iget v3, p0, Lcom/prineside/luaj/UpValue;->b:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "noArr"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    iget v1, p0, Lcom/prineside/luaj/UpValue;->b:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/UpValue;->a:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Lcom/prineside/luaj/LuaValue;)V

    iget p1, p0, Lcom/prineside/luaj/UpValue;->b:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
