.class public Lcom/prineside/luaj/ast/Exp$AnonFuncDef;
.super Lcom/prineside/luaj/ast/Exp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnonFuncDef"
.end annotation


# instance fields
.field public final body:Lcom/prineside/luaj/ast/FuncBody;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/FuncBody;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$AnonFuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$AnonFuncDef;)V

    return-void
.end method
