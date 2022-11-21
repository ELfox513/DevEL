.class Lcom/prineside/luaj/compiler/LuaC$CompileState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LuaC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompileState"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->b:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 4

    new-instance v0, Lcom/prineside/luaj/compiler/LexState;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/compiler/LexState;-><init>(Lcom/prineside/luaj/compiler/LuaC$CompileState;Ljava/io/InputStream;)V

    new-instance v1, Lcom/prineside/luaj/compiler/FuncState;

    invoke-direct {v1}, Lcom/prineside/luaj/compiler/FuncState;-><init>()V

    iput-object v1, v0, Lcom/prineside/luaj/compiler/LexState;->f:Lcom/prineside/luaj/compiler/FuncState;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {v0, p0, v2, p1, v3}, Lcom/prineside/luaj/compiler/LexState;->Z0(Lcom/prineside/luaj/compiler/LuaC$CompileState;ILjava/io/InputStream;Lcom/prineside/luaj/LuaString;)V

    new-instance p1, Lcom/prineside/luaj/Prototype;

    invoke-direct {p1}, Lcom/prineside/luaj/Prototype;-><init>()V

    iput-object p1, v1, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/compiler/LexState;->mainfunc(Lcom/prineside/luaj/compiler/FuncState;)V

    iget-object p1, v1, Lcom/prineside/luaj/compiler/FuncState;->c:Lcom/prineside/luaj/compiler/FuncState;

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object p1, v0, Lcom/prineside/luaj/compiler/LexState;->k:Lcom/prineside/luaj/compiler/LexState$Dyndata;

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->b:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->d:I

    if-nez v0, :cond_1

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$Dyndata;->f:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/prineside/luaj/compiler/Constants;->k(Z)V

    iget-object p1, v1, Lcom/prineside/luaj/compiler/FuncState;->a:Lcom/prineside/luaj/Prototype;

    return-object p1
.end method

.method public cachedLuaString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaString;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/compiler/LuaC$CompileState;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public newTString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->cachedLuaString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public newTString(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->cachedLuaString(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pushfstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
