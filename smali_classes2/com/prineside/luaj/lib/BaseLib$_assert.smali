.class public final Lcom/prineside/luaj/lib/BaseLib$_assert;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "_assert"
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

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "assertion failed!"

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    return-object p1
.end method
