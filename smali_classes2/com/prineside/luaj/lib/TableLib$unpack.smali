.class public Lcom/prineside/luaj/lib/TableLib$unpack;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/TableLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unpack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checktable(I)Lcom/prineside/luaj/LuaTable;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaTable;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v0}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result v0

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/prineside/luaj/LuaTable;->unpack(II)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
