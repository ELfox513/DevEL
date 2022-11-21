.class public Lcom/android/billingclient/api/b;
.super Lcom/android/billingclient/api/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public d:Lj1/q;

.field public e:Landroid/content/Context;

.field public f:Landroid/content/Context;

.field public g:Lc5/c;

.field public h:Lcom/android/billingclient/api/b$a;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/util/concurrent/ExecutorService;

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLj1/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/billingclient/api/a;-><init>()V

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/billingclient/api/b;->a:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    iput p5, p0, Lcom/android/billingclient/api/b;->k:I

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/billingclient/api/b;->u:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/billingclient/api/b;->j(Landroid/content/Context;Lj1/g;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Lj1/g;)V
    .locals 6

    invoke-static {}, Lcom/android/billingclient/api/b;->A()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/b;-><init>(Landroid/content/Context;ZLj1/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "3.0.1"

    return-object v0
.end method

.method public static synthetic B(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->i:Z

    return p1
.end method

.method public static synthetic C(Lcom/android/billingclient/api/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic D(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->r:Z

    return p1
.end method

.method public static synthetic E(Lcom/android/billingclient/api/b;)I
    .locals 0

    iget p0, p0, Lcom/android/billingclient/api/b;->k:I

    return p0
.end method

.method public static synthetic H(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->q:Z

    return p1
.end method

.method public static synthetic I(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/c;
    .locals 0

    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->F()Lcom/android/billingclient/api/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->p:Z

    return p1
.end method

.method public static synthetic K(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->o:Z

    return p1
.end method

.method public static synthetic L(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->n:Z

    return p1
.end method

.method public static synthetic M(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->m:Z

    return p1
.end method

.method public static synthetic N(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->l:Z

    return p1
.end method

.method public static synthetic k(Lcom/android/billingclient/api/b;I)I
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/b;->a:I

    return p1
.end method

.method public static synthetic l(Lcom/android/billingclient/api/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    return-object p1
.end method

.method public static synthetic o(Lcom/android/billingclient/api/b;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b;->G(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "offer_id_token"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic r(Lcom/android/billingclient/api/b;Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/android/billingclient/api/b;Lj1/e;Lj1/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/b;->v(Lj1/e;Lj1/f;)V

    return-void
.end method

.method public static synthetic u(Lcom/android/billingclient/api/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/billingclient/api/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->j:Z

    return p1
.end method

.method public static synthetic y(Lcom/android/billingclient/api/b;I)I
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/b;->k:I

    return p1
.end method

.method public static synthetic z(Lcom/android/billingclient/api/b;)Lc5/c;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    return-object p0
.end method


# virtual methods
.method public final F()Lcom/android/billingclient/api/c;
    .locals 2

    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/billingclient/api/k;->l:Lcom/android/billingclient/api/c;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    return-object v0
.end method

.method public final G(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
    .locals 14

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Querying owned items, item type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lcom/android/billingclient/api/b;->n:Z

    iget-boolean v3, p0, Lcom/android/billingclient/api/b;->s:Z

    iget-object v4, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc5/a;->g(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    move-object v9, v3

    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/billingclient/api/b;->n:Z

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/16 v6, 0x9

    iget-object v4, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move-object v10, v2

    invoke-interface/range {v5 .. v10}, Lc5/c;->Y3(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, p1, v9}, Lc5/c;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v5, "getPurchase()"

    invoke-static {v4, v1, v5}, Lcom/android/billingclient/api/l;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/c;

    move-result-object v5

    sget-object v6, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    if-eq v5, v6, :cond_3

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    invoke-direct {p1, v5, v3}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :cond_3
    const-string v5, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "Sku is owned: "

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v1, v11}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v11}, Lcom/android/billingclient/api/Purchase;->e()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "BUG: empty/null token!"

    invoke-static {v1, v9}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->l:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :cond_6
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "Continuation token: "

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_4
    invoke-static {v1, v4}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v1, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v1, v0}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Got exception trying to get purchases: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; try to reconnect"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v3}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1
.end method

.method public a(Lj1/a;Lj1/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lj1/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    invoke-static {p1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/k;->k:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->n:Z

    if-nez v0, :cond_2

    sget-object p1, Lcom/android/billingclient/api/k;->b:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_2
    new-instance v0, Lj1/x;

    invoke-direct {v0, p0, p1, p2}, Lj1/x;-><init>(Lcom/android/billingclient/api/b;Lj1/a;Lj1/b;)V

    const-wide/16 v1, 0x7530

    new-instance p1, Lj1/a0;

    invoke-direct {p1, p0, p2}, Lj1/a0;-><init>(Lcom/android/billingclient/api/b;Lj1/b;)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->F()Lcom/android/billingclient/api/c;

    move-result-object p1

    invoke-interface {p2, p1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    :cond_3
    return-void
.end method

.method public b(Lj1/e;Lj1/f;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-virtual {p1}, Lj1/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lj1/w;

    invoke-direct {v0, p0, p1, p2}, Lj1/w;-><init>(Lcom/android/billingclient/api/b;Lj1/e;Lj1/f;)V

    const-wide/16 v1, 0x7530

    new-instance v3, Lj1/v;

    invoke-direct {v3, p0, p2, p1}, Lj1/v;-><init>(Lcom/android/billingclient/api/b;Lj1/f;Lj1/e;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->F()Lcom/android/billingclient/api/c;

    move-result-object v0

    invoke-virtual {p1}, Lj1/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 5

    const-string v0, "BillingClient"

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/b;->d:Lj1/q;

    invoke-virtual {v2}, Lj1/q;->d()V

    iget-object v2, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/billingclient/api/b$a;->b()V

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    if-eqz v2, :cond_1

    const-string v2, "Unbinding from service."

    invoke-static {v0, v2}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    :cond_1
    iput-object v3, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    iget-object v2, p0, Lcom/android/billingclient/api/b;->t:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v3, p0, Lcom/android/billingclient/api/b;->t:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput v1, p0, Lcom/android/billingclient/api/b;->a:I

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v1, p0, Lcom/android/billingclient/api/b;->a:I

    return-void

    :goto_0
    iput v1, p0, Lcom/android/billingclient/api/b;->a:I

    throw v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/app/Activity;Lj1/d;)Lcom/android/billingclient/api/c;
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v9, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    const-string v10, "; try to reconnect"

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lj1/d;->h()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->i()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "BillingClient"

    if-eqz v6, :cond_1

    iget-boolean v6, v7, Lcom/android/billingclient/api/b;->i:Z

    if-nez v6, :cond_1

    const-string v0, "Current client doesn\'t support subscriptions."

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->s:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lj1/d;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    iget-boolean v13, v7, Lcom/android/billingclient/api/b;->j:Z

    if-nez v13, :cond_3

    const-string v0, "Current client doesn\'t support subscriptions update."

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->t:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lj1/d;->o()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-boolean v13, v7, Lcom/android/billingclient/api/b;->l:Z

    if-nez v13, :cond_4

    const-string v0, "Current client doesn\'t support extra params for buy intent."

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->h:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v12, :cond_5

    iget-boolean v13, v7, Lcom/android/billingclient/api/b;->r:Z

    if-nez v13, :cond_5

    const-string v0, "Current client doesn\'t support multi-item purchases."

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->u:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v13, ""

    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_7

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    add-int v2, v16, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v14, v12, :cond_6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object v13, v2

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x29

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v2, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v7, Lcom/android/billingclient/api/b;->l:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v7, Lcom/android/billingclient/api/b;->n:Z

    iget-boolean v6, v7, Lcom/android/billingclient/api/b;->s:Z

    iget-object v12, v7, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    invoke-static {v5, v2, v6, v12}, Lc5/a;->e(Lj1/d;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    move-result-object v2

    const-string v12, "skuDetailsToken"

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_2
    if-ge v15, v14, :cond_a

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v15, v15, 0x1

    check-cast v19, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->k()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 v20, v14

    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/billingclient/api/b;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const/16 v16, 0x1

    xor-int/lit8 v14, v14, 0x1

    or-int v18, v18, v14

    move/from16 v14, v20

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "skuDetailsTokens"

    invoke-virtual {v6, v14, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    if-eqz v18, :cond_d

    iget-boolean v2, v7, Lcom/android/billingclient/api/b;->r:Z

    if-nez v2, :cond_c

    sget-object v0, Lcom/android/billingclient/api/k;->i:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_d
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->j()Ljava/lang/String;

    move-result-object v2

    const-string v12, "skuPackageName"

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v2, v7, Lcom/android/billingclient/api/b;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v7, Lcom/android/billingclient/api/b;->u:Ljava/lang/String;

    const-string v12, "accountName"

    invoke-virtual {v6, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x1

    if-le v2, v12, :cond_11

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {v2, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_10

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v14}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_10
    const-string v1, "additionalSkus"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxyPackage"

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v7, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v2, v1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string v1, "package not found"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_5
    const/4 v0, 0x6

    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->n:Z

    if-eqz v1, :cond_13

    const/16 v0, 0x9

    const/16 v2, 0x9

    goto :goto_6

    :cond_13
    invoke-virtual/range {p2 .. p2}, Lj1/d;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x7

    const/4 v2, 0x7

    goto :goto_6

    :cond_14
    const/4 v2, 0x6

    :goto_6
    new-instance v12, Lj1/g0;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lj1/g0;-><init>(Lcom/android/billingclient/api/b;ILcom/android/billingclient/api/SkuDetails;Ljava/lang/String;Lj1/d;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    invoke-virtual {v7, v12, v1, v2, v0}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_7

    :cond_15
    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    if-eqz v6, :cond_16

    new-instance v4, Lj1/f0;

    invoke-direct {v4, v7, v5, v3}, Lj1/f0;-><init>(Lcom/android/billingclient/api/b;Lj1/d;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-virtual {v7, v4, v1, v2, v0}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_7

    :cond_16
    new-instance v5, Lj1/j;

    invoke-direct {v5, v7, v3, v4}, Lj1/j;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/SkuDetails;Ljava/lang/String;)V

    invoke-virtual {v7, v5, v1, v2, v0}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_7
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, v11}, Lc5/a;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v11}, Lc5/a;->k(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_17

    const/16 v0, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to buy item, Error response code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v1, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget-object v0, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    return-object v0

    :catch_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0

    :catch_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    invoke-virtual {v7, v0}, Lcom/android/billingclient/api/b;->n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
    .locals 4

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    invoke-static {p1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->g:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/billingclient/api/e;

    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/e;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/Purchase$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->l:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1

    :catch_1
    new-instance p1, Lcom/android/billingclient/api/Purchase$a;

    sget-object v0, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/Purchase$a;-><init>(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1
.end method

.method public h(Lcom/android/billingclient/api/d;Lj1/h;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1, v1}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/billingclient/api/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "BillingClient"

    if-eqz v0, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    invoke-static {v2, p1}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/k;->g:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1, v1}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->q:Z

    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->r:Z

    if-nez p1, :cond_2

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    invoke-static {v2, p1}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/billingclient/api/k;->f:Lcom/android/billingclient/api/c;

    invoke-interface {p2, p1, v1}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/android/billingclient/api/m$a;

    invoke-direct {v2, v1}, Lcom/android/billingclient/api/m$a;-><init>(Lj1/o;)V

    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/m$a;->a(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/m$a;->b()Lcom/android/billingclient/api/m;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/billingclient/api/g;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/g;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lj1/h;)V

    const-wide/16 v2, 0x7530

    new-instance v0, Lj1/t;

    invoke-direct {v0, p0, p2}, Lj1/t;-><init>(Lcom/android/billingclient/api/b;Lj1/h;)V

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/billingclient/api/b;->s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->F()Lcom/android/billingclient/api/c;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public i(Lj1/c;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/billingclient/api/a;->d()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    invoke-static {v1, v0}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    invoke-interface {p1, v0}, Lj1/c;->onBillingSetupFinished(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/b;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->d:Lcom/android/billingclient/api/c;

    invoke-interface {p1, v0}, Lj1/c;->onBillingSetupFinished(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-interface {p1, v0}, Lj1/c;->onBillingSetupFinished(Lcom/android/billingclient/api/c;)V

    return-void

    :cond_2
    iput v2, p0, Lcom/android/billingclient/api/b;->a:I

    iget-object v0, p0, Lcom/android/billingclient/api/b;->d:Lj1/q;

    invoke-virtual {v0}, Lj1/q;->b()V

    const-string v0, "Starting in-app billing setup."

    invoke-static {v1, v0}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/b$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/b$a;-><init>(Lcom/android/billingclient/api/b;Lj1/c;Lj1/u;)V

    iput-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_5

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/b$a;

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    invoke-static {v1, p1}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    iput v5, p0, Lcom/android/billingclient/api/b;->a:I

    const-string v0, "Billing service unavailable on device."

    invoke-static {v1, v0}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/billingclient/api/k;->c:Lcom/android/billingclient/api/c;

    invoke-interface {p1, v0}, Lj1/c;->onBillingSetupFinished(Lcom/android/billingclient/api/c;)V

    return-void
.end method

.method public final j(Landroid/content/Context;Lj1/g;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    new-instance v1, Lj1/q;

    invoke-direct {v1, v0, p2}, Lj1/q;-><init>(Landroid/content/Context;Lj1/g;)V

    iput-object v1, p0, Lcom/android/billingclient/api/b;->d:Lj1/q;

    iput-object p1, p0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/billingclient/api/b;->s:Z

    return-void
.end method

.method public final n(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/c;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/b;->d:Lj1/q;

    invoke-virtual {v0}, Lj1/q;->c()Lj1/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lj1/g;->onPurchasesUpdated(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-object p1
.end method

.method public final p(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails$a;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/m;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/billingclient/api/SkuDetails$a;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "BillingClient"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    add-int/lit8 v6, v5, 0x14

    if-le v6, v3, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v9, p2

    invoke-interface {v9, v5, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/billingclient/api/m;

    invoke-virtual {v11}, Lcom/android/billingclient/api/m;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v10, "ITEM_ID_LIST"

    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v5, v1, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    const-string v10, "playBillingLibraryVersion"

    invoke-virtual {v7, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v10, v1, Lcom/android/billingclient/api/b;->o:Z

    if-eqz v10, :cond_2

    iget-object v12, v1, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/16 v13, 0xa

    iget-object v10, v1, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget v10, v1, Lcom/android/billingclient/api/b;->k:I

    iget-boolean v11, v1, Lcom/android/billingclient/api/b;->s:Z

    iget-object v15, v1, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-static {v10, v11, v15, v4, v8}, Lc5/a;->c(IZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v17

    move-object/from16 v15, p1

    move-object/from16 v16, v7

    invoke-interface/range {v12 .. v17}, Lc5/c;->G5(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v12, p1

    goto :goto_3

    :cond_2
    move-object/from16 v4, p3

    iget-object v8, v1, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/4 v10, 0x3

    iget-object v11, v1, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-interface {v8, v10, v11, v12, v7}, Lc5/c;->Z3(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-string v8, "Item is unavailable for purchase."

    const/4 v10, 0x4

    if-nez v7, :cond_3

    const-string v0, "querySkuDetailsAsync got null sku details list"

    invoke-static {v2, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/SkuDetails$a;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    const-string v11, "DETAILS_LIST"

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x6

    if-nez v13, :cond_5

    invoke-static {v7, v2}, Lc5/a;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-static {v7, v2}, Lc5/a;->k(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_4

    const/16 v5, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "getSkuDetails() failed. Response code: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/billingclient/api/SkuDetails$a;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_4
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-static {v2, v3}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/billingclient/api/SkuDetails$a;

    invoke-direct {v2, v14, v4, v0}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2

    :cond_5
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_6

    const-string v0, "querySkuDetailsAsync got null response list"

    invoke-static {v2, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/SkuDetails$a;

    invoke-direct {v0, v10, v8, v5}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {v11, v10}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Got sku details: "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_0
    const-string v0, "Got a JSON exception trying to decode SkuDetails."

    invoke-static {v2, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/SkuDetails$a;

    const-string v2, "Error trying to decode SkuDetails."

    invoke-direct {v0, v14, v2, v5}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_7
    move v5, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v3, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/SkuDetails$a;

    const/4 v2, -0x1

    const-string v3, "Service connection is disconnected."

    invoke-direct {v0, v2, v3, v5}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_8
    new-instance v2, Lcom/android/billingclient/api/SkuDetails$a;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Lcom/android/billingclient/api/SkuDetails$a;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v2
.end method

.method public final s(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-long p2, p2

    iget-object v0, p0, Lcom/android/billingclient/api/b;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lc5/a;->a:I

    new-instance v1, Lj1/z;

    invoke-direct {v1, p0}, Lj1/z;-><init>(Lcom/android/billingclient/api/b;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/b;->t:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->t:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    new-instance v1, Lj1/b0;

    invoke-direct {v1, p0, p1, p4}, Lj1/b0;-><init>(Lcom/android/billingclient/api/b;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x1c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final v(Lj1/e;Lj1/f;)V
    .locals 8

    const-string v0, "BillingClient"

    invoke-virtual {p1}, Lj1/e;->a()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v1, "Consuming purchase with token: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/billingclient/api/b;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/billingclient/api/b;->n:Z

    iget-object v5, p0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lc5/a;->f(Lj1/e;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v1, v2, v3, v7, p1}, Lc5/c;->d6(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0}, Lc5/a;->k(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Lc5/c;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/billingclient/api/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v7}, Lc5/c;->n3(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v0, ""

    move v3, p1

    move-object p1, v0

    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v5

    if-nez v3, :cond_2

    new-instance p1, Lj1/c0;

    invoke-direct {p1, p0, p2, v5, v7}, Lj1/c0;-><init>(Lcom/android/billingclient/api/b;Lj1/f;Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b;->w(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    new-instance p1, Lj1/e0;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lj1/e0;-><init>(Lcom/android/billingclient/api/b;ILj1/f;Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/b;->w(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lj1/d0;

    invoke-direct {v0, p0, p1, p2, v7}, Lj1/d0;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/Exception;Lj1/f;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/b;->w(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
