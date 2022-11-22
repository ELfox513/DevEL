.class public abstract Lcom/prineside/luaj/lib/BaseLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/lib/ResourceFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/BaseLib$_assert;,
        Lcom/prineside/luaj/lib/BaseLib$collectgarbage;,
        Lcom/prineside/luaj/lib/BaseLib$dofile;,
        Lcom/prineside/luaj/lib/BaseLib$error;,
        Lcom/prineside/luaj/lib/BaseLib$getmetatable;,
        Lcom/prineside/luaj/lib/BaseLib$load;,
        Lcom/prineside/luaj/lib/BaseLib$loadfile;,
        Lcom/prineside/luaj/lib/BaseLib$pcall;,
        Lcom/prineside/luaj/lib/BaseLib$print;,
        Lcom/prineside/luaj/lib/BaseLib$rawequal;,
        Lcom/prineside/luaj/lib/BaseLib$rawget;,
        Lcom/prineside/luaj/lib/BaseLib$rawlen;,
        Lcom/prineside/luaj/lib/BaseLib$rawset;,
        Lcom/prineside/luaj/lib/BaseLib$select;,
        Lcom/prineside/luaj/lib/BaseLib$setmetatable;,
        Lcom/prineside/luaj/lib/BaseLib$tonumber;,
        Lcom/prineside/luaj/lib/BaseLib$tostring;,
        Lcom/prineside/luaj/lib/BaseLib$type;,
        Lcom/prineside/luaj/lib/BaseLib$xpcall;,
        Lcom/prineside/luaj/lib/BaseLib$next;,
        Lcom/prineside/luaj/lib/BaseLib$pairs;,
        Lcom/prineside/luaj/lib/BaseLib$ipairs;,
        Lcom/prineside/luaj/lib/BaseLib$StringInputStream;,
        Lcom/prineside/luaj/lib/BaseLib$inext;
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
    .locals 2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iput-object p0, p1, Lcom/prineside/luaj/Globals;->finder:Lcom/prineside/luaj/lib/ResourceFinder;

    iput-object p0, p1, Lcom/prineside/luaj/Globals;->baselib:Lcom/prineside/luaj/lib/BaseLib;

    const-string p1, "_G"

    invoke-virtual {p2, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string p1, "_VERSION"

    const-string v0, "Luaj 3.0.2 custom"

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$_assert;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$_assert;-><init>()V

    const-string v0, "assert"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$collectgarbage;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$collectgarbage;-><init>()V

    const-string v0, "collectgarbage"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$dofile;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/prineside/luaj/lib/BaseLib$dofile;-><init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V

    const-string v1, "dofile"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$error;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$error;-><init>()V

    const-string v1, "error"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$getmetatable;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$getmetatable;-><init>()V

    const-string v1, "getmetatable"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$load;

    invoke-direct {p1, p0, v0}, Lcom/prineside/luaj/lib/BaseLib$load;-><init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V

    const-string v1, "load"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$loadfile;

    invoke-direct {p1, p0, v0}, Lcom/prineside/luaj/lib/BaseLib$loadfile;-><init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V

    const-string v1, "loadfile"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$pcall;

    invoke-direct {p1, p0, v0}, Lcom/prineside/luaj/lib/BaseLib$pcall;-><init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V

    const-string v1, "pcall"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$print;

    invoke-direct {p1, p0}, Lcom/prineside/luaj/lib/BaseLib$print;-><init>(Lcom/prineside/luaj/lib/BaseLib;)V

    const-string v1, "print"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$rawequal;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$rawequal;-><init>()V

    const-string v1, "rawequal"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$rawget;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$rawget;-><init>()V

    const-string v1, "rawget"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$rawlen;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$rawlen;-><init>()V

    const-string v1, "rawlen"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$rawset;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$rawset;-><init>()V

    const-string v1, "rawset"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$select;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$select;-><init>()V

    const-string v1, "select"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$setmetatable;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$setmetatable;-><init>()V

    const-string v1, "setmetatable"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$tonumber;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$tonumber;-><init>()V

    const-string v1, "tonumber"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$tostring;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$tostring;-><init>()V

    const-string v1, "tostring"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$type;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$type;-><init>()V

    const-string v1, "type"

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$xpcall;

    invoke-direct {p1, p0, v0}, Lcom/prineside/luaj/lib/BaseLib$xpcall;-><init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V

    const-string v0, "xpcall"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$next;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$next;-><init>()V

    const-string v0, "next"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/BaseLib$pairs;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/lib/BaseLib$pairs;-><init>(Lcom/prineside/luaj/lib/BaseLib$next;)V

    const-string p1, "pairs"

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/lib/BaseLib$ipairs;

    invoke-direct {p1}, Lcom/prineside/luaj/lib/BaseLib$ipairs;-><init>()V

    const-string v0, "ipairs"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    return-object p2
.end method

.method public findResource(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trying to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLib"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "filename should not contain ../"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public loadFile(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->finder:Lcom/prineside/luaj/lib/ResourceFinder;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot open "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": No such file or directory"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/prineside/luaj/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    throw p1
.end method

.method public loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not found: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/prineside/luaj/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Globals;

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
