.class public Lcom/prineside/tdi2/managers/PurchaseManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/PurchaseManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;,
        Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;,
        Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;,
        Lcom/prineside/tdi2/managers/PurchaseManager$Serializer;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

.field public k:[Lcom/badlogic/gdx/utils/IntArray;

.field public final p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field public purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

.field public final transactions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/pay/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->a:Z

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x8

    invoke-direct {v1, v0, v3, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->values:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    array-length v2, v1

    new-array v2, v2, [Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    array-length v2, v1

    new-array v2, v2, [Lcom/badlogic/gdx/utils/IntArray;

    iput-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v6, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->END_GAME:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    const/16 v4, 0x5a

    invoke-direct {v2, p0, v4, v3, v4}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;III)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->REGULAR:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    const/16 v4, 0x3840

    const/16 v5, 0xa

    const/16 v6, 0x12c

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;III)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->CASE_DECRYPTION:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    const v4, 0x15180

    const/4 v5, 0x5

    const/16 v6, 0xe10

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;III)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    sget-object v1, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;->LOOT_MULTIPLIER:Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    const/16 v4, 0x58

    const/16 v5, 0x59

    invoke-direct {v2, p0, v4, v3, v5}, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;III)V

    aput-object v2, v0, v1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->getPurchaseManager()Lcom/badlogic/gdx/pay/PurchaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    const-string v1, "PurchaseManager"

    if-eqz v0, :cond_1

    const-string v0, "Has manager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;

    invoke-direct {v0}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Config$ProductId;->DOUBLE_GAIN:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v4, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    new-instance v1, Lcom/badlogic/gdx/pay/Offer;

    invoke-direct {v1}, Lcom/badlogic/gdx/pay/Offer;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setType(Lcom/badlogic/gdx/pay/OfferType;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/pay/Offer;->setIdentifier(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addOffer(Lcom/badlogic/gdx/pay/Offer;)V

    const-string v1, "GooglePlay"

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA/U+ICp4sQUINhFRq+JaoetZReLuOOb1m1b5qPlxqeSRhGdu0HruaniHqz/96r81gxS14nCWMsBcV6qHQMj54rgPAAUVwMOY9tnf4ET5ObjwxgSpSsa0219FG9r6SbJyyNNOcR7O+4wefwtLItFwt8ItW3IOasyxyEb4frqK6PLiQNs6hTHtANYULlv4UrvTNoijvhLBGL8N2GO5pNMIwwI7GNp+VecmSG/xKD+4E7kZR1F0ZxSew03Zrz0UiVikk3Lgks4WoEwevwNi44OU/P7oqYFDDoHDh81xf+hK8MQ3ijPa8u3EBARBFYN0mc3Hl9w0lrpiKx19PE5yZ48IoUQIDAQAB"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/pay/PurchaseManagerConfig;->addStoreParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$2;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/badlogic/gdx/pay/PurchaseManager;->install(Lcom/badlogic/gdx/pay/PurchaseObserver;Lcom/badlogic/gdx/pay/PurchaseManagerConfig;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "Has no manager :("

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/managers/PurchaseManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/managers/PurchaseManager;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/managers/PurchaseManager;Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->h(Lcom/badlogic/gdx/pay/Transaction;)V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/managers/PurchaseManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->save()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/managers/PurchaseManager;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->reload()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canShowRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->canShowRewardAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public final g(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v2, p1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iget v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->maxViewsPerPeriod:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->save()V

    return-void
.end method

.method public getPapersHourBasePrice()I
    .locals 9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->SHOP_PURCHASE_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v2, Lcom/prineside/tdi2/enums/StatisticsType;->GPG:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v1

    double-to-long v1, v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->statisticsManager:Lcom/prineside/tdi2/managers/StatisticsManager;

    sget-object v4, Lcom/prineside/tdi2/enums/StatisticsType;->PT:Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/StatisticsManager;->getAllTime(Lcom/prineside/tdi2/enums/StatisticsType;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double/2addr v3, v7

    div-double/2addr v3, v7

    div-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    int-to-long v5, v3

    div-long/2addr v1, v5

    long-to-int v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const v1, 0x30d40

    const v3, 0x186a0

    :try_start_0
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->IAP_GREEN_PAPER_MAX_PER_HOUR:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v5, 0x4c4b40

    invoke-static {v1, v3, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "PurchaseManager"

    const-string v7, "failed to parse dynamic setting"

    invoke-static {v6, v7, v5}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    if-le v2, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const/16 v1, 0x2710

    if-ge v1, v4, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x2710

    :goto_3
    int-to-float v1, v4

    mul-float v1, v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const v1, 0x5f5e100

    const v2, 0xf4240

    if-le v0, v1, :cond_4

    rem-int v1, v0, v2

    :goto_4
    sub-int/2addr v0, v1

    return v0

    :cond_4
    const v1, 0x989680

    if-le v0, v1, :cond_5

    rem-int v1, v0, v3

    goto :goto_4

    :cond_5
    if-le v0, v2, :cond_6

    rem-int/lit16 v1, v0, 0x2710

    goto :goto_4

    :cond_6
    rem-int/lit16 v1, v0, 0x3e8

    goto :goto_4
.end method

.method public getProductId(Ljava/lang/String;)Lcom/prineside/tdi2/Config$ProductId;
    .locals 14

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "pack_small_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :sswitch_1
    const-string v0, "accelerator_pack_tiny_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "accelerator_pack_huge2_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "double_gain_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "accelerator_pack_large_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "pack_tiny_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "pack_medium_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "pack_large_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_8
    const-string v0, "accelerator_pack_medium_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "pack_huge_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_a
    const-string v0, "accelerator_pack_small_infinitode2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->DOUBLE_GAIN:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_7
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_8
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_9
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_a
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_2
    const/4 v2, -0x1

    goto/16 :goto_3

    :sswitch_b
    const-string v0, "pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2

    :sswitch_c
    const-string v0, "pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_d
    const-string v0, "accelerator_pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v2, 0x8

    goto/16 :goto_3

    :sswitch_e
    const-string v0, "accelerator_pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_f
    const-string v0, "pack_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_10
    const-string v0, "pack_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_11
    const-string v0, "accelerator_pack_tiny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_2

    :cond_11
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_12
    const-string v0, "accelerator_pack_huge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_13
    const-string v0, "pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_2

    :cond_13
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_14
    const-string v0, "accelerator_pack_medium"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_2

    :cond_14
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_15
    const-string v0, "double_gain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_2

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_3
    packed-switch v2, :pswitch_data_1

    :goto_4
    const/4 p1, 0x0

    return-object p1

    :pswitch_b
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_c
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_d
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_e
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_f
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_SMALL:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_10
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_LARGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_11
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_TINY:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_12
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_HUGE:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_13
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_14
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->ACCELERATOR_PACK_MEDIUM:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    :pswitch_15
    sget-object p1, Lcom/prineside/tdi2/Config$ProductId;->DOUBLE_GAIN:Lcom/prineside/tdi2/Config$ProductId;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ef61697 -> :sswitch_a
        -0x61cb6d3b -> :sswitch_9
        -0x5eb772c5 -> :sswitch_8
        -0x5e6f12b7 -> :sswitch_7
        -0x42c088f1 -> :sswitch_6
        -0x35f0fc66 -> :sswitch_5
        -0x2dc99e63 -> :sswitch_4
        -0xc9e3d1f -> :sswitch_3
        0xab0cf49 -> :sswitch_2
        0x477fb4c6 -> :sswitch_1
        0x60647515 -> :sswitch_0
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

    :sswitch_data_1
    .sparse-switch
        -0x6072bcd3 -> :sswitch_15
        -0x57a2bb79 -> :sswitch_14
        -0x295ab3a5 -> :sswitch_13
        -0x274223c3 -> :sswitch_12
        -0x273cdb6e -> :sswitch_11
        -0x165366b -> :sswitch_10
        -0xfd5c9f -> :sswitch_f
        0x3f2d1be9 -> :sswitch_e
        0x3f94f5b5 -> :sswitch_d
        0x6b4dc911 -> :sswitch_c
        0x6b531166 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getPurchaseIdentifier(Lcom/prineside/tdi2/Config$ProductId;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$9;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "accelerator_pack_huge2_infinitode2"

    return-object p1

    :pswitch_1
    const-string p1, "accelerator_pack_large_infinitode2"

    return-object p1

    :pswitch_2
    const-string p1, "accelerator_pack_medium_infinitode2"

    return-object p1

    :pswitch_3
    const-string p1, "accelerator_pack_small_infinitode2"

    return-object p1

    :pswitch_4
    const-string p1, "accelerator_pack_tiny_infinitode2"

    return-object p1

    :pswitch_5
    const-string p1, "pack_huge_infinitode2"

    return-object p1

    :pswitch_6
    const-string p1, "pack_large_infinitode2"

    return-object p1

    :pswitch_7
    const-string p1, "pack_medium_infinitode2"

    return-object p1

    :pswitch_8
    const-string p1, "pack_small_infinitode2"

    return-object p1

    :pswitch_9
    const-string p1, "pack_tiny_infinitode2"

    return-object p1

    :pswitch_a
    const-string p1, "double_gain_infinitode2"

    return-object p1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/managers/PurchaseManager$9;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_b
    const-string p1, "accelerator_pack_huge"

    return-object p1

    :pswitch_c
    const-string p1, "accelerator_pack_large"

    return-object p1

    :pswitch_d
    const-string p1, "accelerator_pack_medium"

    return-object p1

    :pswitch_e
    const-string p1, "accelerator_pack_small"

    return-object p1

    :pswitch_f
    const-string p1, "accelerator_pack_tiny"

    return-object p1

    :pswitch_10
    const-string p1, "pack_huge"

    return-object p1

    :pswitch_11
    const-string p1, "pack_large"

    return-object p1

    :pswitch_12
    const-string p1, "pack_medium"

    return-object p1

    :pswitch_13
    const-string p1, "pack_small"

    return-object p1

    :pswitch_14
    const-string p1, "pack_tiny"

    return-object p1

    :pswitch_15
    const-string p1, "double_gain"

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->d:[Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v1, p1

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->getSecondsTillCanShowRewardAd()I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    iget v4, v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->maxViewsPerPeriod:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    iget-object v4, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v4, v4, v5

    iget v6, v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->periodLength:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v1

    if-gez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    if-eqz v3, :cond_3

    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    add-int/lit8 v3, v3, -0x1

    aget p1, p1, v3

    iget v0, v0, Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdConfig;->minViewDelay:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v5, p1

    :cond_3
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/StrictMath;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/StrictMath;->max(II)I

    move-result p1

    return p1
.end method

.method public final h(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->SHOP_PURCHASE_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->getPapersHourBasePrice()I

    move-result v2

    new-instance v3, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v4, "POST"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/prineside/tdi2/Config;->IAP_VALIDATION_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    new-instance v4, Lcom/badlogic/gdx/utils/Json;

    sget-object v5, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getStoreName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v8}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, "g"

    goto :goto_0

    :cond_0
    const-string v8, "u"

    :goto_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PurchaseManager"

    invoke-static {v8, v7}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    const-string v8, "identifier"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCost()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "purchaseCost"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getStoreName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "storeName"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "orderId"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getRequestId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "requestId"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getUserId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "userId"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseTime()Ljava/util/Date;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x3e8

    if-nez v7, :cond_1

    move-object v7, v8

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    div-long/2addr v11, v9

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    const-string v11, "purchaseTime"

    invoke-virtual {v4, v11, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseText()Ljava/lang/String;

    move-result-object v7

    const-string v11, "purchaseText"

    invoke-virtual {v4, v11, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCostCurrency()Ljava/lang/String;

    move-result-object v7

    const-string v11, "purchaseCostCurrency"

    invoke-virtual {v4, v11, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getReversalTime()Ljava/util/Date;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getReversalTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v9

    long-to-int v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    const-string v7, "reversalTime"

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getReversalText()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reversalText"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionData()Ljava/lang/String;

    move-result-object v7

    const-string v8, "transactionData"

    invoke-virtual {v4, v8, v7}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionDataSignature()Ljava/lang/String;

    move-result-object p1

    const-string v7, "transactionDataSignature"

    invoke-virtual {v4, v7, p1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "transaction"

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "purchaseMultiplier"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "papersPerHour"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AuthManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionid"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p1}, Lcom/badlogic/gdx/net/HttpParametersUtils;->convertHttpParameters(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/Net$HttpRequest;->setContent(Ljava/lang/String;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$6;

    invoke-direct {v0, p0, v6}, Lcom/prineside/tdi2/managers/PurchaseManager$6;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;Ljava/lang/String;)V

    invoke-interface {p1, v3, v0}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method

.method public handlePurchase(Lcom/badlogic/gdx/pay/Transaction;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePurchase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;

    invoke-interface {v3, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;->purchased(Lcom/badlogic/gdx/pay/Transaction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;

    const-string v3, "handlePurchase"

    invoke-interface {v2, v3, p1}, Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;->gotResponse(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->save()V

    return-void
.end method

.method public isPurchasesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->a:Z

    return v0
.end method

.method public final reload()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    const-string v1, "purchaseTransactions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "PurchaseManager"

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v4, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    new-instance v5, Lcom/badlogic/gdx/pay/Transaction;

    invoke-direct {v5}, Lcom/badlogic/gdx/pay/Transaction;-><init>()V

    const-string v6, "identifier"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setIdentifier(Ljava/lang/String;)V

    const-string v6, "storeName"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setStoreName(Ljava/lang/String;)V

    const-string v6, "orderId"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setOrderId(Ljava/lang/String;)V

    const-string v6, "requestId"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setRequestId(Ljava/lang/String;)V

    const-string v6, "userId"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setUserId(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    const-string v7, "purchaseTime"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseTime(Ljava/util/Date;)V

    const-string v6, "purchaseText"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseText(Ljava/lang/String;)V

    const-string v6, "purchaseCost"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseCost(I)V

    const-string v6, "purchaseCostCurrency"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setPurchaseCostCurrency(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    const-string v7, "reversalTime"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/JsonValue;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setReversalTime(Ljava/util/Date;)V

    const-string v6, "reversalText"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setReversalText(Ljava/lang/String;)V

    const-string v6, "transactionData"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionData(Ljava/lang/String;)V

    const-string v6, "transactionDataSignature"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/pay/Transaction;->setTransactionDataSignature(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "failed to load transactions"

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v1, "purchaseValidatedTransactions"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v4, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v5, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "failed to load validated transactions"

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v1, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    const-string v1, "rewardingAdsWatchTimestamps"

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_2
    new-instance v1, Lcom/badlogic/gdx/utils/JsonReader;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/JsonReader;-><init>()V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/JsonReader;->parse(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    add-int/lit8 v4, v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_3
    move v5, v4

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "failed to load rewardingAdsWatchTimestamps"

    invoke-static {v3, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$4;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$4;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Game;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    new-instance v2, Lcom/prineside/tdi2/managers/PurchaseManager$5;

    invoke-direct {v2, p0, v0}, Lcom/prineside/tdi2/managers/PurchaseManager$5;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Game;->addListener(Lcom/prineside/tdi2/Game$GameListener;)V

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reloaded, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transactions, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " validated transactions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeListener(Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->p:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewardingAdsAvailable()Z
    .locals 6

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENABLE_REWARDING_ADS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;->ADS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getDynamicSetting(Lcom/prineside/tdi2/managers/SettingsManager$DynamicSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v0}, Lcom/prineside/tdi2/ActionResolver;->rewardAdsAvailable()Z

    move-result v0

    return v0
.end method

.method public final save()V
    .locals 11

    invoke-static {}, Lcom/prineside/tdi2/Config;->isHeadless()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    sget-object v1, Lcom/prineside/tdi2/Config;->PREFERENCES_NAME_PROGRESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->getInstance(Ljava/lang/String;)Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->transactions:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/pay/Transaction;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    const-string v7, "identifier"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getStoreName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "storeName"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "orderId"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getRequestId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "requestId"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getUserId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "userId"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseTime()Ljava/util/Date;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v9, "purchaseTime"

    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseText()Ljava/lang/String;

    move-result-object v6

    const-string v9, "purchaseText"

    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCost()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "purchaseCost"

    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getPurchaseCostCurrency()Ljava/lang/String;

    move-result-object v6

    const-string v9, "purchaseCostCurrency"

    invoke-virtual {v1, v9, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getReversalTime()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getReversalTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "reversalTime"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getReversalText()Ljava/lang/String;

    move-result-object v6

    const-string v7, "reversalText"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionData()Ljava/lang/String;

    move-result-object v6

    const-string v7, "transactionData"

    invoke-virtual {v1, v7, v6}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/pay/Transaction;->getTransactionDataSignature()Ljava/lang/String;

    move-result-object v5

    const-string v6, "transactionDataSignature"

    invoke-virtual {v1, v6, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "purchaseTransactions"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->b:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "purchaseValidatedTransactions"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/Json;-><init>(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Json;->setWriter(Ljava/io/Writer;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    iget-object v4, p0, Lcom/prineside/tdi2/managers/PurchaseManager;->k:[Lcom/badlogic/gdx/utils/IntArray;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart()V

    const/4 v8, 0x0

    :goto_4
    iget v9, v7, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v8, v9, :cond_5

    iget-object v9, v7, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rewardingAdsWatchTimestamps"

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/PreferencesManager$SafePreferences;->flush()V

    return-void
.end method

.method public setup()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->preferencesManager:Lcom/prineside/tdi2/managers/PreferencesManager;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$7;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$7;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/PreferencesManager;->addListener(Lcom/prineside/tdi2/managers/PreferencesManager$PreferencesManagerListener;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->reload()V

    new-instance v0, Lcom/prineside/tdi2/managers/PurchaseManager$8;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/managers/PurchaseManager$8;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/PurchaseManager;->addListener(Lcom/prineside/tdi2/managers/PurchaseManager$PurchaseManagerListener;)V

    return-void
.end method

.method public showRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->canShowRewardingAd(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    new-instance v1, Lcom/prineside/tdi2/managers/PurchaseManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/prineside/tdi2/managers/PurchaseManager$3;-><init>(Lcom/prineside/tdi2/managers/PurchaseManager;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-interface {v0, v1, p1}, Lcom/prineside/tdi2/ActionResolver;->showRewardAd(Lcom/prineside/tdi2/utils/ObjectRetriever;Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->g(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds till ad is ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->actionResolver:Lcom/prineside/tdi2/ActionResolver;

    invoke-interface {v2}, Lcom/prineside/tdi2/ActionResolver;->canShowRewardAd()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/PurchaseManager;->getSecondsTillAdIsReady(Lcom/prineside/tdi2/managers/PurchaseManager$RewardingAdsType;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PurchaseManager"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/utils/ObjectRetriever;->retrieved(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
