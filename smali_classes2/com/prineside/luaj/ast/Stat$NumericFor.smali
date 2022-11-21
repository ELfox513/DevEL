.class public Lcom/prineside/luaj/ast/Stat$NumericFor;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericFor"
.end annotation


# instance fields
.field public final block:Lcom/prineside/luaj/ast/Block;

.field public final initial:Lcom/prineside/luaj/ast/Exp;

.field public final limit:Lcom/prineside/luaj/ast/Exp;

.field public final name:Lcom/prineside/luaj/ast/Name;

.field public scope:Lcom/prineside/luaj/ast/NameScope;

.field public final step:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    new-instance v0, Lcom/prineside/luaj/ast/Name;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/luaj/ast/Stat$NumericFor;->name:Lcom/prineside/luaj/ast/Name;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$NumericFor;->initial:Lcom/prineside/luaj/ast/Exp;

    iput-object p3, p0, Lcom/prineside/luaj/ast/Stat$NumericFor;->limit:Lcom/prineside/luaj/ast/Exp;

    iput-object p4, p0, Lcom/prineside/luaj/ast/Stat$NumericFor;->step:Lcom/prineside/luaj/ast/Exp;

    iput-object p5, p0, Lcom/prineside/luaj/ast/Stat$NumericFor;->block:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$NumericFor;)V

    return-void
.end method
