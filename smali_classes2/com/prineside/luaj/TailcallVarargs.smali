.class public Lcom/prineside/luaj/TailcallVarargs;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# instance fields
.field public a:Lcom/prineside/luaj/LuaValue;

.field public b:Lcom/prineside/luaj/Varargs;

.field public d:Lcom/prineside/luaj/Varargs;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    iput-object p2, p0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    invoke-static {p1, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    iput-object p2, p0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/TailcallVarargs;->eval()Lcom/prineside/luaj/Varargs;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/TailcallVarargs;->eval()Lcom/prineside/luaj/Varargs;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public eval()Lcom/prineside/luaj/Varargs;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    iget-object v1, p0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->onInvoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->isTailcall()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/prineside/luaj/TailcallVarargs;

    iget-object v1, v0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    iput-object v1, p0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    iget-object v0, v0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->a:Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->b:Lcom/prineside/luaj/Varargs;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isTailcall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public narg()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/TailcallVarargs;->eval()Lcom/prineside/luaj/Varargs;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/TailcallVarargs;->eval()Lcom/prineside/luaj/Varargs;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/TailcallVarargs;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
