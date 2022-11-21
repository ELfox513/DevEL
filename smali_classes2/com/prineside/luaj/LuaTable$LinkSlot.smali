.class public Lcom/prineside/luaj/LuaTable$LinkSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/LuaTable$StrongSlot;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkSlot"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/LuaTable$Entry;

.field public b:Lcom/prineside/luaj/LuaTable$Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaTable$Entry;Lcom/prineside/luaj/LuaTable$Slot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    iput-object p2, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method


# virtual methods
.method public final a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    return-object p1
.end method

.method public add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable$LinkSlot;->a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public arraykey(I)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->arraykey(I)I

    move-result p1

    return p1
.end method

.method public find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public first()Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    return-object v0
.end method

.method public key()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaTable$Entry;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public keyeq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->keyeq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    return p1
.end method

.method public keyindex(I)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaTable$Entry;->keyindex(I)I

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaTable$Entry;

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaTable$Slot;

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method

.method public relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/prineside/luaj/LuaTable$LinkSlot;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/LuaTable$LinkSlot;-><init>(Lcom/prineside/luaj/LuaTable$Entry;Lcom/prineside/luaj/LuaTable$Slot;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    :goto_0
    return-object v0
.end method

.method public remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 3

    if-ne p0, p1, :cond_0

    new-instance p1, Lcom/prineside/luaj/LuaTable$DeadSlot;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$LinkSlot;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/prineside/luaj/LuaTable$DeadSlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;Lcom/prineside/luaj/LuaTable$1;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0
.end method

.method public rest()Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaTable$Entry;->set(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/LuaTable$Slot;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaTable$LinkSlot;->a(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toVarargs()Lcom/prineside/luaj/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaTable$Entry;->toVarargs()Lcom/prineside/luaj/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public value()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaTable$Entry;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->a:Lcom/prineside/luaj/LuaTable$Entry;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$LinkSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
