.class public Lcom/prineside/luaj/ast/Stat$LocalFuncDef;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalFuncDef"
.end annotation


# instance fields
.field public final body:Lcom/prineside/luaj/ast/FuncBody;

.field public final name:Lcom/prineside/luaj/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/prineside/luaj/ast/FuncBody;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    new-instance v0, Lcom/prineside/luaj/ast/Name;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;->name:Lcom/prineside/luaj/ast/Name;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$LocalFuncDef;)V

    return-void
.end method
