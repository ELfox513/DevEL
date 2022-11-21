.class public final Lcom/prineside/luaj/lib/BaseLib$pcall;
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
    name = "pcall"
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
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/BaseLib$pcall;-><init>(Lcom/prineside/luaj/lib/BaseLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkvalue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/prineside/luaj/lib/DebugLib;->onCall(Lcom/prineside/luaj/LuaFunction;)V

    :cond_0
    :try_start_0
    sget-object v1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_3
    return-object p1

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaError;->getMessageObject()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_1
    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_5
    return-object p1

    :goto_2
    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_6
    throw p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/BaseLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$pcall;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
