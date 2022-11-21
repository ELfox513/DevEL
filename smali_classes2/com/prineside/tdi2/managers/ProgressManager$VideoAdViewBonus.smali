.class public Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoAdViewBonus"
.end annotation


# instance fields
.field public doubleGain:Z

.field public item:Lcom/prineside/tdi2/ItemStack;

.field public views:I


# direct methods
.method public constructor <init>(ILcom/prineside/tdi2/ItemStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;->views:I

    iput-object p2, p0, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;->item:Lcom/prineside/tdi2/ItemStack;

    return-void
.end method

.method public constructor <init>(ILcom/prineside/tdi2/ItemStack;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;-><init>(ILcom/prineside/tdi2/ItemStack;)V

    iput-boolean p3, p0, Lcom/prineside/tdi2/managers/ProgressManager$VideoAdViewBonus;->doubleGain:Z

    return-void
.end method
