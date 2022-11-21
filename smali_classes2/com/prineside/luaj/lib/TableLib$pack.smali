.class public Lcom/prineside/luaj/lib/TableLib$pack;
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
    name = "pack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->tableOf(Lcom/prineside/luaj/Varargs;I)Lcom/prineside/luaj/LuaTable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result p1

    const-string v1, "n"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;I)V

    return-object v0
.end method
