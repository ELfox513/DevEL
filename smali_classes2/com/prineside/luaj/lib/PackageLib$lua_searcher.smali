.class public Lcom/prineside/luaj/lib/PackageLib$lua_searcher;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "lua_searcher"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/PackageLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/PackageLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;-><init>(Lcom/prineside/luaj/lib/PackageLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    iget-object v1, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->C:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "package.path is not a string"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    iget-object v2, v2, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v3, Lcom/prineside/luaj/lib/PackageLib;->D:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v3}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isstring(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tostring()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/PackageLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/Globals;->loadfile(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object v2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/PackageLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;->x:Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
