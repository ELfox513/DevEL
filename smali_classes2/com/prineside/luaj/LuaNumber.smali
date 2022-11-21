.class public abstract Lcom/prineside/luaj/LuaNumber;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"


# static fields
.field public static s_metatable:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknumber()Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public checknumber(Ljava/lang/String;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public concat(Lcom/prineside/luaj/Buffer;)Lcom/prineside/luaj/Buffer;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/Buffer;->concatTo(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/LuaValue;->concatTo(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaString;->concatTo(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaString;->concatTo(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaNumber;->s_metatable:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public isnumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public optnumber(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public tonumber()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "number"

    return-object v0
.end method
