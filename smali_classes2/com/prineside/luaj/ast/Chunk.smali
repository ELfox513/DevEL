.class public Lcom/prineside/luaj/ast/Chunk;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# instance fields
.field public final block:Lcom/prineside/luaj/ast/Block;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Chunk;->block:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Chunk;)V

    return-void
.end method
