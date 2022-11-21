.class Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;->n(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling$4;->a:Lcom/badlogic/gdx/pay/android/googlebilling/PurchaseManagerGoogleBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/billingclient/api/c;->a()I

    return-void
.end method
