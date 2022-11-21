.class public Lj1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj1/d$a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lj1/k;)V
    .locals 0

    invoke-direct {p0}, Lj1/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lj1/d;
    .locals 8

    iget-object v0, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v7}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKUs should have the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All SKUs must have the same package name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lj1/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lj1/d;-><init>(Lj1/k;)V

    iget-object v4, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lj1/d;->j(Lj1/d;Z)Z

    invoke-static {v0, v3}, Lj1/d;->g(Lj1/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lj1/d$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/d;->l(Lj1/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lj1/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/d;->n(Lj1/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lj1/d$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/d;->q(Lj1/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lj1/d$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lj1/d;->r(Lj1/d;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lj1/d$a;->e:I

    invoke-static {v0, v1}, Lj1/d;->f(Lj1/d;I)I

    iget-object v1, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lj1/d;->i(Lj1/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-boolean v1, p0, Lj1/d$a;->g:Z

    invoke-static {v0, v1}, Lj1/d;->m(Lj1/d;Z)Z

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SkuDetails must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public b(Lcom/android/billingclient/api/SkuDetails;)Lj1/d$a;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lj1/d$a;->f:Ljava/util/ArrayList;

    return-object p0
.end method
