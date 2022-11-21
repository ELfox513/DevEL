.class public Lcom/badlogic/gdx/pay/PurchaseManagerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STORE_NAME_ANDROID_AMAZON:Ljava/lang/String; = "Amazon"

.field public static final STORE_NAME_ANDROID_APPLAND:Ljava/lang/String; = "Appland"

.field public static final STORE_NAME_ANDROID_APTOIDE:Ljava/lang/String; = "Aptoide"

.field public static final STORE_NAME_ANDROID_GOOGLE:Ljava/lang/String; = "GooglePlay"

.field public static final STORE_NAME_ANDROID_HUAWEI:Ljava/lang/String; = "Huawei"

.field public static final STORE_NAME_ANDROID_NOKIA:Ljava/lang/String; = "Nokia"

.field public static final STORE_NAME_ANDROID_SAMSUNG:Ljava/lang/String; = "Samsung"

.field public static final STORE_NAME_ANDROID_SLIDEME:Ljava/lang/String; = "SlideME"

.field public static final STORE_NAME_ANDROID_YANDEX:Ljava/lang/String; = "Yandex"

.field public static final STORE_NAME_DESKTOP_APPLE:Ljava/lang/String; = "AppleMac"

.field public static final STORE_NAME_DESKTOP_STEAM:Ljava/lang/String; = "Steam"

.field public static final STORE_NAME_DESKTOP_WINDOWS:Ljava/lang/String; = "Windows"

.field public static final STORE_NAME_GWT_GOOGLEWALLET:Ljava/lang/String; = "GwtGoogleWallet"

.field public static final STORE_NAME_IOS_APPLE:Ljava/lang/String; = "AppleiOS"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/pay/Offer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addOffer(Lcom/badlogic/gdx/pay/Offer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStoreParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOffer(I)Lcom/badlogic/gdx/pay/Offer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Offer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOffer(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/pay/Offer;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Offer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getOfferCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOfferForStore(Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/pay/Offer;->getIdentifierForStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/pay/Offer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized getStoreParam(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
