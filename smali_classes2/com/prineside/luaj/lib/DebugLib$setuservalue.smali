.class public final Lcom/prineside/luaj/lib/DebugLib$setuservalue;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setuservalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkuserdata(I)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkvalue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaUserdata;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->getmetatable()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/luaj/LuaUserdata;->m_metatable:Lcom/prineside/luaj/LuaValue;

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "u.m_instance is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
