.class public Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener;
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

    const-class v2, Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$EnemySystemListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/systems/b;

    invoke-direct {v2}, Lcom/prineside/tdi2/systems/b;-><init>()V

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

    invoke-static {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->b(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;-><init>()V

    iput-object p0, v0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "enemyDie"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-static {p3}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p3

    invoke-static {p4}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p4

    invoke-static {p5}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_0
    return-void
.end method

.method public enemyReachedTarget(Lcom/prineside/tdi2/Enemy;ILcom/prineside/tdi2/tiles/TargetTile;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "enemyReachedTarget"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->cachedInt(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p2

    invoke-static {p3}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isboolean()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enemyTakeDamage(Lcom/prineside/tdi2/Enemy;FLcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Projectile;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "enemyTakeDamage"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    float-to-double v1, p2

    invoke-static {v1, v2}, Lcom/prineside/luaj/LuaValue;->cachedDouble(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object p2

    invoke-static {p3}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p3

    invoke-static {p4}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p4

    invoke-static {p5}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    :cond_0
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public mdpsUpdated(D)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    const-string v1, "mdpsUpdated"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->cachedDouble(D)Lcom/prineside/luaj/LuaDouble;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->cachedVarargsOf(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

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

    iput-object p1, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$ListenerScriptProxy;->a:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
