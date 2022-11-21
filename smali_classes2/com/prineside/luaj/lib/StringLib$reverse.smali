.class public final Lcom/prineside/luaj/lib/StringLib$reverse;
.super Lcom/prineside/luaj/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "reverse"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    new-array v1, v0, [B

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/prineside/luaj/LuaString;->valueUsing([B)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method
