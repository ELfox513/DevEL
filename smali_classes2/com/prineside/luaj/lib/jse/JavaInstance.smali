.class public Lcom/prineside/luaj/lib/jse/JavaInstance;
.super Lcom/prineside/luaj/LuaUserdata;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public u:Lcom/prineside/luaj/lib/jse/JavaClass;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaUserdata;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/LuaUserdata;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/jse/JavaInstance;->q()V

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/jse/JavaClass;->s(Lcom/prineside/luaj/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/prineside/luaj/LuaError;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/jse/JavaClass;->u(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/jse/JavaClass;->t(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JavaClass;->r(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/JavaClass;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaUserdata;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/lib/jse/JavaClass;->r(Ljava/lang/Class;)Lcom/prineside/luaj/lib/jse/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaUserdata;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/jse/JavaClass;

    iput-object p1, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    return-void
.end method

.method public set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/jse/JavaInstance;->q()V

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/jse/JavaClass;->s(Lcom/prineside/luaj/LuaValue;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->coerce(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/prineside/luaj/LuaError;

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaUserdata;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaUserdata;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/jse/JavaInstance;->u:Lcom/prineside/luaj/lib/jse/JavaClass;

    const-class v1, Lcom/prineside/luaj/lib/jse/JavaClass;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
