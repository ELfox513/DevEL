.class public Lcom/prineside/luaj/compiler/LuaC;
.super Lcom/prineside/luaj/compiler/Constants;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/Globals$Compiler;
.implements Lcom/prineside/luaj/Globals$Loader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/compiler/LuaC$CompileState;
    }
.end annotation


# static fields
.field public static final instance:Lcom/prineside/luaj/compiler/LuaC;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/luaj/compiler/LuaC;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LuaC;-><init>()V

    sput-object v0, Lcom/prineside/luaj/compiler/LuaC;->instance:Lcom/prineside/luaj/compiler/LuaC;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/compiler/Constants;-><init>()V

    return-void
.end method

.method public static install(Lcom/prineside/luaj/Globals;)V
    .locals 1

    sget-object v0, Lcom/prineside/luaj/compiler/LuaC;->instance:Lcom/prineside/luaj/compiler/LuaC;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->compiler:Lcom/prineside/luaj/Globals$Compiler;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->loader:Lcom/prineside/luaj/Globals$Loader;

    return-void
.end method


# virtual methods
.method public compile(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/compiler/LuaC$CompileState;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LuaC$CompileState;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/prineside/luaj/compiler/LuaC$CompileState;->a(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/prineside/luaj/Prototype;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    new-instance p2, Lcom/prineside/luaj/LuaClosure;

    invoke-direct {p2, p1, p3}, Lcom/prineside/luaj/LuaClosure;-><init>(Lcom/prineside/luaj/Prototype;Lcom/prineside/luaj/LuaValue;)V

    return-object p2
.end method

.method public load(Ljava/io/InputStream;Ljava/lang/String;Lcom/prineside/luaj/Globals;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaClosure;

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/compiler/LuaC;->compile(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/prineside/luaj/LuaClosure;-><init>(Lcom/prineside/luaj/Prototype;Lcom/prineside/luaj/LuaValue;)V

    return-object v0
.end method
