.class public final Lcom/prineside/luaj/lib/StringLib$gmatch;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "gmatch"
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

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    new-instance v2, Lcom/prineside/luaj/lib/StringLib$GMatchAux;

    invoke-direct {v2, p1, v0, v1}, Lcom/prineside/luaj/lib/StringLib$GMatchAux;-><init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V

    return-object v2
.end method
