.class public final Lr4/t64;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m64;


# instance fields
.field public final a:Lr4/wb;

.field public final synthetic b:Lr4/v64;


# direct methods
.method public constructor <init>(Lr4/v64;)V
    .locals 2

    iput-object p1, p0, Lr4/t64;->b:Lr4/v64;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lr4/wb;

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lr4/wb;-><init>([BI)V

    iput-object p1, p0, Lr4/t64;->a:Lr4/wb;

    return-void
.end method


# virtual methods
.method public final b(Lr4/fc;Lr4/d04;Lr4/z64;)V
    .locals 0

    return-void
.end method

.method public final c(Lr4/xb;)V
    .locals 9

    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lr4/xb;->v()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lr4/xb;->s(I)V

    invoke-virtual {p1}, Lr4/xb;->l()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lr4/t64;->a:Lr4/wb;

    invoke-virtual {p1, v4, v1}, Lr4/xb;->t(Lr4/wb;I)V

    iget-object v4, p0, Lr4/t64;->a:Lr4/wb;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lr4/wb;->h(I)I

    move-result v4

    iget-object v5, p0, Lr4/t64;->a:Lr4/wb;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lr4/wb;->f(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    iget-object v4, p0, Lr4/t64;->a:Lr4/wb;

    invoke-virtual {v4, v5}, Lr4/wb;->f(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lr4/t64;->a:Lr4/wb;

    invoke-virtual {v4, v5}, Lr4/wb;->h(I)I

    move-result v4

    iget-object v5, p0, Lr4/t64;->b:Lr4/v64;

    invoke-static {v5}, Lr4/v64;->c(Lr4/v64;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lr4/t64;->b:Lr4/v64;

    invoke-static {v5}, Lr4/v64;->c(Lr4/v64;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lr4/n64;

    new-instance v7, Lr4/u64;

    iget-object v8, p0, Lr4/t64;->b:Lr4/v64;

    invoke-direct {v7, v8, v4}, Lr4/u64;-><init>(Lr4/v64;I)V

    invoke-direct {v6, v7}, Lr4/n64;-><init>(Lr4/m64;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lr4/t64;->b:Lr4/v64;

    invoke-static {v4}, Lr4/v64;->k(Lr4/v64;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lr4/v64;->l(Lr4/v64;I)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lr4/t64;->b:Lr4/v64;

    invoke-static {p1}, Lr4/v64;->c(Lr4/v64;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
