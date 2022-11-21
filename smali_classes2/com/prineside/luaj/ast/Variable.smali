.class public Lcom/prineside/luaj/ast/Variable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final definingScope:Lcom/prineside/luaj/ast/NameScope;

.field public hasassignments:Z

.field public initialValue:Lcom/prineside/luaj/LuaValue;

.field public isupvalue:Z

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Variable;->name:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/luaj/ast/Variable;->definingScope:Lcom/prineside/luaj/ast/NameScope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/prineside/luaj/ast/NameScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Variable;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Variable;->definingScope:Lcom/prineside/luaj/ast/NameScope;

    return-void
.end method


# virtual methods
.method public isConstant()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/ast/Variable;->hasassignments:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/ast/Variable;->initialValue:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/ast/Variable;->definingScope:Lcom/prineside/luaj/ast/NameScope;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
