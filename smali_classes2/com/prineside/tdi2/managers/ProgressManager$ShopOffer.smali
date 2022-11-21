.class public Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShopOffer"
.end annotation


# instance fields
.field public item:Lcom/prineside/tdi2/ItemStack;

.field public price:Lcom/prineside/tdi2/ItemStack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;->price:Lcom/prineside/tdi2/ItemStack;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/ProgressManager$ShopOffer;->item:Lcom/prineside/tdi2/ItemStack;

    return-void
.end method
