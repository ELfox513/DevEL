.class public Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/shapes/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChartEntryConfig"
.end annotation


# instance fields
.field public a:I

.field public color:Lcom/badlogic/gdx/graphics/Color;

.field public segmentShift:F

.field public userObject:Ljava/lang/Object;

.field public value:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iput p2, p0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    iput p3, p0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->segmentShift:F

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a:I

    return p1
.end method
