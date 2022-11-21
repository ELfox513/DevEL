.class abstract Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConditionalCompensation"
.end annotation


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/managers/ProgressManager$ConditionalCompensation;->id:I

    return-void
.end method


# virtual methods
.method public abstract handle()Z
.end method
