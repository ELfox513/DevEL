.class public final synthetic Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native synthetic consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public native synthetic getSystemWindowInsetBottom()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic getSystemWindowInsetLeft()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic getSystemWindowInsetRight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic getSystemWindowInsetTop()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public native synthetic hashCode()I
.end method

.method public native synthetic isRound()Z
.end method

.method public native synthetic replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
