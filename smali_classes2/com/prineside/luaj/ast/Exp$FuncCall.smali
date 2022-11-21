.class public Lcom/prineside/luaj/ast/Exp$FuncCall;
.super Lcom/prineside/luaj/ast/Exp$PrimaryExp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncCall"
.end annotation


# instance fields
.field public final args:Lcom/prineside/luaj/ast/FuncArgs;

.field public final lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/FuncArgs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp$PrimaryExp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$FuncCall;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Exp$FuncCall;->args:Lcom/prineside/luaj/ast/FuncArgs;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$FuncCall;)V

    return-void
.end method

.method public isfunccall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
