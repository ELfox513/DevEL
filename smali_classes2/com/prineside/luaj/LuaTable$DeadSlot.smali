.class public Lcom/prineside/luaj/LuaTable$DeadSlot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/LuaTable$Slot;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeadSlot"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/prineside/luaj/LuaTable$Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/prineside/luaj/LuaTable;->E(Lcom/prineside/luaj/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;Lcom/prineside/luaj/LuaTable$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/luaj/LuaTable$DeadSlot;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaTable$Slot;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->add(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public arraykey(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public find(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lcom/prineside/luaj/LuaTable$StrongSlot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final key()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    check-cast v0, Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public keyeq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$DeadSlot;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public keyindex(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaTable$Slot;

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-void
.end method

.method public relink(Lcom/prineside/luaj/LuaTable$Slot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 0

    return-object p1
.end method

.method public remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$DeadSlot;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/LuaTable$Slot;->remove(Lcom/prineside/luaj/LuaTable$StrongSlot;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p1
.end method

.method public rest()Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object v0
.end method

.method public set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/LuaTable$Slot;->set(Lcom/prineside/luaj/LuaTable$StrongSlot;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable$Slot;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$DeadSlot;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    return-object p0

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<dead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaTable$DeadSlot;->key()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    if-eqz v1, :cond_1

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaTable$DeadSlot;->b:Lcom/prineside/luaj/LuaTable$Slot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
