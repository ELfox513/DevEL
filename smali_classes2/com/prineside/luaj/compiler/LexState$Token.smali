.class Lcom/prineside/luaj/compiler/LexState$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/prineside/luaj/compiler/LexState$SemInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/luaj/compiler/LexState$SemInfo;-><init>(Lcom/prineside/luaj/compiler/LexState$1;)V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/compiler/LexState$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/compiler/LexState$Token;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/prineside/luaj/compiler/LexState$Token;)V
    .locals 2

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState$Token;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$Token;->b:Lcom/prineside/luaj/compiler/LexState$SemInfo;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;

    iput-object v1, v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;->a:Lcom/prineside/luaj/LuaValue;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    iput-object p1, v0, Lcom/prineside/luaj/compiler/LexState$SemInfo;->b:Lcom/prineside/luaj/LuaString;

    return-void
.end method
