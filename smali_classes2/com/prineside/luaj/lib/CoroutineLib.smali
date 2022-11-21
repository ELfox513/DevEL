.class public Lcom/prineside/luaj/lib/CoroutineLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/CoroutineLib$create;,
        Lcom/prineside/luaj/lib/CoroutineLib$resume;,
        Lcom/prineside/luaj/lib/CoroutineLib$running;,
        Lcom/prineside/luaj/lib/CoroutineLib$status;,
        Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;,
        Lcom/prineside/luaj/lib/CoroutineLib$wrap;,
        Lcom/prineside/luaj/lib/CoroutineLib$wrapper;
    }
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/Globals;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/CoroutineLib;->x:Lcom/prineside/luaj/Globals;

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$create;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/CoroutineLib$create;-><init>(Lcom/prineside/luaj/lib/CoroutineLib;Lcom/prineside/luaj/lib/CoroutineLib$1;)V

    const-string v2, "create"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$resume;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/CoroutineLib$resume;-><init>()V

    const-string v2, "resume"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$running;

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/CoroutineLib$running;-><init>(Lcom/prineside/luaj/lib/CoroutineLib;Lcom/prineside/luaj/lib/CoroutineLib$1;)V

    const-string v2, "running"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$status;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/CoroutineLib$status;-><init>()V

    const-string v2, "status"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;-><init>(Lcom/prineside/luaj/lib/CoroutineLib;Lcom/prineside/luaj/lib/CoroutineLib$1;)V

    const-string v2, "yield"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/CoroutineLib$wrap;

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/CoroutineLib$wrap;-><init>(Lcom/prineside/luaj/lib/CoroutineLib;Lcom/prineside/luaj/lib/CoroutineLib$1;)V

    const-string v1, "wrap"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v0, "coroutine"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "package"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Globals;

    iput-object p1, p0, Lcom/prineside/luaj/lib/CoroutineLib;->x:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/CoroutineLib;->x:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
