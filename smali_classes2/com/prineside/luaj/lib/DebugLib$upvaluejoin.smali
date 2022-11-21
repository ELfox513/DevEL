.class public final Lcom/prineside/luaj/lib/DebugLib$upvaluejoin;
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
    name = "upvaluejoin"
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

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkclosure(I)Lcom/prineside/luaj/LuaClosure;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->checkclosure(I)Lcom/prineside/luaj/LuaClosure;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result p1

    const-string v4, "index out of range"

    if-lt v2, v0, :cond_0

    iget-object v5, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    array-length v5, v5

    if-le v2, v5, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    if-lt p1, v0, :cond_2

    iget-object v5, v3, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    array-length v5, v5

    if-le p1, v5, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_3
    iget-object v1, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    sub-int/2addr v2, v0

    iget-object v3, v3, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    sub-int/2addr p1, v0

    aget-object p1, v3, p1

    aput-object p1, v1, v2

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
