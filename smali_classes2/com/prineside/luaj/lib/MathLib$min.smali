.class public Lcom/prineside/luaj/lib/MathLib$min;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "min"
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

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkvalue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x2

    :goto_0
    if-gt v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkvalue(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/prineside/luaj/LuaValue;->lt_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
