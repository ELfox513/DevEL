.class public final enum Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/pay/FreeTrialPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PeriodUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final enum YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

.field public static final synthetic a:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    new-instance v1, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v3, "MONTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    new-instance v3, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v5, "WEEK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    new-instance v5, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const-string v7, "YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->a:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

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

.method public static parse(C)Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .locals 3

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->YEAR:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Character not mapped to PeriodUnit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->WEEK:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    :cond_2
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->MONTH:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0

    :cond_3
    sget-object p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->DAY:Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->a:[Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/pay/FreeTrialPeriod$PeriodUnit;

    return-object v0
.end method
