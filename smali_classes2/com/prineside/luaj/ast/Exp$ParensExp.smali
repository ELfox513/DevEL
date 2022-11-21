.class public Lcom/prineside/luaj/ast/Exp$ParensExp;
.super Lcom/prineside/luaj/ast/Exp$PrimaryExp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParensExp"
.end annotation


# instance fields
.field public final exp:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp$PrimaryExp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Exp$ParensExp;->exp:Lcom/prineside/luaj/ast/Exp;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$ParensExp;)V

    return-void
.end method
