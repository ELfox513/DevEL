.class public synthetic Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method


# virtual methods
.method public native synthetic addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
.end method

.method public native synthetic addTarget(Landroid/view/View;)Landroid/transition/Transition;
.end method

.method public native synthetic clone()Landroid/transition/Transition;
.end method

.method public native synthetic getTargetIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public native synthetic getTargets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public native synthetic removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
.end method

.method public native synthetic removeTarget(Landroid/view/View;)Landroid/transition/Transition;
.end method
