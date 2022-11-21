.class public Lcom/prineside/luaj/LuaTable$NumberValueEntry;
.super Lcom/prineside/luaj/LuaTable$Entry;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberValueEntry"
.end annotation


# instance fields
.field public a:D

.field public b:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable$Entry;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaValue;D)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable$Entry;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    iput-wide p2, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->a:D

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic arg1()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/LuaTable$Entry;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic arraykey(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->arraykey(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic first()Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/LuaTable$Entry;->first()Lcom/prineside/luaj/LuaTable$StrongSlot;

    move-result-object v0

    return-object v0
.end method

.method public key()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public keyeq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaTable;->hashSlot(Lcom/prineside/luaj/LuaValue;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic narg()I
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/LuaTable$Entry;->narg()I

    move-result v0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->a:D

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public bridge synthetic relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rest()Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/LuaTable$Entry;->rest()Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tonumber()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->a:D

    return-object p0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/LuaTable$NormalEntry;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/LuaTable$NormalEntry;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method

.method public bridge synthetic set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaTable$Entry;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toVarargs()Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/LuaTable$Entry;->toVarargs()Lcom/prineside/luaj/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public value()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->a:D

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->a:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$NumberValueEntry;->b:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method
