.class public Lcom/prineside/luaj/Upvaldesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation


# instance fields
.field public idx:S

.field public instack:Z

.field public name:Lcom/prineside/luaj/LuaString;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaString;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    iput-boolean p2, p0, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    int-to-short p1, p3

    iput-short p1, p0, Lcom/prineside/luaj/Upvaldesc;->idx:S

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaString;

    iput-object p1, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result p1

    iput-short p1, p0, Lcom/prineside/luaj/Upvaldesc;->idx:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lcom/prineside/luaj/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    if-eqz v1, :cond_0

    const-string v1, " instack "

    goto :goto_0

    :cond_0
    const-string v1, " closed "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    const-class v1, Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean p1, p0, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-short p1, p0, Lcom/prineside/luaj/Upvaldesc;->idx:S

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeShort(I)V

    return-void
.end method
