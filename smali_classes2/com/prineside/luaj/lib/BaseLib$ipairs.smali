.class public final Lcom/prineside/luaj/lib/BaseLib$ipairs;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ipairs"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/BaseLib$inext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    new-instance v0, Lcom/prineside/luaj/lib/BaseLib$inext;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/BaseLib$inext;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$ipairs;->x:Lcom/prineside/luaj/lib/BaseLib$inext;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$ipairs;->x:Lcom/prineside/luaj/lib/BaseLib$inext;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checktable(I)Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    sget-object v1, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    invoke-static {v0, p1, v1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
