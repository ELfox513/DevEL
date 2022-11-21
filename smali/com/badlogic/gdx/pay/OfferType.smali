.class public final enum Lcom/badlogic/gdx/pay/OfferType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/pay/OfferType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

.field public static final enum ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

.field public static final enum SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

.field public static final synthetic a:[Lcom/badlogic/gdx/pay/OfferType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/pay/OfferType;

    const-string v1, "CONSUMABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/OfferType;->CONSUMABLE:Lcom/badlogic/gdx/pay/OfferType;

    new-instance v1, Lcom/badlogic/gdx/pay/OfferType;

    const-string v3, "ENTITLEMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/pay/OfferType;->ENTITLEMENT:Lcom/badlogic/gdx/pay/OfferType;

    new-instance v3, Lcom/badlogic/gdx/pay/OfferType;

    const-string v5, "SUBSCRIPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/pay/OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/pay/OfferType;->SUBSCRIPTION:Lcom/badlogic/gdx/pay/OfferType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/badlogic/gdx/pay/OfferType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/badlogic/gdx/pay/OfferType;->a:[Lcom/badlogic/gdx/pay/OfferType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/pay/OfferType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/pay/OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/pay/OfferType;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/pay/OfferType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/pay/OfferType;->a:[Lcom/badlogic/gdx/pay/OfferType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/pay/OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/pay/OfferType;

    return-object v0
.end method
