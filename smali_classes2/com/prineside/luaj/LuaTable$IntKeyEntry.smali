.class public Lcom/prineside/luaj/LuaTable$IntKeyEntry;
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
    name = "IntKeyEntry"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable$Entry;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable$Entry;-><init>()V

    iput p1, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    iput-object p2, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->b:Lcom/prineside/luaj/LuaValue;

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

.method public arraykey(I)I
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    iget v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public keyeq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->hashCode(I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaTable;->hashmod(II)I

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
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->b:Lcom/prineside/luaj/LuaValue;

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
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->b:Lcom/prineside/luaj/LuaValue;

    return-object p0
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
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->b:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$IntKeyEntry;->b:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
