.class public final Lcom/badlogic/gdx/pay/Information$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/Double;

.field public f:Ljava/lang/String;

.field public g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/Information$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/pay/Information$Builder;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic e(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->e:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic f(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/badlogic/gdx/pay/Information$Builder;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .locals 0

    iget-object p0, p0, Lcom/badlogic/gdx/pay/Information$Builder;->g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/badlogic/gdx/pay/Information;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/pay/Information;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/pay/Information;-><init>(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/badlogic/gdx/pay/Information$1;)V

    return-object v0
.end method

.method public freeTrialPeriod(Lcom/badlogic/gdx/pay/FreeTrialPeriod;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-object p0
.end method

.method public localDescription(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public localName(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public localPricing(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public priceAsDouble(Ljava/lang/Double;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->e:Ljava/lang/Double;

    return-object p0
.end method

.method public priceCurrencyCode(Ljava/lang/String;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public priceInCents(Ljava/lang/Integer;)Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information$Builder;->d:Ljava/lang/Integer;

    return-object p0
.end method
