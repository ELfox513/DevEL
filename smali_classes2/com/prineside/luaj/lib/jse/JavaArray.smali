.class Lcom/prineside/luaj/lib/jse/JavaArray;
.super Lcom/prineside/luaj/LuaUserdata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/JavaArray$LenFunction;
    }
.end annotation


# static fields
.field public static final u:Lcom/prineside/luaj/LuaValue;

.field public static final w:Lcom/prineside/luaj/LuaTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "length"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/jse/JavaArray;->u:Lcom/prineside/luaj/LuaValue;

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    sput-object v0, Lcom/prineside/luaj/lib/jse/JavaArray;->w:Lcom/prineside/luaj/LuaTable;

    sget-object v1, Lcom/prineside/luaj/LuaValue;->LEN:Lcom/prineside/luaj/LuaString;

    new-instance v2, Lcom/prineside/luaj/lib/jse/JavaArray$LenFunction;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/prineside/luaj/lib/jse/JavaArray$LenFunction;-><init>(Lcom/prineside/luaj/lib/jse/JavaArray$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/luaj/LuaTable;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/LuaUserdata;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lcom/prineside/luaj/lib/jse/JavaArray;->w:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaUserdata;->setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method


# virtual methods
.method public get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/lib/jse/JavaArray;->u:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1

    :cond_2
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaUserdata;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/prineside/luaj/lib/jse/CoerceLuaToJava;->coerce(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaUserdata;->m_metatable:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/LuaValue;->n(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    const-string p1, "array index out of bounds"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/LuaUserdata;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_3
    :goto_0
    return-void
.end method
