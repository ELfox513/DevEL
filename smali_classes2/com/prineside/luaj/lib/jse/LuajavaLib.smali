.class public Lcom/prineside/luaj/lib/jse/LuajavaLib;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;
    }
.end annotation


# static fields
.field public static final x:[Ljava/lang/String;


# instance fields
.field public globals:Lcom/prineside/luaj/Globals;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bindClass"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "newInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "createProxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "loadLib"

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->x:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 7

    const-string v0, "package"

    const-string v1, "luajava"

    :try_start_0
    iget v2, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_8

    if-eq v2, v4, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_6

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    invoke-virtual {p1, v5}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/jse/LuajavaLib;->s(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    new-instance p1, Lcom/prineside/luaj/LuaError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not yet supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    sub-int/2addr v0, v5

    if-lez v0, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checktable(I)Lcom/prineside/luaj/LuaTable;

    move-result-object v1

    if-ne v0, v5, :cond_3

    invoke-virtual {p1, v5}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/managers/ScriptManager;->SCRIPT_PROXIES:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object p1, Lcom/prineside/tdi2/managers/ScriptManager;->SCRIPT_PROXIES:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/utils/ScriptProxyCreator;

    invoke-interface {p1, v1}, Lcom/prineside/tdi2/utils/ScriptProxyCreator;->get(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->userdataOf(Ljava/lang/Object;)Lcom/prineside/luaj/LuaUserdata;

    move-result-object p1

    return-object p1

    :cond_3
    new-array v2, v0, [Ljava/lang/Class;

    :goto_0
    if-ge v3, v0, :cond_4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/prineside/luaj/lib/jse/LuajavaLib;->s(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Globals;->addSpecialValue(Lcom/prineside/luaj/LuaValue;)I

    move-result p1

    new-instance v0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;

    iget-object v1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    iget v1, v1, Lcom/prineside/luaj/Globals;->instanceId:I

    invoke-direct {v0, v1, p1}, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;-><init>(II)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "LuajavaLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created proxy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->userdataOf(Ljava/lang/Object;)Lcom/prineside/luaj/LuaUserdata;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Lcom/prineside/luaj/LuaError;

    const-string v0, "no interfaces"

    invoke-direct {p1, v0}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1, v5}, Lcom/prineside/luaj/Varargs;->checkvalue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget v1, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    if-ne v1, v4, :cond_7

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/jse/LuajavaLib;->s(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JavaClass;->r(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/jse/JavaClass;->getConstructor()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p1, v5}, Lcom/prineside/luaj/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/jse/LuajavaLib;->s(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/JavaClass;->r(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/JavaClass;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    new-instance v2, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v2}, Lcom/prineside/luaj/LuaTable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Lcom/prineside/luaj/lib/jse/LuajavaLib;->x:[Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6, v5}, Lcom/prineside/luaj/lib/LibFunction;->q(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    :goto_2
    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_a

    iget-object v5, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/luaj/lib/LibFunction;

    aget-object v5, v5, v3

    check-cast v5, Lcom/prineside/luaj/lib/jse/LuajavaLib;

    iget-object v6, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    iput-object v6, v5, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    const-string v0, "loaded"

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Lcom/prineside/luaj/LuaError;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/prineside/luaj/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/lib/LibFunction;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Globals;

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public s(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/lib/LibFunction;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib;->globals:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
