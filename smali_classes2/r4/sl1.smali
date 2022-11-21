.class public final synthetic Lr4/sl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/tl1;

.field public final b:Lr4/h83;

.field public final c:Lr4/h83;

.field public final d:Lr4/h83;

.field public final e:Lr4/h83;

.field public final f:Lr4/h83;

.field public final g:Lorg/json/JSONObject;

.field public final h:Lr4/h83;

.field public final i:Lr4/h83;

.field public final j:Lr4/h83;

.field public final k:Lr4/h83;


# direct methods
.method public constructor <init>(Lr4/tl1;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;Lorg/json/JSONObject;Lr4/h83;Lr4/h83;Lr4/h83;Lr4/h83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/sl1;->a:Lr4/tl1;

    iput-object p2, p0, Lr4/sl1;->b:Lr4/h83;

    iput-object p3, p0, Lr4/sl1;->c:Lr4/h83;

    iput-object p4, p0, Lr4/sl1;->d:Lr4/h83;

    iput-object p5, p0, Lr4/sl1;->e:Lr4/h83;

    iput-object p6, p0, Lr4/sl1;->f:Lr4/h83;

    iput-object p7, p0, Lr4/sl1;->g:Lorg/json/JSONObject;

    iput-object p8, p0, Lr4/sl1;->h:Lr4/h83;

    iput-object p9, p0, Lr4/sl1;->i:Lr4/h83;

    iput-object p10, p0, Lr4/sl1;->j:Lr4/h83;

    iput-object p11, p0, Lr4/sl1;->k:Lr4/h83;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lr4/sl1;->b:Lr4/h83;

    iget-object v1, p0, Lr4/sl1;->c:Lr4/h83;

    iget-object v2, p0, Lr4/sl1;->d:Lr4/h83;

    iget-object v3, p0, Lr4/sl1;->e:Lr4/h83;

    iget-object v4, p0, Lr4/sl1;->f:Lr4/h83;

    iget-object v5, p0, Lr4/sl1;->g:Lorg/json/JSONObject;

    iget-object v6, p0, Lr4/sl1;->h:Lr4/h83;

    iget-object v7, p0, Lr4/sl1;->i:Lr4/h83;

    iget-object v8, p0, Lr4/sl1;->j:Lr4/h83;

    iget-object v9, p0, Lr4/sl1;->k:Lr4/h83;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/ej1;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lr4/ej1;->L(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/p20;

    invoke-virtual {v0, v1}, Lr4/ej1;->R(Lr4/p20;)V

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/p20;

    invoke-virtual {v0, v1}, Lr4/ej1;->S(Lr4/p20;)V

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/h20;

    invoke-virtual {v0, v1}, Lr4/ej1;->K(Lr4/h20;)V

    invoke-static {v5}, Lr4/hm1;->j(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ej1;->M(Ljava/util/List;)V

    invoke-static {v5}, Lr4/hm1;->i(Lorg/json/JSONObject;)Lr4/cy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ej1;->N(Lr4/cy;)V

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cs0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lr4/ej1;->U(Lr4/cs0;)V

    invoke-interface {v1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr4/ej1;->O(Landroid/view/View;)V

    invoke-interface {v1}, Lr4/cs0;->f()Lr4/at0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ej1;->J(Lr4/lx;)V

    :cond_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cs0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lr4/ej1;->V(Lr4/cs0;)V

    invoke-interface {v1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/ej1;->P(Landroid/view/View;)V

    :cond_1
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/cs0;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lr4/ej1;->W(Lr4/cs0;)V

    :cond_2
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/lm1;

    iget v3, v2, Lr4/lm1;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Lr4/lm1;->b:Ljava/lang/String;

    iget-object v2, v2, Lr4/lm1;->d:Lr4/z10;

    invoke-virtual {v0, v3, v2}, Lr4/ej1;->Z(Ljava/lang/String;Lr4/z10;)V

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lr4/lm1;->b:Ljava/lang/String;

    iget-object v2, v2, Lr4/lm1;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lr4/ej1;->Y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v0
.end method
