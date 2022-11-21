.class public final Lcom/prineside/luaj/lib/jse/JavaClass;
.super Lcom/prineside/luaj/lib/jse/JavaInstance;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/lib/jse/CoerceJavaToLua$Coercion;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final A:Lcom/prineside/luaj/LuaValue;

.field public static final z:Ljava/util/Map;


# instance fields
.field public w:Ljava/util/Map;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public x:Ljava/util/Map;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:Ljava/util/Map;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/jse/JavaClass;->z:Ljava/util/Map;

    const-string v0, "new"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/jse/JavaClass;->A:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/jse/JavaInstance;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/jse/JavaInstance;-><init>(Ljava/lang/Object;)V

    iput-object p0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    return-void
.end method

.method public static r(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/JavaClass;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/lib/jse/JavaClass;->z:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/luaj/lib/jse/JavaClass;

    if-nez v1, :cond_0

    new-instance v1, Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-direct {v1, p0}, Lcom/prineside/luaj/lib/jse/JavaClass;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public getConstructor()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/lib/jse/JavaClass;->A:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/jse/JavaClass;->u(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public s(Lcom/prineside/luaj/LuaValue;)Ljava/lang/reflect/Field;
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->w:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->w:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->w:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    return-object p1
.end method

.method public t(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Class;
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->y:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->y:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->y:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public u(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 7

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->x:Ljava/util/Map;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v4}, Lcom/prineside/luaj/lib/jse/JavaMethod;->u(Ljava/lang/reflect/Method;)Lcom/prineside/luaj/lib/jse/JavaMethod;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_4

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v6, v3, v5

    invoke-static {v6}, Lcom/prineside/luaj/lib/jse/JavaConstructor;->u(Ljava/lang/reflect/Constructor;)Lcom/prineside/luaj/lib/jse/JavaConstructor;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v5, :cond_5

    sget-object v3, Lcom/prineside/luaj/lib/jse/JavaClass;->A:Lcom/prineside/luaj/LuaValue;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/prineside/luaj/lib/jse/JavaConstructor;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/prineside/luaj/lib/jse/JavaConstructor;

    invoke-static {v4}, Lcom/prineside/luaj/lib/jse/JavaConstructor;->forConstructors([Lcom/prineside/luaj/lib/jse/JavaConstructor;)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/prineside/luaj/lib/jse/JavaClass;->A:Lcom/prineside/luaj/LuaValue;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_7

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/prineside/luaj/lib/jse/JavaMethod;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/prineside/luaj/lib/jse/JavaMethod;

    invoke-static {v3}, Lcom/prineside/luaj/lib/jse/JavaMethod;->v([Lcom/prineside/luaj/lib/jse/JavaMethod;)Lcom/prineside/luaj/LuaFunction;

    move-result-object v3

    :goto_4
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iput-object v1, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->x:Ljava/util/Map;

    :cond_9
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaClass;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
