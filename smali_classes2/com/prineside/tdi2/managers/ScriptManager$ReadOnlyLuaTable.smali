.class public Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;
.super Lcom/prineside/luaj/LuaTable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadOnlyLuaTable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaTable;->presize(II)V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;

    invoke-direct {v3, v2}, Lcom/prineside/tdi2/managers/ScriptManager$ReadOnlyLuaTable;-><init>(Lcom/prineside/luaj/LuaValue;)V

    move-object v2, v3

    :cond_0
    invoke-super {p0, v1, v2}, Lcom/prineside/luaj/LuaTable;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->next(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public rawset(ILcom/prineside/luaj/LuaValue;)V
    .locals 0

    const-string p1, "table is read-only"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    const-string p1, "table is read-only"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public remove(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "table is read-only"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/prineside/luaj/LuaValue;)V
    .locals 0

    const-string p1, "table is read-only"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const-string p1, "table is read-only"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
