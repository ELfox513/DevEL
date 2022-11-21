.class public Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerScriptProxy"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/managers/ScriptManager;->SCRIPT_PROXIES:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$MinerSystemListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/systems/k;

    invoke-direct {v2}, Lcom/prineside/tdi2/systems/k;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->b(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;-><init>()V

    iput-object p0, v0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public minerBuilt(Lcom/prineside/tdi2/Miner;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "minerBuilt"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->cachedInt(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_0
    return-void
.end method

.method public minerResourcesChanged(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "minerResourcesChanged"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-static {p3}, Lcom/prineside/luaj/LuaValue;->cachedInt(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p3

    if-eqz p4, :cond_0

    sget-object p4, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    invoke-static {p1, p2, p3, p4}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_1
    return-void
.end method

.method public minerSold(Lcom/prineside/tdi2/Miner;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "minerSold"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->cachedInt(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_0
    return-void
.end method

.method public minerUpgraded(Lcom/prineside/tdi2/Miner;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "minerUpgraded"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->cachedInt(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
