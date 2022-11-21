.class public final Lcom/prineside/luaj/lib/DebugLib$getupvalue;
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
    name = "getupvalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkfunction(I)Lcom/prineside/luaj/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result p1

    instance-of v2, v1, Lcom/prineside/luaj/LuaClosure;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/prineside/luaj/LuaClosure;

    invoke-static {v1, p1}, Lcom/prineside/luaj/lib/DebugLib;->w(Lcom/prineside/luaj/LuaClosure;I)Lcom/prineside/luaj/LuaString;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/prineside/luaj/UpValue;->getValue()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
