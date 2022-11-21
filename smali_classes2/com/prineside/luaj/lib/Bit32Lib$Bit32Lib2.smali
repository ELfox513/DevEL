.class public final Lcom/prineside/luaj/lib/Bit32Lib$Bit32Lib2;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/Bit32Lib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bit32Lib2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/lib/LibFunction;->u:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/Bit32Lib;->E(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/Bit32Lib;->D(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/Bit32Lib;->B(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/Bit32Lib;->A(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/Bit32Lib;->s(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
