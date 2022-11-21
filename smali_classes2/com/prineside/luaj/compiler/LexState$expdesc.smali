.class Lcom/prineside/luaj/compiler/LexState$expdesc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/compiler/LexState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "expdesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/compiler/LexState$expdesc$U;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

.field public final c:Lcom/prineside/luaj/compiler/IntPtr;

.field public final d:Lcom/prineside/luaj/compiler/IntPtr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    new-instance v0, Lcom/prineside/luaj/compiler/IntPtr;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    new-instance v0, Lcom/prineside/luaj/compiler/IntPtr;

    invoke-direct {v0}, Lcom/prineside/luaj/compiler/IntPtr;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget-object v1, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v1, v1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    const/4 v1, -0x1

    iput v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iput v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput p1, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object p1, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iput p2, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v0, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setvalue(Lcom/prineside/luaj/compiler/LexState$expdesc;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->d:Lcom/prineside/luaj/compiler/IntPtr;

    iget v1, v1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget v0, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iput v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->c:Lcom/prineside/luaj/compiler/IntPtr;

    iget v1, v1, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iput v1, v0, Lcom/prineside/luaj/compiler/IntPtr;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-object v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    invoke-static {v1}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a(Lcom/prineside/luaj/compiler/LexState$expdesc$U;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b(Lcom/prineside/luaj/compiler/LexState$expdesc$U;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    iget-object v0, p0, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-object p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc;->b:Lcom/prineside/luaj/compiler/LexState$expdesc$U;

    iget-short v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    iput-short v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->a:S

    iget-short v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    iput-short v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->b:S

    iget-short v1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    iput-short v1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->c:S

    iget p1, p1, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    iput p1, v0, Lcom/prineside/luaj/compiler/LexState$expdesc$U;->e:I

    return-void
.end method
