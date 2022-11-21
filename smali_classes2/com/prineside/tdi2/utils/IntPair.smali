.class public Lcom/prineside/tdi2/utils/IntPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/utils/IntPair;->a:I

    iput p2, p0, Lcom/prineside/tdi2/utils/IntPair;->b:I

    return-void
.end method
