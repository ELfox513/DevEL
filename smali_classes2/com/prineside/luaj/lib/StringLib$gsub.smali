.class public final Lcom/prineside/luaj/lib/StringLib$gsub;
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
    name = "gsub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x4

    invoke-virtual {p1, v6, v5}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result v5

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lez v6, :cond_0

    invoke-virtual {v3, v7}, Lcom/prineside/luaj/LuaString;->charAt(I)I

    move-result v6

    const/16 v8, 0x5e

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v6, Lcom/prineside/luaj/Buffer;

    invoke-direct {v6, v2}, Lcom/prineside/luaj/Buffer;-><init>(I)V

    new-instance v8, Lcom/prineside/luaj/lib/StringLib$MatchState;

    invoke-direct {v8, p1, v1, v3}, Lcom/prineside/luaj/lib/StringLib$MatchState;-><init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V

    const/4 p1, -0x1

    const/4 v3, 0x0

    const/4 v9, -0x1

    :cond_1
    if-ge v7, v5, :cond_3

    invoke-virtual {v8}, Lcom/prineside/luaj/lib/StringLib$MatchState;->o()V

    invoke-virtual {v8, v3, v0}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result v10

    if-eq v10, p1, :cond_2

    if-eq v10, v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v6, v3, v10, v4}, Lcom/prineside/luaj/lib/StringLib$MatchState;->add_value(Lcom/prineside/luaj/Buffer;IILcom/prineside/luaj/LuaValue;)V

    move v3, v10

    move v9, v3

    goto :goto_1

    :cond_2
    if-ge v3, v2, :cond_3

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v6, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    move v3, v10

    :goto_1
    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    invoke-virtual {v6}, Lcom/prineside/luaj/Buffer;->tostring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {v7}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
