.class public final Lcom/badlogic/gdx/pay/FreeTrialPeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;


# direct methods
.method public constructor <init>(ILcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->a:I

    iput-object p2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;

    iget v2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->a:I

    iget v3, p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->a:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    iget-object p1, p1, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getNumberOfUnits()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->a:I

    return v0
.end method

.method public getUnit()Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod;->b:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
