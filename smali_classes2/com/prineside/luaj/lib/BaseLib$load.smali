.class public final Lcom/prineside/luaj/lib/BaseLib$load;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "load"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/BaseLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/BaseLib;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$load;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseLib cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/BaseLib$load;-><init>(Lcom/prineside/luaj/lib/BaseLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument #1 to \'load\' (string or function expected, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "=(load)"

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "bt"

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/prineside/luaj/lib/BaseLib$load;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v4, v4, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, v3, v4}, Lcom/prineside/luaj/Varargs;->optvalue(ILcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iget-object v3, p0, Lcom/prineside/luaj/lib/BaseLib$load;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkfunction()Lcom/prineside/luaj/LuaFunction;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;-><init>(Lcom/prineside/luaj/LuaValue;)V

    move-object v0, v4

    :goto_2
    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/prineside/luaj/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/BaseLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$load;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$load;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
