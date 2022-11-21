.class public Lcom/prineside/luaj/ast/TableField;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# instance fields
.field public final index:Lcom/prineside/luaj/ast/Exp;

.field public final name:Ljava/lang/String;

.field public final rhs:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp;Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/TableField;->index:Lcom/prineside/luaj/ast/Exp;

    iput-object p2, p0, Lcom/prineside/luaj/ast/TableField;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/prineside/luaj/ast/TableField;->rhs:Lcom/prineside/luaj/ast/Exp;

    return-void
.end method

.method public static keyedField(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/prineside/luaj/ast/TableField;-><init>(Lcom/prineside/luaj/ast/Exp;Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static listField(Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lcom/prineside/luaj/ast/TableField;-><init>(Lcom/prineside/luaj/ast/Exp;Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static namedField(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/TableField;
    .locals 2

    new-instance v0, Lcom/prineside/luaj/ast/TableField;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/prineside/luaj/ast/TableField;-><init>(Lcom/prineside/luaj/ast/Exp;Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/TableField;)V

    return-void
.end method
