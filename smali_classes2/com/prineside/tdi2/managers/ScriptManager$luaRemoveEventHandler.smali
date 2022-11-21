.class public Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "luaRemoveEventHandler"
.end annotation


# instance fields
.field public x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;->x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    const-string v1, " given"

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/prineside/luaj/LuaClosure;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;->x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;->x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;->b(Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;)Lcom/badlogic/gdx/utils/ObjectMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    check-cast p2, Lcom/prineside/luaj/LuaClosure;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object p1

    :cond_1
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "second argument must be a callback function, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first argument must be a string with event name, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->typename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;->x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$luaRemoveEventHandler;->x:Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
