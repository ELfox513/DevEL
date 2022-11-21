.class public Lcom/prineside/luaj/ast/Exp$MethodCall;
.super Lcom/prineside/luaj/ast/Exp$FuncCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodCall"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Ljava/lang/String;Lcom/prineside/luaj/ast/FuncArgs;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/prineside/luaj/ast/Exp$FuncCall;-><init>(Lcom/prineside/luaj/ast/Exp$PrimaryExp;Lcom/prineside/luaj/ast/FuncArgs;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$MethodCall;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$MethodCall;)V

    return-void
.end method

.method public isfunccall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
