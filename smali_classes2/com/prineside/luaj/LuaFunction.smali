.class public abstract Lcom/prineside/luaj/LuaFunction;
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
.method public checkfunction()Lcom/prineside/luaj/LuaFunction;
    .locals 0

    return-object p0
.end method

.method public classnamestub()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaFunction;->s_metatable:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public isfunction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optfunction(Lcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    return-object p0
.end method

.method public strvalue()Lcom/prineside/luaj/LuaString;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaFunction;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "function"

    return-object v0
.end method
