.class public Lcom/prineside/luaj/ast/Exp$FieldExp;
.super Lcom/prineside/luaj/ast/Exp$VarExp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldExp"
.end annotation


# instance fields
.field public final lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

.field public final name:Lcom/prineside/luaj/ast/Name;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp$VarExp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$FieldExp;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    new-instance p1, Lcom/prineside/luaj/ast/Name;

    invoke-direct {p1, p2}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$FieldExp;->name:Lcom/prineside/luaj/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$FieldExp;)V

    return-void
.end method
