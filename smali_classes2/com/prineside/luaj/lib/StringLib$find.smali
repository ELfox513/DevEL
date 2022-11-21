.class public final Lcom/prineside/luaj/lib/StringLib$find;
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
    name = "find"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/prineside/luaj/lib/StringLib;->v(Lcom/prineside/luaj/Varargs;Z)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
