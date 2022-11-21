.class public Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptEnvironment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;
    }
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/Globals;

.field public b:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/luaj/LuaClosure;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string p1, "ScriptManager"

    const-string v0, "ScriptEnvironment created"

    invoke-static {p1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)Lcom/prineside/luaj/Globals;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 11

    const-string v0, "ScriptManager"

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    if-nez v1, :cond_b

    new-instance v1, Lcom/prineside/luaj/Globals;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/ScriptManager;->getFreeInstanceId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/prineside/luaj/Globals;-><init>(I)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/jse/JseBaseLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/jse/JseBaseLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/PackageLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/PackageLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/Bit32Lib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/Bit32Lib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/TableLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/TableLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/StringLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/StringLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/CoroutineLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/CoroutineLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/jse/JseMathLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/jse/JseMathLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    new-instance v1, Lcom/prineside/tdi2/managers/ScriptManager$LuajavaFixedLib;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/ScriptManager$LuajavaFixedLib;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    iput-object v2, v1, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/luaj/lib/DebugLib;

    invoke-direct {v2}, Lcom/prineside/luaj/lib/DebugLib;-><init>()V

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    invoke-static {v1}, Lcom/prineside/luaj/LoadState;->install(Lcom/prineside/luaj/Globals;)V

    new-instance v1, Lcom/prineside/luaj/compiler/LuaC;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/LuaC;-><init>()V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    iput-object v1, v2, Lcom/prineside/luaj/Globals;->compiler:Lcom/prineside/luaj/Globals$Compiler;

    iput-object v1, v2, Lcom/prineside/luaj/Globals;->loader:Lcom/prineside/luaj/Globals$Loader;

    new-instance v1, Lcom/prineside/tdi2/managers/ScriptManager$luaLog;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/ScriptManager$luaLog;-><init>()V

    const-string v3, "log"

    invoke-virtual {v2, v3, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$luaWarning;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ScriptManager$luaWarning;-><init>()V

    const-string v3, "warning"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$luaAddEventHandler;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/ScriptManager$luaAddEventHandler;-><init>(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)V

    const-string v3, "addEventHandler"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;-><init>(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)V

    const-string v3, "removeEventHandler"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$luaGetFields;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ScriptManager$luaGetFields;-><init>()V

    const-string v3, "getFields"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$luaGetMethods;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ScriptManager$luaGetMethods;-><init>()V

    const-string v3, "getMethods"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v2, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    const-string v3, "reflection"

    invoke-virtual {v2, v3, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    sget-object v2, Lcom/prineside/tdi2/Game;->r:Lcom/prineside/tdi2/Registry;

    invoke-static {v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    const-string v3, "reg"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    sget-object v2, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    const-string v3, "_noSyncCheck"

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->managers:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Manager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    new-instance v4, Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;

    invoke-direct {v4, v1}, Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;-><init>(Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "managers"

    invoke-virtual {v3, v1, v4}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v3, Lcom/badlogic/gdx/files/FileHandle;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v4, v3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "scripts"

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    array-length v6, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v3, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x0

    :goto_3
    iget v9, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_4

    iget-object v9, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/badlogic/gdx/files/FileHandle;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_5

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_6
    iget v5, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_8

    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/badlogic/gdx/files/FileHandle;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/badlogic/gdx/files/FileHandle;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->loadScript(Lcom/badlogic/gdx/files/FileHandle;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded script: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;
    .locals 11

    const-string v0, "__scriptTranslations"

    const-string v1, "ScriptManager"

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    new-instance v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    invoke-direct {v2}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    invoke-virtual {v3, p1, p2}, Lcom/prineside/luaj/Globals;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iput-object p1, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->a:Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast p1, Lcom/prineside/luaj/LuaTable;

    sget-object v3, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-virtual {p1, v3}, Lcom/prineside/luaj/LuaTable;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, " __scriptTranslations."

    if-eqz v6, :cond_3

    :try_start_2
    new-instance v6, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v8, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v8

    if-eqz v8, :cond_5

    check-cast v3, Lcom/prineside/luaj/LuaTable;

    sget-object v8, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_1
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaTable;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v8, v5}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v8

    invoke-virtual {v9}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is not a string or key is not a string"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v8, v9

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is not a string and key is not an i18n alias"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_3
    move-object v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "failed to get script translations"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "Failed to execute Lua script"

    invoke-static {v1, p2, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->errorMessage:Ljava/lang/String;

    :goto_5
    return-object v2
.end method

.method public getGlobals()Lcom/prineside/luaj/Globals;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    return-object v0
.end method

.method public loadScript(Lcom/badlogic/gdx/files/FileHandle;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;
    .locals 2

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CP] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->executeLua(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Globals;

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    const-class v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/ObjectMap;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method

.method public triggerEvent(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/luaj/LuaClosure;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaClosure;->call()Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error running script with event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScriptManager"

    invoke-static {v5, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/luaj/LuaClosure;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Lcom/prineside/luaj/LuaClosure;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error running script with event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScriptManager"

    invoke-static {v5, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/luaj/LuaClosure;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2, p3}, Lcom/prineside/luaj/LuaClosure;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error running script with event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScriptManager"

    invoke-static {v5, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->c()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/luaj/LuaClosure;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2, p3, p4}, Lcom/prineside/luaj/LuaClosure;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error running script with event \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScriptManager"

    invoke-static {v5, v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_1
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->a:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
