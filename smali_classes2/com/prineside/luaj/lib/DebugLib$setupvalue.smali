.class public final Lcom/prineside/luaj/lib/DebugLib$setupvalue;
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
    name = "setupvalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkfunction(I)Lcom/prineside/luaj/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    instance-of v3, v1, Lcom/prineside/luaj/LuaClosure;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/prineside/luaj/LuaClosure;

    invoke-static {v1, v2}, Lcom/prineside/luaj/lib/DebugLib;->w(Lcom/prineside/luaj/LuaClosure;I)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/UpValue;->setValue(Lcom/prineside/luaj/LuaValue;)V

    return-object v3

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
