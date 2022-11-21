.class public abstract Lcom/prineside/tdi2/OkPurchaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/pay/PurchaseManager;


# instance fields
.field public a:Z

.field public b:Lcom/badlogic/gdx/pay/PurchaseObserver;

.field public c:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getInformation(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "accelerator_pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "accelerator_pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "accelerator_pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "accelerator_pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "accelerator_pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "double_gain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    const-string p1, "\u00a5328"

    const-string v0, "\u00a5168"

    const-string v2, "\u00a568"

    const-string v3, "\u00a518"

    const-string v4, "\u00a56"

    const-string v5, ""

    packed-switch v1, :pswitch_data_0

    const-string p1, "\u00a5"

    move-object v0, v5

    goto :goto_5

    :pswitch_0
    const-string v5, "Tiny Paper Pack"

    const-string p1, "Tiny amount of Green Papers"

    :goto_1
    move-object v0, p1

    move-object p1, v4

    goto :goto_5

    :pswitch_1
    const-string v5, "Huge Paper Pack"

    const-string v0, "Huge amount of Green Papers"

    goto :goto_5

    :pswitch_2
    const-string v5, "Small Accelerator"

    const-string p1, "Small amount of Accelerators"

    goto :goto_2

    :pswitch_3
    const-string v5, "Large Accelerator"

    const-string p1, "Large amount of Accelerators"

    goto :goto_3

    :pswitch_4
    const-string v5, "Small Paper Pack"

    const-string p1, "Small amount of Green Papers"

    :goto_2
    move-object v0, p1

    move-object p1, v3

    goto :goto_5

    :pswitch_5
    const-string v5, "Large Paper Pack"

    const-string p1, "Large amount of Green Papers"

    :goto_3
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_5

    :pswitch_6
    const-string v5, "Tiny Accelerator Pack"

    const-string p1, "Tiny amount of Accelerators"

    goto :goto_1

    :pswitch_7
    const-string v5, "Huge Accelerator"

    const-string v0, "Huge amount of Accelerators"

    goto :goto_5

    :pswitch_8
    const-string v5, "Medium Paper Pack"

    const-string p1, "Medium amount of Green Papers"

    :goto_4
    move-object v0, p1

    move-object p1, v2

    goto :goto_5

    :pswitch_9
    const-string v5, "Medium Accelerator"

    const-string p1, "Medium amount of Accelerators"

    goto :goto_4

    :pswitch_a
    const-string p1, "\u00a530"

    const-string v5, "Double Gain"

    const-string v0, "Double rewards"

    :goto_5
    new-instance v1, Lcom/badlogic/gdx/pay/Information;

    invoke-direct {v1, v5, v0, p1}, Lcom/badlogic/gdx/pay/Information;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6072bcd3 -> :sswitch_a
        -0x57a2bb79 -> :sswitch_9
        -0x295ab3a5 -> :sswitch_8
        -0x274223c3 -> :sswitch_7
        -0x273cdb6e -> :sswitch_6
        -0x165366b -> :sswitch_5
        -0xfd5c9f -> :sswitch_4
        0x3f2d1be9 -> :sswitch_3
        0x3f94f5b5 -> :sswitch_2
        0x6b4dc911 -> :sswitch_1
        0x6b531166 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V
    .locals 1

    const-string p3, "OkPurchaseManager"

    const-string v0, "installing"

    invoke-static {p3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/prineside/tdi2/OkPurchaseManager;->b:Lcom/badlogic/gdx/pay/PurchaseObserver;

    iput-object p2, p0, Lcom/prineside/tdi2/OkPurchaseManager;->c:Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-interface {p1}, Lcom/badlogic/gdx/pay/PurchaseObserver;->handleInstall()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/OkPurchaseManager;->a:Z

    return-void
.end method

.method public installed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/OkPurchaseManager;->a:Z

    return v0
.end method

.method public purchase(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "accelerator_pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "accelerator_pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "accelerator_pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "accelerator_pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "accelerator_pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "double_gain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const-string v0, "2"

    goto :goto_1

    :pswitch_1
    const-string v0, "10"

    goto :goto_1

    :pswitch_2
    const-string v0, "5"

    goto :goto_1

    :pswitch_3
    const-string v0, "9"

    goto :goto_1

    :pswitch_4
    const-string v0, "4"

    goto :goto_1

    :pswitch_5
    const-string v0, "8"

    goto :goto_1

    :pswitch_6
    const-string v0, "3"

    goto :goto_1

    :pswitch_7
    const-string v0, "11"

    goto :goto_1

    :pswitch_8
    const-string v0, "6"

    goto :goto_1

    :pswitch_9
    const-string v0, "7"

    goto :goto_1

    :pswitch_a
    const-string v0, "1"

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/prineside/tdi2/OkPurchaseManager;->purchaseOk(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6072bcd3 -> :sswitch_a
        -0x57a2bb79 -> :sswitch_9
        -0x295ab3a5 -> :sswitch_8
        -0x274223c3 -> :sswitch_7
        -0x273cdb6e -> :sswitch_6
        -0x165366b -> :sswitch_5
        -0xfd5c9f -> :sswitch_4
        0x3f2d1be9 -> :sswitch_3
        0x3f94f5b5 -> :sswitch_2
        0x6b4dc911 -> :sswitch_1
        0x6b531166 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract purchaseOk(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public purchaseRestore()V
    .locals 0

    return-void
.end method
