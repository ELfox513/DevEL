.class public final Lcom/badlogic/gdx/pay/Information;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/pay/Information$Builder;
    }
.end annotation


# static fields
.field public static final UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:Ljava/lang/Double;

.field public f:Ljava/lang/String;

.field public g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/pay/Information;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/pay/Information;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/pay/Information;->UNAVAILABLE:Lcom/badlogic/gdx/pay/Information;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/pay/Information$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->a(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->b(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->c(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->d(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->d:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->e(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->e:Ljava/lang/Double;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->f(Lcom/badlogic/gdx/pay/Information$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/pay/Information;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/badlogic/gdx/pay/Information$Builder;->g(Lcom/badlogic/gdx/pay/Information$Builder;)Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information;->g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/badlogic/gdx/pay/Information$Builder;Lcom/badlogic/gdx/pay/Information$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/pay/Information;-><init>(Lcom/badlogic/gdx/pay/Information$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/badlogic/gdx/pay/Information$Builder;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/pay/Information$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/pay/Information$Builder;-><init>(Lcom/badlogic/gdx/pay/Information$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const-class v2, Lcom/badlogic/gdx/pay/Information;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/pay/Information;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x0

    :cond_8
    :goto_3
    return v0

    :cond_9
    :goto_4
    return v1
.end method

.method public getFreeTrialPeriod()Lcom/badlogic/gdx/pay/FreeTrialPeriod;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->g:Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    return-object v0
.end method

.method public getLocalDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPricing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAsDouble()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->e:Ljava/lang/Double;

    return-object v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceInCents()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Information{localName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/pay/Information;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", localPricing=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/pay/Information;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
