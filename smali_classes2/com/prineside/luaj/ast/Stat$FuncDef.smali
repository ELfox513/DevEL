.class public Lcom/prineside/luaj/ast/Stat$FuncDef;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncDef"
.end annotation


# instance fields
.field public final body:Lcom/prineside/luaj/ast/FuncBody;

.field public final name:Lcom/prineside/luaj/ast/FuncName;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/FuncName;Lcom/prineside/luaj/ast/FuncBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$FuncDef;->name:Lcom/prineside/luaj/ast/FuncName;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$FuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$FuncDef;)V

    return-void
.end method
