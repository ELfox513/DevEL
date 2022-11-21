.class public final Lcom/prineside/luaj/lib/DebugLib$upvalueid;
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
    name = "upvalueid"
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

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkfunction(I)Lcom/prineside/luaj/LuaFunction;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result p1

    instance-of v2, v1, Lcom/prineside/luaj/LuaClosure;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/prineside/luaj/LuaClosure;

    iget-object v1, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    array-length v2, v1

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
