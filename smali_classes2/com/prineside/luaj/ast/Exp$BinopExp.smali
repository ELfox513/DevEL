.class public Lcom/prineside/luaj/ast/Exp$BinopExp;
.super Lcom/prineside/luaj/ast/Exp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinopExp"
.end annotation


# instance fields
.field public final lhs:Lcom/prineside/luaj/ast/Exp;

.field public final op:I

.field public final rhs:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp;ILcom/prineside/luaj/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$BinopExp;->lhs:Lcom/prineside/luaj/ast/Exp;

    iput p2, p0, Lcom/prineside/luaj/ast/Exp$BinopExp;->op:I

    iput-object p3, p0, Lcom/prineside/luaj/ast/Exp$BinopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$BinopExp;)V

    return-void
.end method
