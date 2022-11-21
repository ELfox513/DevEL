.class public Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BoolCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$IntCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$CharCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$DoubleCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$StringCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BytesCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ClassCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$InstanceCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ArrayCoercion;,
        Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$LuaCoercion;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

.field public static final c:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

.field public static final d:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->a:Ljava/util/Map;

    new-instance v1, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BoolCoercion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BoolCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v3, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$IntCoercion;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$IntCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v4, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$CharCoercion;

    invoke-direct {v4, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$CharCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v5, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$DoubleCoercion;

    invoke-direct {v5, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$DoubleCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v6, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$StringCoercion;

    invoke-direct {v6, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$StringCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v7, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BytesCoercion;

    invoke-direct {v7, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$BytesCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    new-instance v8, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ClassCoercion;

    invoke-direct {v8, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ClassCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    const-class v9, Ljava/lang/Boolean;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, [B

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Class;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$InstanceCoercion;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$InstanceCoercion;-><init>()V

    sput-object v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->b:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    new-instance v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ArrayCoercion;

    invoke-direct {v0, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$ArrayCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    sput-object v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->c:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    new-instance v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$LuaCoercion;

    invoke-direct {v0, v2}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$LuaCoercion;-><init>(Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$1;)V

    sput-object v0, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->d:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->c:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_0

    :cond_1
    instance-of v2, p0, Lcom/prineside/luaj/LuaValue;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->d:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->b:Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;

    :goto_0
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v2, p0}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method
