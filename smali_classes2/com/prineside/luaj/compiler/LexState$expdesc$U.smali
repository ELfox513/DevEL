.class Lcom/prineside/luaj/compiler/LexState$expdesc$U;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState$expdesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U"
.end annotation


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:Lcom/prineside/luaj/LuaValue;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/luaj/compiler/LexState$expdesc$U;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    iget-object p0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->d:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/luaj/compiler/LexState$expdesc$U;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->d:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method


# virtual methods
.method public nval()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->d:Lcom/prineside/luaj/LuaValue;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setNval(Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->d:Lcom/prineside/luaj/LuaValue;

    return-void
.end method
