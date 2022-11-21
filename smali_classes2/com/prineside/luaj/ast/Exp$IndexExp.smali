.class public Lcom/prineside/luaj/ast/Exp$IndexExp;
.super Lcom/prineside/luaj/ast/Exp$VarExp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexExp"
.end annotation


# instance fields
.field public final exp:Lcom/prineside/luaj/ast/Exp;

.field public final lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp$VarExp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$IndexExp;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Exp$IndexExp;->exp:Lcom/prineside/luaj/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$IndexExp;)V

    return-void
.end method
