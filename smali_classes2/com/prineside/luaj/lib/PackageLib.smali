.class public Lcom/prineside/luaj/lib/PackageLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/PackageLib$preload_searcher;,
        Lcom/prineside/luaj/lib/PackageLib$lua_searcher;,
        Lcom/prineside/luaj/lib/PackageLib$java_searcher;,
        Lcom/prineside/luaj/lib/PackageLib$require;,
        Lcom/prineside/luaj/lib/PackageLib$loadlib;,
        Lcom/prineside/luaj/lib/PackageLib$searchpath;
    }
.end annotation


# static fields
.field public static final A:Lcom/prineside/luaj/LuaString;

.field public static final B:Lcom/prineside/luaj/LuaString;

.field public static final C:Lcom/prineside/luaj/LuaString;

.field public static final D:Lcom/prineside/luaj/LuaString;

.field public static final DEFAULT_LUA_PATH:Ljava/lang/String;

.field public static final E:Lcom/prineside/luaj/LuaString;

.field public static final F:Lcom/prineside/luaj/LuaString;

.field public static final G:Ljava/lang/String;

.field public static final z:Lcom/prineside/luaj/LuaString;


# instance fields
.field public java_searcher:Lcom/prineside/luaj/lib/PackageLib$java_searcher;

.field public lua_searcher:Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

.field public preload_searcher:Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

.field public x:Lcom/prineside/luaj/Globals;

.field public y:Lcom/prineside/luaj/LuaTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "luaj.package.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "?.lua"

    :cond_0
    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    const-string v0, "loaded"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->z:Lcom/prineside/luaj/LuaString;

    const-string v0, "loadlib"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->A:Lcom/prineside/luaj/LuaString;

    const-string v0, "preload"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->B:Lcom/prineside/luaj/LuaString;

    const-string v0, "path"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->C:Lcom/prineside/luaj/LuaString;

    const-string v0, "searchpath"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->D:Lcom/prineside/luaj/LuaString;

    const-string v0, "searchers"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->E:Lcom/prineside/luaj/LuaString;

    const-string v0, "\u0001"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->F:Lcom/prineside/luaj/LuaString;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/PackageLib;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic s()Lcom/prineside/luaj/LuaString;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/lib/PackageLib;->F:Lcom/prineside/luaj/LuaString;

    return-object v0
.end method

.method public static synthetic t()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/lib/PackageLib;->G:Ljava/lang/String;

    return-object v0
.end method

.method public static final toClassname(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ".lua"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/prineside/luaj/lib/PackageLib;->u(C)Z

    move-result v5

    const/16 v6, 0x5c

    const/16 v7, 0x2f

    if-eqz v5, :cond_2

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/prineside/luaj/lib/PackageLib;->u(C)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    :cond_3
    if-eq v3, v7, :cond_5

    if-ne v3, v6, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x5f

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v3, 0x2e

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-ne v0, v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_6
    return-object p0
.end method

.method public static final u(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x24

    if-eq p0, v1, :cond_4

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_4

    const/16 v1, 0x5f

    if-eq p0, v1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    return v0
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->x:Lcom/prineside/luaj/Globals;

    new-instance v0, Lcom/prineside/luaj/lib/PackageLib$require;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/PackageLib$require;-><init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V

    const-string v2, "require"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v0, Lcom/prineside/luaj/lib/PackageLib;->z:Lcom/prineside/luaj/LuaString;

    new-instance v2, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v2}, Lcom/prineside/luaj/LuaTable;-><init>()V

    invoke-virtual {p1, v0, v2}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->B:Lcom/prineside/luaj/LuaString;

    new-instance v3, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v3}, Lcom/prineside/luaj/LuaTable;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->C:Lcom/prineside/luaj/LuaString;

    sget-object v3, Lcom/prineside/luaj/lib/PackageLib;->DEFAULT_LUA_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->A:Lcom/prineside/luaj/LuaString;

    new-instance v3, Lcom/prineside/luaj/lib/PackageLib$loadlib;

    invoke-direct {v3}, Lcom/prineside/luaj/lib/PackageLib$loadlib;-><init>()V

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->D:Lcom/prineside/luaj/LuaString;

    new-instance v3, Lcom/prineside/luaj/lib/PackageLib$searchpath;

    invoke-direct {v3, p0, v1}, Lcom/prineside/luaj/lib/PackageLib$searchpath;-><init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v2, Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

    invoke-direct {v2, p0, v1}, Lcom/prineside/luaj/lib/PackageLib$preload_searcher;-><init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/lib/PackageLib;->preload_searcher:Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    new-instance v2, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

    invoke-direct {v2, p0, v1}, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;-><init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/lib/PackageLib;->lua_searcher:Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    new-instance v2, Lcom/prineside/luaj/lib/PackageLib$java_searcher;

    invoke-direct {v2, p0, v1}, Lcom/prineside/luaj/lib/PackageLib$java_searcher;-><init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V

    iput-object v2, p0, Lcom/prineside/luaj/lib/PackageLib;->java_searcher:Lcom/prineside/luaj/lib/PackageLib$java_searcher;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/LuaTable;->set(ILcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->E:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, v2, p1}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n;\n?\n!\n-\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {p1, v2, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->x:Lcom/prineside/luaj/Globals;

    iput-object p0, p1, Lcom/prineside/luaj/Globals;->package_:Lcom/prineside/luaj/lib/PackageLib;

    return-object p2
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Globals;

    iput-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaTable;

    iput-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

    iput-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->preload_searcher:Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

    iput-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->lua_searcher:Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/PackageLib$java_searcher;

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib;->java_searcher:Lcom/prineside/luaj/lib/PackageLib$java_searcher;

    return-void
.end method

.method public setIsLoaded(Ljava/lang/String;Lcom/prineside/luaj/LuaTable;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v1, Lcom/prineside/luaj/lib/PackageLib;->z:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public setLuaPath(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v1, Lcom/prineside/luaj/lib/PackageLib;->C:Lcom/prineside/luaj/LuaString;

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    const-string v0, "package"

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->preload_searcher:Lcom/prineside/luaj/lib/PackageLib$preload_searcher;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->lua_searcher:Lcom/prineside/luaj/lib/PackageLib$lua_searcher;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib;->java_searcher:Lcom/prineside/luaj/lib/PackageLib$java_searcher;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
