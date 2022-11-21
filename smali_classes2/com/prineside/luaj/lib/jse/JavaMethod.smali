.class Lcom/prineside/luaj/lib/jse/JavaMethod;
.super Lcom/prineside/luaj/lib/jse/JavaMember;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;
    }
.end annotation


# static fields
.field public static final A:Ljava/util/Map;


# instance fields
.field public final z:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/jse/JavaMethod;->A:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/prineside/luaj/lib/jse/JavaMember;-><init>([Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JavaMethod;->z:Ljava/lang/reflect/Method;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static u(Ljava/lang/reflect/Method;)Lcom/prineside/luaj/lib/jse/JavaMethod;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/lib/jse/JavaMethod;->A:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/luaj/lib/jse/JavaMethod;

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/luaj/lib/jse/JavaMethod;

    invoke-direct {v1, p0}, Lcom/prineside/luaj/lib/jse/JavaMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static v([Lcom/prineside/luaj/lib/jse/JavaMethod;)Lcom/prineside/luaj/LuaFunction;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/lib/jse/JavaMethod$Overload;-><init>([Lcom/prineside/luaj/lib/jse/JavaMethod;)V

    return-object v0
.end method


# virtual methods
.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    const-string v0, "method cannot be called without instance"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, p1, v0}, Lcom/prineside/luaj/lib/jse/JavaMethod;->w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/jse/JavaMethod;->w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/jse/JavaMethod;->w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkuserdata(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/lib/jse/JavaMethod;->w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Object;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/lib/jse/JavaMember;->s(Lcom/prineside/luaj/Varargs;)[Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaMethod;->z:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "coercion error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lcom/prineside/luaj/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
