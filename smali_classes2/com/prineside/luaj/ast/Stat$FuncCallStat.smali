.class public Lcom/prineside/luaj/ast/Stat$FuncCallStat;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuncCallStat"
.end annotation


# instance fields
.field public final funccall:Lcom/prineside/luaj/ast/Exp$FuncCall;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp$FuncCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$FuncCallStat;->funccall:Lcom/prineside/luaj/ast/Exp$FuncCall;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$FuncCallStat;)V

    return-void
.end method
