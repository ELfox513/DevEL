.class public final Lr4/wt2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/cu2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    new-instance v1, Lr4/cu2;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lr4/cu2;-><init>(Lc4/f;)V

    iput-object v1, p0, Lr4/wt2;->b:Lr4/cu2;

    const-string v1, "new_csi"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lr4/wt2;
    .locals 3

    new-instance v0, Lr4/wt2;

    invoke-direct {v0}, Lr4/wt2;-><init>()V

    iget-object v1, v0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v2, "action"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lr4/wt2;
    .locals 3

    new-instance v0, Lr4/wt2;

    invoke-direct {v0}, Lr4/wt2;-><init>()V

    iget-object v1, v0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v2, "request_id"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;
    .locals 1

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lr4/wt2;
    .locals 1

    iget-object v0, p0, Lr4/wt2;->b:Lr4/cu2;

    invoke-virtual {v0, p1}, Lr4/cu2;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lr4/wt2;
    .locals 1

    iget-object v0, p0, Lr4/wt2;->b:Lr4/cu2;

    invoke-virtual {v0, p1, p2}, Lr4/cu2;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final f(Landroid/os/Bundle;)Lr4/wt2;
    .locals 3

    const-string v0, "cnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "gnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final g(Lr4/bp2;Lr4/rl0;)Lr4/wt2;
    .locals 3

    iget-object v0, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object v1, v0, Lr4/ap2;->b:Lr4/so2;

    invoke-virtual {p0, v1}, Lr4/wt2;->h(Lr4/so2;)Lr4/wt2;

    iget-object v1, v0, Lr4/ap2;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lr4/ap2;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/no2;

    iget v0, v0, Lr4/no2;->b:I

    const-string v1, "ad_format"

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "unknown"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v2, "app_open_ad"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lr4/rl0;->i()Z

    move-result p2

    if-eq v1, p2, :cond_0

    const-string p2, "0"

    goto :goto_0

    :cond_0
    const-string p2, "1"

    :goto_0
    const-string v1, "as"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_1
    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "rewarded"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "native_advanced"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "native_express"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "interstitial"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_5
    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "banner"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    sget-object p2, Lr4/rz;->l5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lh3/p;->a(Lr4/bp2;)Z

    move-result p2

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scar"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-static {p1}, Lh3/p;->b(Lr4/bp2;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v1, "ragent"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lh3/p;->c(Lr4/bp2;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    const-string v0, "rtype"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lr4/so2;)Lr4/wt2;
    .locals 2

    iget-object v0, p1, Lr4/so2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lr4/so2;->b:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final i(Lr4/no2;)Lr4/wt2;
    .locals 2

    iget-object v0, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lr4/no2;->w:Ljava/lang/String;

    const-string v1, "aai"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final j()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lr4/wt2;->a:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lr4/wt2;->b:Lr4/cu2;

    invoke-virtual {v1}, Lr4/cu2;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/bu2;

    iget-object v3, v2, Lr4/bu2;->a:Ljava/lang/String;

    iget-object v2, v2, Lr4/bu2;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
