.class public final Lcom/prineside/luaj/lib/StringLib$sub;
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
    name = "sub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v3

    invoke-static {v3, v2}, Lcom/prineside/luaj/lib/StringLib;->u(II)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    invoke-static {p1, v2}, Lcom/prineside/luaj/lib/StringLib;->u(II)I

    move-result p1

    if-ge v3, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    if-gt v3, v2, :cond_2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3, v2}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    return-object p1
.end method
