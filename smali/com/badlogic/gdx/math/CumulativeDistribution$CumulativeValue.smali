.class public Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/CumulativeDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CumulativeValue"
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/math/CumulativeDistribution;

.field public frequency:F

.field public interval:F

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/CumulativeDistribution;Ljava/lang/Object;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->a:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->value:Ljava/lang/Object;

    iput p3, p0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->frequency:F

    iput p4, p0, Lcom/badlogic/gdx/math/CumulativeDistribution$CumulativeValue;->interval:F

    return-void
.end method
