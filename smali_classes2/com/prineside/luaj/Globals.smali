.class public final Lcom/prineside/luaj/Globals;
.super Lcom/prineside/luaj/LuaTable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/Globals$Loader;,
        Lcom/prineside/luaj/Globals$Compiler;,
        Lcom/prineside/luaj/Globals$Undumper;,
        Lcom/prineside/luaj/Globals$StrReader;,
        Lcom/prineside/luaj/Globals$UTF8Stream;,
        Lcom/prineside/luaj/Globals$BufferedStream;,
        Lcom/prineside/luaj/Globals$AbstractBufferedStream;
    }
.end annotation


# instance fields
.field public STDERR:Ljava/io/PrintStream;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public STDIN:Ljava/io/InputStream;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public STDOUT:Ljava/io/PrintStream;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public baselib:Lcom/prineside/luaj/lib/BaseLib;

.field public compiler:Lcom/prineside/luaj/Globals$Compiler;

.field public debuglib:Lcom/prineside/luaj/lib/DebugLib;

.field public finder:Lcom/prineside/luaj/lib/ResourceFinder;

.field public instanceId:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public loader:Lcom/prineside/luaj/Globals$Loader;

.field public package_:Lcom/prineside/luaj/lib/PackageLib;

.field public running:Lcom/prineside/luaj/LuaThread;

.field public specialValues:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/luaj/LuaValue;",
            ">;"
        }
    .end annotation
.end field

.field public undumper:Lcom/prineside/luaj/Globals$Undumper;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDERR:Ljava/io/PrintStream;

    new-instance v0, Lcom/prineside/luaj/LuaThread;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaThread;-><init>(Lcom/prineside/luaj/Globals;)V

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/luaj/LuaValue;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->STDERR:Ljava/io/PrintStream;

    new-instance v0, Lcom/prineside/luaj/LuaThread;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaThread;-><init>(Lcom/prineside/luaj/Globals;)V

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/luaj/LuaValue;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    iput p1, p0, Lcom/prineside/luaj/Globals;->instanceId:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    invoke-virtual {v0, p1, p0}, Lcom/prineside/tdi2/managers/ScriptManager;->registerInstance(ILcom/prineside/luaj/Globals;)V

    return-void
.end method


# virtual methods
.method public addSpecialValue(Lcom/prineside/luaj/LuaValue;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return v1
.end method

.method public checkglobals()Lcom/prineside/luaj/Globals;
    .locals 0

    return-object p0
.end method

.method public compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->compiler:Lcom/prineside/luaj/Globals$Compiler;

    if-nez v0, :cond_0

    const-string v0, "No compiler."

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Globals;->compiler:Lcom/prineside/luaj/Globals$Compiler;

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/Globals$Compiler;->compile(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public compilePrototype(Ljava/io/Reader;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/luaj/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public getSpecialValue(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/luaj/LuaValue;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/Globals;->loadPrototype(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    iget-object p3, p0, Lcom/prineside/luaj/Globals;->loader:Lcom/prineside/luaj/Globals$Loader;

    invoke-interface {p3, p1, p2, p4}, Lcom/prineside/luaj/Globals$Loader;->load(Lcom/prineside/luaj/Prototype;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaFunction;

    move-result-object p1
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "load "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public load(Ljava/io/Reader;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    const-string p1, "t"

    invoke-virtual {p0, v0, p2, p1, p0}, Lcom/prineside/luaj/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/io/Reader;Ljava/lang/String;Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$UTF8Stream;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$UTF8Stream;-><init>(Ljava/io/Reader;)V

    const-string p1, "t"

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/prineside/luaj/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$StrReader;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$StrReader;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/prineside/luaj/Globals;->load(Ljava/io/Reader;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/Globals$StrReader;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$StrReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/prineside/luaj/Globals;->load(Ljava/io/Reader;Ljava/lang/String;Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public loadPrototype(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 1

    const/16 v0, 0x62

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->undumper:Lcom/prineside/luaj/Globals$Undumper;

    if-nez v0, :cond_0

    const-string v0, "No undumper."

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/prineside/luaj/Globals$BufferedStream;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/Globals$BufferedStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->undumper:Lcom/prineside/luaj/Globals$Undumper;

    invoke-interface {v0, p1, p2}, Lcom/prineside/luaj/Globals$Undumper;->undump(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_3
    const/16 v0, 0x74

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load prototype "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using mode \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public loadfile(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/Globals;->finder:Lcom/prineside/luaj/lib/ResourceFinder;

    invoke-interface {v0, p1}, Lcom/prineside/luaj/lib/ResourceFinder;->findResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt"

    invoke-virtual {p0, v0, v1, v2, p0}, Lcom/prineside/luaj/Globals;->load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/prineside/luaj/Globals;->instanceId:I

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    invoke-virtual {v1, v0, p0}, Lcom/prineside/tdi2/managers/ScriptManager;->registerInstance(ILcom/prineside/luaj/Globals;)V

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/ResourceFinder;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->finder:Lcom/prineside/luaj/lib/ResourceFinder;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaThread;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/BaseLib;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->baselib:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/PackageLib;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->package_:Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/lib/DebugLib;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    new-instance p1, Lcom/prineside/luaj/compiler/LuaC;

    invoke-direct {p1}, Lcom/prineside/luaj/compiler/LuaC;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Globals;->loader:Lcom/prineside/luaj/Globals$Loader;

    iput-object p1, p0, Lcom/prineside/luaj/Globals;->compiler:Lcom/prineside/luaj/Globals$Compiler;

    new-instance p1, Lcom/prineside/luaj/LoadState$GlobalsUndumper;

    invoke-direct {p1}, Lcom/prineside/luaj/LoadState$GlobalsUndumper;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Globals;->undumper:Lcom/prineside/luaj/Globals$Undumper;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaTable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/luaj/Globals;->instanceId:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->finder:Lcom/prineside/luaj/lib/ResourceFinder;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->baselib:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->package_:Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->specialValues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public yield(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaThread;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaThread$State;->lua_yield(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/prineside/luaj/LuaError;

    const-string v0, "cannot yield main thread"

    invoke-direct {p1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
