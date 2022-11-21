.class public Lcom/prineside/luaj/ast/Stat$WhileDo;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhileDo"
.end annotation


# instance fields
.field public final block:Lcom/prineside/luaj/ast/Block;

.field public final exp:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$WhileDo;->exp:Lcom/prineside/luaj/ast/Exp;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$WhileDo;->block:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$WhileDo;)V

    return-void
.end method
