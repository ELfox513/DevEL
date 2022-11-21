.class public final Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/LuajavaLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field public a:I
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->a:I

    iput p2, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->b:I

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->scriptManager:Lcom/prineside/tdi2/managers/ScriptManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ScriptManager;->globalsInstances:Lcom/badlogic/gdx/utils/IntMap;

    iget v1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->a:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Globals;

    iget v1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->b:I

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Globals;->getSpecialValue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "hashCode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "equals"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "toString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    aget-object p1, p3, v4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(proxy) "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz p3, :cond_5

    array-length v0, p3

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_7

    add-int/2addr v0, v2

    aget-object v2, p3, v0

    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    add-int v5, v0, v3

    new-array v5, v5, [Lcom/prineside/luaj/LuaValue;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_6

    aget-object v7, p3, v6

    invoke-static {v7}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v4, v3, :cond_8

    add-int p3, v4, v0

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v6

    aput-object v6, v5, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-array v5, v0, [Lcom/prineside/luaj/LuaValue;

    :goto_5
    if-ge v4, v0, :cond_8

    aget-object v2, p3, v4

    invoke-static {v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    aput-object v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    :try_start_0
    invoke-virtual {p1, v5}, Lcom/prineside/luaj/LuaValue;->invoke([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->coerce(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "LuajavaLib"

    const-string p3, "failed to execute proxy"

    invoke-static {p2, p3, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_2
        -0x4d378041 -> :sswitch_1
        0x8cdac1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->a:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->b:I

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->a:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/lib/jse/LuajavaLib$ProxyInvocationHandler;->b:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
