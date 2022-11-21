.class public final synthetic Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic getBoundingRects()Ljava/util/List;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public native synthetic getSafeInsetBottom()I
.end method

.method public native synthetic getSafeInsetLeft()I
.end method

.method public native synthetic getSafeInsetRight()I
.end method

.method public native synthetic getSafeInsetTop()I
.end method
