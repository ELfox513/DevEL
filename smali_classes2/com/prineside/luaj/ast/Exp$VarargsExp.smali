.class public Lcom/prineside/luaj/ast/Exp$VarargsExp;
.super Lcom/prineside/luaj/ast/Exp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VarargsExp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$VarargsExp;)V

    return-void
.end method

.method public isvarargexp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
